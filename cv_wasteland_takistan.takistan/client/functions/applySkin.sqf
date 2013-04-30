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
["DIRTY TURTLE", "26459782", "", "", ""],
["{FB} DauntingDanage", "78841542", "", "BAF_Soldier_Sniper_MTP", ""],
["{FB} Midstrength", "20717638", "", "GER_Soldier_Scout_EP1", ""],
["Jeekums", "60395718", "GUE_Soldier_AA", "", ""],
["HumanitysLastLight", "52243526", "GUE_Soldier_AA", "", ""],
["Unskinny", "39773894", "GUE_Soldier_AA", "", ""],
["TOG | Deadzy", "19610374", "GUE_Soldier_Sab", "", ""],
["Vejayjay", "81701510", "GUE_Soldier_AA", "", ""],
["BOZ", "8440582", "GUE_Soldier_Medic", "", ""],
["Minsty", "93091782", "GUE_Soldier_Scout", "", ""],
["TOG | Zeddy", "2897670", "GUE_Soldier_AR", "", ""],
["DI Diabolical", "9957766", "Soldier_M4A3_PMC", "", ""],
["AEF Jarate", "52243526", "Soldier_Engineer_PMC", "", ""],
["JIMMYonPS3in240P", "16384646", "GUE_Soldier_1", "", ""],
["Jpnopants", "35101574", "GUE_Soldier_Sniper", "", ""],
["Patrollin", "39773894", "GUE_Soldier_Sniper", "", ""],
["Damit", "8450118", "Soldier_Engineer_PMC", "", ""],
["TOG | red_one", "4886848", "GUE_Soldier_Sniper", "", ""],
["TOG | Speedy", "16332998", "GUE_Commander", "", ""],
["CordlezToaster", "9363782", "Soldier_Engineer_PMC", "", ""],
["Jax", "17834246", "GUE_Commander", "", ""],
["DI Jthn", "7932934", "Soldier_Engineer_PMC", "", ""],
["TOG | Biggus", "6000390", "GUE_Soldier_Sniper", "", ""],
["TOG | Veilo", "17188870", "GUE_Commander", "", ""],
["ZeroSix", "12080902", "Soldier_Medic_PMC", "", ""],
["Ron Paul", "35048262", "Soldier_Engineer_PMC", "", ""],
["Joaby", "93652486", "Soldier_TL_PMC", "", ""],
["Heathy", "11259398", "Tanny_PMC", "", ""],
["Phyaran", "9126982", "Soldier_Sniper_PMC", "", ""],
["Hardy", "", "Soldier_MG_PMC", "", ""],
["Inst", "", "Soldier_GL_M16A2_PMC", "", ""],
["HotdogWithSauce", "33740230", "GUE_Soldier_Scout", "", ""],
["McDooBy", "61187142", "Reynolds_PMC", "", ""],
["Set a Tent", "3748610", "GUE_Soldier_Sab", "", ""],
["crawfs", "", "GUE_Soldier_Sniper", "", ""],
["coolridge", "62939654", "Soldier_Engineer_PMC", "", ""],
["chefbrah", "6458246", "GUE_Soldier_Sniper", "", ""],
["Fil", "99035078", "GUE_Soldier_Sniper", "", ""],
["CheeseBall", "39677702", "GUE_Soldier_AA", "", ""],
["Sparky", "24916422", "GUE_Soldier_Sniper", "", ""],
["Flying Fox", "313153AX", "GUE_Soldier_Sab", "", ""],
["Hal", "25315782", "Reynolds_PMC", "", ""],
["Pokol", "23090246", "GUE_Commander", "", ""],
["JuanTuerca", "907841", "Soldier_Bodyguard_M4_PMC", "", ""],
["Davish", "57444422", "GUE_Soldier_Medic", "", ""],
["Reddog", "2636294", "GUE_Soldier_Medic", "", ""],
["TRIGGA", "5582016", "GUE_Soldier_Pilot", "", ""],
["ManBearPig", "23026374", "GUE_Soldier_Sniper", "", ""],
["hottdogg1967", "93822086", "", "", ""],
["CypherCode86", "17788550", "GUE_Soldier_2", "", ""],
["Joopapa", "8430150", "Dixon_PMC", "", ""],
["Mono_man", "12345542", "GUE_Soldier_1", "", ""],
["kimjungillex", "9204102", "GUE_Commander", "", ""],
["DI Splints", "3378182", "Soldier_Engineer_PMC", "", ""],
["Batesy", "101951430", "GUE_Soldier_Sniper", "", ""],
["Webbo", "24938822", "Soldier_PMC", "", ""],
["Jeekums", "60395718", "", "", "RU_Soldier_Spotter"],
["Patrollin", "41767430", "", "", "RU_Soldier_Sniper"],
["Biggie", "", "", "", "MVD_Soldier"],
["Joseph Kony", "6733318", "", "", "TK_Soldier_SniperH_EP1"],
["chefbrah", "6458246", "", "", "GUE_Soldier_Sniper"],
["AilfawkaD", "90007622", "", "", "RU_Soldier_SniperH"],
["Pantzz", "38374534", "", "", "RU_Soldier_SniperH"],
["Dr0pBear", "65606470", "", "", "RU_Soldier_Sniper"],
["Ernie Dingo", "32516294", "", "", "RU_Soldier_Sniper"],
["Eviscrerator", "92990534", "", "", "RUS_Soldier_Sab"],
["Snake", "6016640", "", "", "RU_Soldier_Sniper"],
["SyKa", "", "", "", "RU_Soldier_Sniper"],
["=]di[= lentz", "6522310", "Soldier_Engineer_PMC", "", ""],
["TOG | Antor", "17495686", "GUE_Soldier_Sab", "", ""],
["Dadinator�", "7655750", "GUE_Soldier_Medic", "", ""],
["Lawful Murder", "45216390", "Soldier_M4A3_PMC", "", ""],
["XxPUMB4xX", "2906176", "", "", ""],
["Click85", "90884614", "Soldier_PMC", "", ""],
["TOG | Jacomus", "20209734", "GUE_Soldier_GL", "", ""],
["TOG | Fifty", "23931270", "GUE_Soldier_GL", "", ""],
["TOG | Yvnu", "18409030", "", "", ""],
["iRandomist", "31022534", "GUE_Soldier_Sab", "", ""],
["simwah", "3467584", "", "GER_Soldier_Scout_EP1", ""],
["drummerguy103", "45863494", "GUE_Soldier_Scout", "", ""],
["Yawdem", "25320262", "GUE_Soldier_3", "", ""],
["EvilCbass117", "32516294", "GUE_Soldier_Scout", "", ""],
["PabloElKillo", "15255494", "GUE_Soldier_Sniper", "", ""],
["Venerable", "13989382", "GUE_Soldier_Sniper", "FR_GL", "RUS_Soldier1"],
["[BLS] Unit-02.nz", "5065670", "Soldier_Engineer_PMC", "", ""],
["^cv^stig-22", "88556230", "", "", ""],
["ColBangBang", "15257094", "GUE_Soldier_Sniper", "", ""],
["rhys jones", "6248704", "GUE_Soldier_1", "", ""],
["gibly", "87825094", "GUE_Soldier_1", "", ""],
["Rocksalt", "29021830", "", "US_Soldier_Spotter_EP1", "TK_Soldier_SniperH_EP1"],
["FurryWhitePoo", "87391622", "", "GER_Soldier_Medic_EP1", ""],
["TOG | Shimmyz", "25869894", "GUE_Soldier_CO", "", ""],
["TOG | Redshirt_Ensign", "670993335", "GUE_Woodlander3", "", ""],
["ColdCamV", "12743622", "GUE_Commander", "FR_Marksman", "INS_Soldier_GL"],
["Biggus", "6000390", "", "US_Soldier_Sniper_EP1", ""],
["Brownie", "58048070", "GUE_Soldier_Sab", "", ""],
["Old Man Peters", "41610630", "GUE_Soldier_Scout", "", ""],
["Mik3y", "64534214", "GUE_Soldier_Sniper", "USMC_SoldierS_Sniper", "RU_Soldier_Sniper"],
["Xeonau", "64485126", "", "US_Soldier_Sniper_NV_EP1", ""],
["Kila01", "56660230", "GUE_Soldier_sab", "", ""],
["EvilCbass117", "32516294", "GUE_Soldier_Scout", "", ""],
["TheCads", "48480006", "GUE_Soldier_sab", "", ""],
["Bigdog", "73058886", "Soldier_Sniper_KSVK_PMC", "", ""],
["Dorian", "79491014", "GUE_Soldier_sab", "", ""],
["Dunkinator", "79609670", "GUE_Soldier_sab", "", ""],
["BellaRose", "99372870", "GUE_Soldier_Medic", "", ""],
["MuadDib", "1897350", "GUE_Soldier_Scout", "", ""],
["AGeNT", "23477190", "TK_Soldier_Pilot_EP1", "", "TK_Soldier_Pilot_EP1"]
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
