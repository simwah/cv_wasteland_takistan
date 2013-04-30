//	@file Version: 1.0
//	@file Name: mission_APC.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args:

if(!isServer) exitwith {};
#include "sideMissionDefines.sqf";
private ["_result","_missionMarkerName_start","_leader","_driver2","_deftruck1","_truckcount","_cargoItem_3","_truckpos","_missionMarkerName_here","_missiontype_here","_driver","_deftruck","_missionMarkerName_end","_missionType","_cargoItem_2","_truck","_startTime","_returnData","_randomPos_start","_randomPos_end","_randomIndex_start","_randomIndex_end","_vehicleClass","_cargoItem_1","_picture","_vehicleName","_hint","_currTime","_playerPresent","_unitsAlive"];

//Mission Initialization.
_result = 0;
_missionMarkerName_start = "Started Convoy";
_missiontype ="Convoy mission";
_missionMarkerName_end = "End Convoy";
_missionType_start = "Start Convoy";
_missionType_end = "End Convoy";
_missionMarkerName_here = "Convoy Here";
_missionType_here = "Convoy here";
#ifdef __A2NET__
_startTime = floor(netTime);
#else
_startTime = floor(time);
#endif

diag_log format["WASTELAND SERVER - side Mission Started: %1",_missionType];

//Get Mission Location
_returnData = call createMissionLocation;
_randomPos_start = _returnData select 0;
_randomIndex_start = _returnData select 1;

_returnData = call createMissionLocation2;
_randomPos_end = _returnData select 0;
_randomIndex_end = _returnData select 1;

diag_log format["WASTELAND SERVER - side Mission Waiting to run: %1",_missionType];
[sideMissionDelayTime] call createWaitCondition;
diag_log format["WASTELAND SERVER - side Mission Resumed: %1",_missionType];

[_missionMarkerName_start,_randomPos_start,_missionType_start] call createClientMarker;
[_missionMarkerName_end,_randomPos_end,_missionType_end] call createClientMarker;

_cargoItem_1 = ["BRDM2_HQ_TK_GUE_EP1","HMMWV_M998_crows_M2_DES_EP1","BTR40_MG_TK_GUE_EP1","HMMWV_Avenger_DES_EP1"] call BIS_fnc_selectRandom;
_cargoItem_2 = "UAZ_AGS30_RU";
_cargoItem_3 = "hilux1_civil_3_open";
//Vehicle Class, Posistion, Fuel, Ammo, Damage, State

_truck = [_cargoItem_1,_randomPos_start,1,1,0,"NONE"] call createMissionVehicle;
_truck setVehicleLock "UNLOCKED";
_deftruck = [_cargoItem_2,_randomPos_start,1,1,0,"NONE"] call createMissionVehicle;
_deftruck setVehicleLock "UNLOCKED";
_deftruck1 = [_cargoItem_3,_randomPos_start,1,1,0,"NONE"] call createMissionVehicle;
_deftruck1 setVehicleLock "UNLOCKED";

_picture = getText (configFile >> "cfgVehicles" >> typeOf _truck >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _truck >> "displayName");
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>side Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A convoy with a<t color='%4'> %3</t>, has been seen! Go get the truck!</t>", _missionType, _picture, _vehicleName, sideMissionColor, subTextColor];
[nil,nil,rHINT,_hint] call RE;

CivgrpS = createGroup civilian;
_leader = [CivgrpS,_RandomPos_start] call createMidGroup1;


CivgrpS addVehicle _truck;
CivgrpS addVehicle _deftruck; 
CivgrpS addVehicle _deftruck1; 
CivgrpS setBehaviour "AWARE";



_truckpos = getpos _truck;

group _leader move _randomPos_end;
//group _driver2 move _randomPos_end;
//group _driver1 move _randomPos_end;
_behaviour ="AWARE";

[_truck,_randomPos_end,50,_missionType_here,_missionMarkerName_here,_behaviour,_leader,CivgrpS,_deftruck,_deftruck1] call while1;






diag_log format["WASTELAND SERVER - side Mission Waiting to be Finished: %1",_missionType];
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
    if(_currTime - _startTime >= sideMissionTimeout) then {_result = 1;};
	if(_truck distance _randomPos <= missionRadiusTrigger) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _truck <= missionRadiusTrigger)) then {_playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivgrpS);
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _truck) == 1)
};

_truck setVehicleLock "UNLOCKED";
_truck setVariable ["R3F_LOG_disabled", false, true];

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _truck;
	deleteVehicle _deftruck;
	deleteVehicle _deftruck1;
    {deleteVehicle _x;}forEach units CivgrpS;
    deleteGroup CivgrpS;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, better luck next time</t>", _missionType, _picture, _vehicleName, failMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
	//Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - side Mission Failed: %1",_missionType];
} else {

if  ((damage _truck) == 1) then {
//Mission Failed.
    deleteVehicle _truck;
	deleteVehicle _deftruck;
	deleteVehicle _deftruck1;
    {deleteVehicle _x;}forEach units CivgrpS;
    deleteGroup CivgrpS;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>Objective failed, someone blow up the objectif!</t>", _missionType, _picture, _vehicleName, failMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
	//Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - side Mission Failed: %1",_missionType];
 } else {
	//Mission Complete.
    deleteGroup CivgrpS;
	deleteVehicle _deftruck;
	deleteVehicle _deftruck1;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Complete</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The <t color='%4'> %3</t>, has been captured, now go destroy the enemy</t>", _missionType, _picture, _vehicleName, successMissionColor, subTextColor];
	[nil,nil,rHINT,_hint] call RE;
	//Reset the mission spawn bool
    diag_log format["WASTELAND SERVER - side Mission Success: %1",_missionType];
};
};
//Reset Mission Spot.
missionSpawnMarkers select _randomIndex_start set[1, false];
citySpawnMarkers select _randomIndex_end set[1, false];
[_missionMarkerName_start] call deleteClientMarker;
[_missionMarkerName_end] call deleteClientMarker;
[_missionMarkerName_here] call deleteClientMarker;