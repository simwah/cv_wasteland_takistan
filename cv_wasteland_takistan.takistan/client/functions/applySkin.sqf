//	@file Version: 1.0
//	@file Name: playerSetup.sqf
//	@file Author: -cv-Hal 
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = _this select 0;

// BROKEN SKINS
// BAF_Soldier_EN_W

playerSkins = [
["Panzerlamb", "104475014", "", "US_Delta_Force_Medic_EP1", ""],
["{FB} DauntingDanage", "78841542", "", "BAF_Soldier_Sniper_MTP", ""],
["{FB} Midstrength", "20717638", "", "GER_Soldier_Scout_EP1", ""],
["shan", "94119046", "GUE_Soldier_Sab", "", ""],
["HumanitysLastLight", "52243526", "GUE_Soldier_AA", "", ""],
["BOZ", "8440582", "GUE_Soldier_Medic", "", ""],
["DI Diabolical", "9957766", "Soldier_M4A3_PMC", "", ""],
["Jpnopants", "35101574", "GUE_Soldier_Sniper", "", ""],
["Damit", "8450118", "Soldier_Engineer_PMC", "", ""],
["CheeseBall", "39677702", "TK_GUE_Soldier_3_EP1", "", ""],
["Sparky", "24916422", "GUE_Soldier_Sniper", "", ""],
["Flying Fox", "313153AX", "GUE_Soldier_Sab", "", ""],
["Hal", "25315782", "Reynolds_PMC", "", ""],
["Pokol", "23090246", "GUE_Commander", "", ""],
["JuanTuerca", "907841", "Soldier_Bodyguard_M4_PMC", "", ""],
["Davish", "57444422", "GUE_Soldier_Medic", "", ""],
["Reddog", "2636294", "GUE_Soldier_Medic", "", ""],
["TRIGGA", "5582016", "GUE_Soldier_Pilot", "", ""],
["Joopapa", "8430150", "Dixon_PMC", "", ""],
["kimjungillex", "9204102", "GUE_Commander", "", ""],
["Webbo", "24938822", "Soldier_PMC", "", ""],
["Jeekums", "60395718", "", "", "RU_Soldier_Spotter"],
["Dadinator�", "7655750", "GUE_Soldier_Medic", "", ""],
["Click85", "90884614", "GUE_Soldier_Medic", "FR_Corpsman", "INS_Soldier_Medic"],
["iRandomist", "31022534", "GUE_Soldier_Sab", "FR_GL", "MVD_Soldier"],
["simwah", "3467584", "GUE_Soldier_Sniper", "US_Soldier_Spotter_EP1", "TK_Soldier_SniperH_EP1"],
["drummerguy103", "45863494", "GUE_Soldier_Medic", "", ""],
["Yawdem", "25320262", "GUE_Woodlander2", "", ""],
["PabloElKillo", "15255494", "GUE_Soldier_Sniper", "", ""],
["Venerable", "13989382", "GUE_Soldier_Sniper", "FR_GL", "RUS_Soldier1"],
["[BLS] Unit-02.nz", "5065670", "Soldier_Engineer_PMC", "", ""],
["^cv^stig-22", "88556230", "GUE_Soldier_Pilot", "FR_TL", "RU_Commander"],
["ColBangBang", "15257094", "GUE_Soldier_Sniper", "", ""],
["rhys jones", "6248704", "GUE_Soldier_1", "", ""],
["gibly", "87825094", "GUE_Soldier_1", "", ""],
["Rocksalt", "29021830", "GUE_Soldier_Sniper", "US_Soldier_Spotter_EP1", "TK_Soldier_SniperH_EP1"],
["FurryWhitePoo", "87391622", "GUE_Soldier_GL", "FR_R", "RUS_Soldier3"],
["ColdCamV", "12743622", "GUE_Commander", "FR_Marksman", "INS_Soldier_GL"],
["Brownie", "58048070", "GUE_Soldier_Sab", "", ""],
["Old Man Peters", "41610630", "GUE_Soldier_Scout", "", ""],
["Mik3y", "64534214", "GUE_Soldier_Sniper", "USMC_SoldierS_Sniper", "RU_Soldier_Sniper"],
["Kila01", "56660230", "GUE_Soldier_sab", "", ""],
["EvilCbass117", "32516294", "GUE_Soldier_Scout", "", ""],
["TheCads", "48480006", "Soldier_Engineer_PMC", "", ""],
["Bigdog", "73058886", "Soldier_Sniper_KSVK_PMC", "", ""],
["Dorian", "79491014", "GUE_Soldier_sab", "", ""],
["Dunkinator", "79609670", "GUE_Soldier_sab", "", ""],
["BellaRose", "99372870", "GUE_Soldier_Medic", "", ""],
["MuadDib", "1897350", "GUE_Soldier_Scout", "", ""],
["Appsy", "25330374", "GUE_Woodlander3", "", ""],
["Goatlol", "7232134", "GUE_Soldier_Medic", "", ""],
["LoneWolf", "92431814", "GUE_Soldier_Sniper", "", ""],
["Whfbee", "16943302", "GUE_Soldier_sab", "", ""],
["Saber", "92179782", "GUE_Soldier_Sniper", "", ""],
["Xenonau", "64485126", "GUE_Commander", "", ""],
["Passout", "42508230", "Soldier_Engineer_PMC", "", ""],
["Chaos", "19538694", "GUE_Soldier_Sab", "", ""],
["AGeNT", "23477190", "GUE_Soldier_Medic", "FR_Sapper", "TK_Soldier_Pilot_EP1"],
["Frag", "29164550", "GUE_Soldier_2", "", ""],
["Proposition Joe", "67923846", "GUE_Soldier_Medic", "", ""]
];

_uid = getPlayerUID _player;

enableSentences false;

_skin = "";

// Default Skin - BLUE
if(str(playerSide) in ["WEST"]) then
{
    _skin="UN_CDF_Soldier_Light_EP1";
};

// Default Skin - RED
if(str(playerSide) in ["EAST"]) then
{
    _skin="RUS_Commander";
};

if(str(playerSide) in ["GUER"]) then
{
    _skin="Poet_PMC";
};

for "_x" from 0 to (count playerSkins) do {
	_arr = playerSkins select _x;
	_pid = _arr select 1;
	if(_pid==_uid) exitWith {
            
            _skinWEST = _arr select 3;
            _skinEAST = _arr select 4;
            _skinGUER = _arr select 2;
                       
            // Check For Blue Skin
            if(str(playerSide) in ["WEST"]) then
            {
                if(!(_skinWEST=="")) then
                {
                    _skin=_skinWEST;
                };
            };
            // Check For Red Skin
            if(str(playerSide) in ["EAST"]) then
            {
                if(!(_skinEAST=="")) then
                {
                    _skin=_skinEAST;
                };
            };
            // Check For Green Skin
            if(str(playerSide) in ["GUER"]) then
            {
                if(!(_skinGUER=="")) then
                {
                    _skin=_skinGUER;
                };
            };
 	};
};

// Check if playerSkin == _skin if so skip the rest.

/// ***** CBA_fnc_switchPlayer *****
private ["_type", "_ar", "_oldUnit", "_newUnit", "_dummyUnit", "_dummyGroup"];

_oldUnit = player;
_type = _skin;

_ar = [weapons _oldUnit, magazines _oldUnit, rank _oldUnit, score _oldUnit, group _oldUnit, getPos _oldUnit, (leader _oldUnit) == _oldUnit, vehicleVarName _oldUnit];

_dummyGroup = createGroup (side _oldUnit);
if (isNull _dummyGroup) exitWith { hint "Sorry, something went wrong, dummyGroup is null" };
_dummyUnit = (_ar select 4) createUnit [_type, [0, 0, 0], [], 0, "NONE"]; // Join in the old group incase there was only 1 member
if (isNull _dummyUnit) exitWith { hint "Sorry, something went wrong, dummyUnit is null" };
[_oldUnit] join _dummyGroup;

hint format["1.Dummy created, State saved and put oldUnit in new group: %1", _dummyGroup];

_newUnit = _dummyGroup createUnit [_type, _ar select 5, [], 0, "NONE"];

if (isNull _newUnit) exitWith { hint "Sorry, something went wrong, newUnit is null" };

hint format["2.New unit created, local: %1", local _newUnit];
sleep 1;

setPlayable _newUnit;
addSwitchableUnit _newUnit;
selectPlayer _newUnit;

_newUnit setRank (_ar select 2);
_newUnit addScore (_ar select 3);

hint format["3.State transfered, switched player control to new unit, local: %1", local _newUnit];
sleep 1;
if (_ar select 7 != "") then {
	_newUnit setVehicleInit format["this setVehicleVarName '%1'; %1 = this", _ar select 7];
	processInitCommands;
};

[_newUnit] join (_ar select 4);
removeSwitchableUnit _newUnit;

hint "5.New Unit joined in original group";
sleep 1;

{ deleteVehicle _x } forEach [_oldUnit, _dummyUnit]; // Might have to remote execute this to be successfull in MP

hint "6.Deleted and moved away dummy units etc";
sleep 1;

if (_ar select 6) then { (group _newUnit) selectLeader _newUnit };

/// *****

// _h=[_skin] spawn CBA_fnc_switchPlayer;
// _h=[_skin,"LEAVEWEPS"] spawn CBA_fnc_switchPlayer;

removeAllWeapons _player;
removeAllitems _player;
removeBackpack player;

_player addMagazine "15Rnd_9x19_M9";
_player addMagazine "15Rnd_9x19_M9";
_player addWeapon "M9";

_player addweapon "ItemMap";
_player addweapon "ItemCompass";
_player addweapon "ItemWatch";

_secondaryWeapon = secondaryWeapon _player;
_player selectweapon _secondaryWeapon;

// _player
