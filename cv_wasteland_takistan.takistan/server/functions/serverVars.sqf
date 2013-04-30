//	@file Version: 1.0
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:
// --------------------------------------------------------------------------------------------------- \\
// ----------  !DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU KNOW WHAT YOU ARE DOING!	---------- \\
// ----------																				---------- \\
// ----------			404Games are not responsible for anything that may happen 			---------- \\
// ----------			 as a result of unauthorised modifications to this file.			---------- \\
// --------------------------------------------------------------------------------------------------- \\

if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

CVG_weapons = [];
CVG_weapons = CVG_rifles;
CVG_weapons = CVG_weapons + CVG_Scoped;
CVG_weapons = CVG_weapons + CVG_Heavy;
CVG_weapons = CVG_weapons + CVG_pistols;
CVG_weapons = CVG_weapons + CVG_Launchers;

sideMissionPos = "";
mainMissionPos = "";

currentVehicles = [];
publicVariable "currentVehicles";
pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = [];
publicVariable "pvar_beaconListRed";
pvar_beaconListInd = [];
publicVariable "pvar_beaconListInd";
clientMissionMarkers = [];
publicVariable "clientMissionMarkers";
clientRadarMarkers = [];
publicVariable "clientRadarMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";
                  
if (isServer) then {
	"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};
};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles = ["ATV_US_EP1",
					"V3S_Civ",
					"MTVR_DES_EP1",
					"UAZ_Unarmed_TK_CIV_EP1",
					"ATV_US_EP1",
					"V3S_Open_TK_EP1",
					"LandRover_CZ_EP1"];

//Military Vehicle List - Random Spawns
militaryVehicles = ["UAZ_Unarmed_TK_EP1",
					"SUV_TK_CIV_EP1",
					"LandRover_CZ_EP1",
					"LandRover_TK_CIV_EP1",
					"HMMWV_M1035_DES_EP1",
					"HMMWV_Ambulance_DES_EP1",
					"ATV_US_EP1",
					"HMMWV_DES_EP1",
					"V3S_TK_GUE_EP1"];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = [	"ArmoredSUV_PMC",
							"ArmoredSUV_PMC",
							"Pickup_PK_TK_GUE_EP1",
							"UAZ_MG_TK_EP1",
							"LandRover_MG_TK_INS_EP1",
							"LandRover_SPG9_TK_EP1",
							"HMMWV_M1151_M2_DES_EP1",
							"HMMWV_TOW_DES_EP1",
							"HMMWV_MK19_DES_EP1",
							"HMMWV_TOW_DES_EP1",
							"Offroad_DSHKM_TK_GUE_EP1",
							"HMMWV_M998A2_SOV_DES_EP1",
							"LandRover_Special_CZ_EP1",
							"BAF_Jackal2_GMG_D",
							"BAF_Jackal2_GMG_D",
							"GAZ_Vodnik"];

//Item Config
pickupList = ["Satelit",
				"EvMoney",
				"Suitcase",
				"Fuel_can"];

//Object List - Random Spawns.
objectList = [
    "Land_Barrel_water",
    "Land_prebehlavka",
    "Land_leseni2x",
    "Fort_Crate_wood",
    "Suitcase",
    "Fuel_can",
    "CZ_VestPouch_EP1",
    "Land_Misc_Cargo1E_EP1",
    "Land_Misc_Cargo1E_EP1",
	"Land_Misc_Cargo1E_EP1",
	"Land_Barrel_water",
    "Land_stand_small_EP1",
    "Land_stand_small_EP1",
    "Base_WarfareBBarrier10xTall",
    "Base_WarfareBBarrier10xTall",
    "Base_WarfareBBarrier10xTall",
    "Base_WarfareBBarrier10x",
    "Base_WarfareBBarrier10x",
    "Base_WarfareBBarrier10x",
    "Base_WarfareBBarrier5x",
    "Base_WarfareBBarrier5x",   
    "Base_WarfareBBarrier5x",
    "Land_Misc_deerstand",
    "Fort_Barricade",
    "Concrete_Wall_EP1",
    "Concrete_Wall_EP1",
    "Land_fort_bagfence_long",
    "Land_fort_bagfence_long",
    "Land_fort_bagfence_round",
    "Land_fort_bagfence_round",
    "Land_fort_bagfence_corner",
    "Land_BagFenceLong",
    "Land_BagFenceLong",
    "Land_fort_artillery_nest_EP1",
    //"Land_fortified_nest_small_EP1",
    //"Land_Misc_deerstand",
    "Land_fort_rampart",
    "Land_fort_rampart_EP1",
    "Land_HBarrier_large",
    "Land_HBarrier_large",
    //"Land_Misc_Scaffolding",
    //"Land_Misc_Scaffolding",
    "Land_fort_artillery_nest_EP1",
    "Land_fort_rampart_EP1",
    "Land_Fort_Watchtower_EP1",
    "Land_Fort_Watchtower",
    "Land_fortified_nest_big",
    "Land_fortified_nest_small_EP1",
    "RampConcrete",
    "WarfareBDepot",
    "WarfareBCamp",
    "Hedgehog",
    "MASH",
    "Land_ConcreteRamp",
    "Land_CncBlock_Stripes",
    "US_Backpack_EP1",
    "TK_ALICE_Pack_EP1",
    "Fort_Nest_M240",
    "Fort_RazorWire",
    "Fort_RazorWire",
    "US_Patrol_Pack_EP1",
    "US_Backpack_EP1",
    "US_Backpack_EP1",
    "TK_ALICE_Pack_EP1",
    "US_Patrol_Pack_EP1",
    //"USMC_WarfareBLightFactory",
    "Land_GuardShed",
    "Land_tent_east"];
                                         
//Object List - Random Spawns.
staticWeaponsList = ["M2StaticMG_US_EP1",
				"DSHKM_TK_INS_EP1"];

//Object List - Random Helis.
staticHeliList = ["UH1H_TK_GUE_EP1",
				"Mi17_TK_EP1",
                "Mi171Sh_CZ_EP1",
                "CH_47F_EP1",
                "MH6J_EP1",
                "UH60M_MEV_EP1",
                "AH6X_EP1"];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = ["AK_107_kobra",
    "AK_107_kobra",
    "AK_107_kobra",
    "AK_107_kobra",
    "AK_47_M",
    "AK_47_M",
    "AK_47_M",
    "AK_47_M",
    "AK_47_M",
    "AK_47_S",
    "AK_47_S",
    "AK_47_S",
    "AK_47_S",
    "AK_47_S",
    "AK_74",
    "AK_74",
    "AK_74",
    "AK_74",
    //"AK_74_GL",
    //"AK_74_GL_kobra",
    "BAF_L110A1_Aim",
    "BAF_L7A2_GPMG",
    "BAF_L85A2_RIS_ACOG",
    "BAF_L85A2_UGL_Holo",
    "BAF_L86A2_ACOG",
    "bizon",
    "bizon",
    "bizon",
    "bizon_silenced",
    "FN_FAL",
    "FN_FAL",
    "G36a",
    "G36a",
    "G36_C_SD_eotech",
    "LeeEnfield",
    "LeeEnfield",
    "LeeEnfield",
    "LeeEnfield",
    "LeeEnfield",
    "M1014",
    "M1014",
    "M1014",
    "M16A2",
    "M16A2",
    "M16A2",
    "M16A2",
    "M16A2",
    "M14_EP1",
    "M16A2GL",
    "M16A2GL",
    "M16A2GL",
    "m16a4",
    "m16a4",
    "m16a4",
    "m16a4",
    "m16a4",
    "M240",
    "M249",
    "UZI_EP1",
    "UZI_EP1",
    "UZI_EP1",
    "Sa61_EP1",
    "Sa61_EP1",
    "Sa61_EP1",
    "M4A1_Aim",
    "M4A1_Aim",
    "M4A1_Aim",
    "M4A1_HWS_GL",
    "M4A3_CCO_EP1",
    "M60A4_EP1",
    "M60A4_EP1",
    "m8_carbine",
    "MG36",
    "Mk_48",
    "MP5A5",
    "MP5A5",
    "MP5A5",
    "Sa58V_CCO_EP1",
    "Sa58V_EP1",
    "Sa58V_RCO_EP1",
    "Saiga12K",
    "Saiga12K",
    "Saiga12K",
    "SCAR_H_CQC_CCO",
    "SCAR_L_CQC"];
                
MissionSpawnMarkers = [
            ["Mission_1",false],
            ["Mission_2",false],
            ["Mission_3",false],
            ["Mission_4",false],
            ["Mission_5",false],
            ["Mission_6",false],
            ["Mission_7",false],
            ["Mission_8",false],
            ["Mission_9",false],
            ["Mission_10",false],
            ["Mission_11",false],
            ["Mission_12",false],
            ["Mission_13",false],
            ["Mission_14",false],
            ["Mission_15",false],
            ["Mission_16",false],
            ["Mission_17",false],
            ["Mission_18",false],
            ["Mission_19",false],
            ["Mission_20",false],
            ["Mission_21",false],
            ["Mission_22",false],
            ["Mission_23",false],
            ["Mission_24",false],
            ["Mission_25",false],
            ["Mission_26",false],
            ["Mission_27",false],
            ["Mission_28",false],
            ["Mission_29",false],
            ["Mission_30",false],
            ["Mission_31",false],
            ["Mission_32",false],
            ["Mission_33",false],
            ["Mission_34",false],
            ["Mission_35",false],
            ["Mission_36",false],
            ["Mission_37",false],
            ["Mission_38",false],
            ["Mission_39",false],
            ["Mission_40",false],
            ["Mission_41",false],
            ["Mission_42",false],
            ["Mission_43",false],
            ["Mission_44",false],
            ["Mission_45",false],
            ["Mission_46",false],
            ["Mission_47",false],
            ["Mission_48",false],
            ["Mission_49",false],
            ["Mission_50",false]
];