//	@file Version: 1.0
//	@file Name: mission_APC.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args:

if(!isServer) exitwith {};
#include "mainMissionDefines.sqf";
private ["_result","_missionMarkerName","_missionType","_truck","_startTime","_returnData","_randomPos","_randomIndex","_vehicleClass","_cargoItem_1","_picture","_vehicleName","_hint","_currTime","_playerPresent","_unitsAlive"];

//Mission Initialization.
_result = 0;
_missionMarkerName = "APC_Marker";
_missionType = "Immobile APC";
#ifdef __A2NET__
_startTime = floor(netTime);
#else
_startTime = floor(time);
#endif

diag_log format["WASTELAND SERVER - Main Mission Started: %1",_missionType];

//Get Mission Location
_returnData = call createMissionLocation;
_randomPos = _returnData select 0;
_randomIndex = _returnData select 1;

diag_log format["WASTELAND SERVER - Main Mission Waiting to run: %1",_missionType];
[mainMissionDelayTime] call createWaitCondition;
diag_log format["WASTELAND SERVER - Main Mission Resumed: %1",_missionType];

[_missionMarkerName,_randomPos,_missionType] call createClientMarker;

_cargoItem_1 = ["BTR90","M1126_ICV_MK19_EP1","M2A3_EP1","M6_EP1","BTR90","M2A2_EP1","M6_EP1","M1126_ICV_M2_EP1","M1129_MC_EP1"] call BIS_fnc_selectRandom;

//Vehicle Class, Posistion, Fuel, Ammo, Damage, State
//_vehicle = [_vehicleClass,_randomPos,0,1,0.75,"NONE"] call createMissionVehicle;

CivGrpM = createGroup civilian;

_truck = [_cargoItem_1] call supplydrop2;


_picture = getText (configFile >> "cfgVehicles" >> typeOf _truck >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _truck >> "displayName");
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Main Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A<t color='%4'> %3</t>, has been airdropped, go get it for your team!</t>", _missionType, _picture, _vehicleName, mainMissionColor, subTextColor];
[nil,nil,rHINT,_hint] call RE;




diag_log format["WASTELAND SERVER - Main Mission Waiting to be Finished: %1",_missionType];
#ifdef __A2NET__
_startTime = floor(netTime);
#else
_startTime = floor(time);
#endif
waitUntil
{
    sleep 1; 
	_playerPresent = false;
	#ifdef __A2NET__
    _currTime = floor(netTime);
	#else
	_currTime = floor(time);
	#endif
    if(_currTime - _startTime >= mainMissionTimeout) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _truck <= missionRadiusTrigger)) then {_playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivGrpM);
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _truck) == 1)
};

_truck setVehicleLock "UNLOCKED";
_truck setVariable ["R3F_LOG_disabled", false, true];

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _truck;
    {deleteVehicle _x;}forEach units CivGrpM;
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, better luck next time</t>", _missionType, _picture, _vehicleName, failMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
	//Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - Main Mission Failed: %1",_missionType];
} else {

if  ((damage _truck) == 1) then {
//Mission Failed.
    deleteVehicle _truck;
    {deleteVehicle _x;}forEach units CivGrpM;
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, someone blow up the objectif!</t>", _missionType, _picture, _vehicleName, failMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
	//Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - Main Mission Failed: %1",_missionType];
 } else {
	//Mission Complete.
    deleteGroup CivGrpM;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Complete</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The <t color='%4'> %3</t>, has been captured, now go destroy the enemy</t>", _missionType, _picture, _vehicleName, successMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
	//Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - Main Mission Success: %1",_missionType];
};
};
//Reset Mission Spot.
MissionSpawnMarkers select _randomIndex set[1, false];
[_missionMarkerName] call deleteClientMarker;