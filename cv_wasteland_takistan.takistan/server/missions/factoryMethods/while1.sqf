// While script.
// Created by Worldtrade1101 - Helo and assistance 
// For Use - Anyone, just leave these lines in here please. Thanks



#include "mainMissionDefines.sqf";

if(!isServer) exitwith {};

private ["_randomPos","_deftruck1","_deftruck","_truckpos1","_check1","_check2","_deftruckpos","_distance1","_deftruck1pos","_driver","_group","_truckpos","_behaviour","_distance","_unitsAlive","_missionMarkerName_here","_truckcount","_truckpos","_missionType_here"];

_truck = _this select 0; //_truck is the vehicle we are looking
_randomPos = _this select 1; //destination final
_distance = _this select 2; //distance from the objectif

_missionType_here = _this select 3; // name of the vehicle / convoy
_missionMarkerName_here = _this select 4; // name of the marker vehicle / convoy
_behaviour = _this select 5;
_driver = _this select 6;
_group = _this select 7;
if (_distance != 2100) then {
_deftruck = _this select 8;
_deftruck1 = _this select 9;
};
_truckcount = 0;
_check1 = 0;
_check2 = 0;
while {_truck distance _randomPos >= _distance} do {

[_missionMarkerName_here] call deleteClientMarker;

_truckpos = getpos _truck;

_truckdist= _truck distance _randomPos;

[_missionMarkerName_here,_truckpos,_missionType_here] call createClientMarker;
//check if the truck is immobile for more than 25sec

//check if the truck is not getting closer to the obj.



_unitsAlive = ({alive _x} count units _group);
if(_unitsAlive > 5) then {


} else {
if(_unitsAlive > 3) then {
if (_check1==0) then {
_group leaveVehicle _deftruck;
_deftruck setfuel 0;
_deftruck setdamage .9;
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>side Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A convoy with a<t color='%4'> %3</t> At least 3 more ennemies.</t>", _missionType, _picture, _vehicleName, sideMissionColor, subTextColor];
[nil,nil,rHINT,_hint] call RE;
_check1=1;
};

};
if(_unitsAlive <= 3) then {
if (_check2==0) then {
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>side Objective</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>%1</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A convoy with a<t color='%4'> %3</t> Less than 3 ennemies.</t>", _missionType, _picture, _vehicleName, sideMissionColor, subTextColor];
[nil,nil,rHINT,_hint] call RE;
_group leaveVehicle _deftruck1;
_deftruck1 setfuel 0;
_deftruck1 setdamage .9;
_check2=1;
};

};
};




//code to end the while
if (_distance != 2100) then {

_unitsAlive = ({alive _x} count units _group);
if(_unitsAlive < 1) then {
_randomPos = _truckpos;
};
};
if (damage _truck == 1) then {
_randomPos = _truckpos;
};

sleep 1;

_truckdist1 = _truck distance _randomPos;
};
[_missionMarkerName_here] call deleteClientMarker;