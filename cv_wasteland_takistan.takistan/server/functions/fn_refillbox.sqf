//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat
//	@file Created: 22/1/2012 00:00
//	@file Args: [ OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

private ["_selectedBox", "_selectedBoxPos", "_finishedBox", "_currBox"];

_box = _this select 0;
_selectedBox = _this select 1;

switch(_selectedBox) do {
    case "mission_Mid_BAF": { // Broad selection of mid-high tier weapons 
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
	clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
_currBox addWeaponCargoGlobal ["AA12_PMC",2];
_currBox addWeaponCargoGlobal ["FN_FAL",2];
_currBox addWeaponCargoGlobal ["FN_FAL_ANPVS4",2];
_currBox addWeaponCargoGlobal ["G36C",2];
_currBox addWeaponCargoGlobal ["G36K",2];
_currBox addWeaponCargoGlobal ["G36A_camo",2];
_currBox addWeaponCargoGlobal ["G36_C_SD_eotech",2];
_currBox addWeaponCargoGlobal ["BAF_L85A2_RIS_ACOG",2];
_currBox addWeaponCargoGlobal ["BAF_L85A2_UGL_ACOG",2];
_currBox addWeaponCargoGlobal ["BAF_L85A2_RIS_SUSAT",2];
_currBox addWeaponCargoGlobal ["BAF_L86A2_ACOG",2];
_currBox addWeaponCargoGlobal ["m8_carbine",2];
_currBox addWeaponCargoGlobal ["m8_carbine_pmc",2];
_currBox addWeaponCargoGlobal ["M4SPR",1];
_currBox addWeaponCargoGlobal ["m8_sharpshooter",1];
_currBox addWeaponCargoGlobal ["m8_carbineGL",2];
_currBox addWeaponCargoGlobal ["m8_holo_sd",2];
_currBox addWeaponCargoGlobal ["Binocular",5];
_currBox addWeaponCargoGlobal ["NVGoggles",5];
_currBox addWeaponCargoGlobal ["Binocular_Vector",1];
_currBox addWeaponCargoGlobal ["ItemGPS",2];
_currBox addWeaponCargoGlobal ["BAF_AS50_scoped",1];
_currBox addWeaponCargoGlobal ["BAF_LRR_scoped",1];
_currBox addWeaponCargoGlobal ["BAF_L7A2_GPMG",2];
_currBox addWeaponCargoGlobal ["BAF_L110A1_Aim",2];
_currBox addWeaponCargoGlobal ["m8_SAW",2];
_currBox addWeaponCargoGlobal ["MG36",2];
        
        // Add ammunition
_currBox addMagazineCargoGlobal ["20Rnd_B_AA12_74Slug",6];
_currBox addMagazineCargoGlobal ["20Rnd_B_AA12_HE",6];
_currBox addMagazineCargoGlobal ["20Rnd_B_AA12_Pellets",6];
_currBox addMagazineCargoGlobal ["20Rnd_762x51_FNFAL",24];
_currBox addMagazineCargoGlobal ["30Rnd_556x45_G36",36];
_currBox addMagazineCargoGlobal ["30Rnd_556x45_G36SD",11];
_currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",96];
_currBox addMagazineCargoGlobal ["1Rnd_HE_M203",6];
_currBox addMagazineCargoGlobal ["FlareWhite_M203",2];
_currBox addMagazineCargoGlobal ["1Rnd_SmokeRed_M203",1];
_currBox addMagazineCargoGlobal ["1Rnd_SmokeGreen_M203",1];
_currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",1];
_currBox addMagazineCargoGlobal ["1Rnd_SmokeYellow_M203",1];
_currBox addMagazineCargoGlobal ["30Rnd_556x45_StanagSD",12];
_currBox addMagazineCargoGlobal ["IR_Strobe_Target",1];
_currBox addMagazineCargoGlobal ["IR_Strobe_Marker",1];
_currBox addMagazineCargoGlobal ["BAF_L109A1_HE",20];
_currBox addMagazineCargoGlobal ["SmokeShell",20];
_currBox addMagazineCargoGlobal ["5Rnd_127x99_as50",6];
_currBox addMagazineCargoGlobal ["5Rnd_86x70_L115A1",6];
_currBox addMagazineCargoGlobal ["100Rnd_762x51_M240",8];
_currBox addMagazineCargoGlobal ["200Rnd_556x45_L110A1",8];
_currBox addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",16];	
    };
    case "mission_Side_USLaunchers": { // Used in the airwreck side mission
    		_currBox = _box;

        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;

		// Add new weapons before ammunition
_currBox addWeaponCargoGlobal ["Javelin",1];
_currBox addWeaponCargoGlobal ["Stinger",2];
_currBox addWeaponCargoGlobal ["M136",1];
_currBox addWeaponCargoGlobal ["MAAWS",1];
_currBox addWeaponCargoGlobal ["M47Launcher_EP1",1];
_currBox addWeaponCargoGlobal ["SMAW",2];
_currBox addWeaponCargoGlobal ["BAF_NLAW_Launcher",2];
_currBox addWeaponCargoGlobal ["M32_EP1",1];
_currBox addWeaponCargoGlobal ["Mk13_EP1",1];
		// Add ammunition
_currBox addMagazineCargoGlobal ["Javelin",2];
_currBox addMagazineCargoGlobal ["Stinger",4];
_currBox addMagazineCargoGlobal ["M136",2];
_currBox addMagazineCargoGlobal ["MAAWS_HEAT",2];
_currBox addMagazineCargoGlobal ["MAAWS_HEDP",2];
_currBox addMagazineCargoGlobal ["Dragon_EP1",2];
_currBox addMagazineCargoGlobal ["SMAW_HEAA",4];
_currBox addMagazineCargoGlobal ["SMAW_HEDP",4];
_currBox addMagazineCargoGlobal ["NLAW",4];
_currBox addMagazineCargoGlobal ["HandGrenade_West",20];
_currBox addMagazineCargoGlobal ["Mine",5];
_currBox addMagazineCargoGlobal ["PipeBomb",4];
_currBox addMagazineCargoGlobal ["SmokeShell",20];
_currBox addMagazineCargoGlobal ["6Rnd_HE_M203",6];
_currBox addMagazineCargoGlobal ["6Rnd_FlareWhite_M203",1];
_currBox addMagazineCargoGlobal ["6Rnd_SmokeRed_M203",1];
_currBox addMagazineCargoGlobal ["1Rnd_HE_M203",30];
_currBox addMagazineCargoGlobal ["FlareWhite_M203",10];
_currBox addMagazineCargoGlobal ["1Rnd_SmokeRed_M203",4];
_currBox addMagazineCargoGlobal ["1Rnd_SmokeGreen_M203",4];
_currBox addMagazineCargoGlobal ["1Rnd_SmokeYellow_M203",4];
_currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",4];

    };
    case "mission_Side_USSpecial": { // Used in the airwreck side mission
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
_currBox addWeaponCargoGlobal ["M1014",2];
_currBox addWeaponCargoGlobal ["M14_EP1",2];
_currBox addWeaponCargoGlobal ["M16A2",2];
_currBox addWeaponCargoGlobal ["m16a4",2];
_currBox addWeaponCargoGlobal ["M16A4_ACG_GL",2];
_currBox addWeaponCargoGlobal ["m16a4_acg",2];
_currBox addWeaponCargoGlobal ["M4A1",2];
_currBox addWeaponCargoGlobal ["M4A1_Aim",2];
_currBox addWeaponCargoGlobal ["M4A1_AIM_SD_camo",2];
_currBox addWeaponCargoGlobal ["M4A1_HWS_GL_camo",2];
_currBox addWeaponCargoGlobal ["M4A1_HWS_GL_SD_Camo",2];
_currBox addWeaponCargoGlobal ["M4A1_RCO_GL",2];
_currBox addWeaponCargoGlobal ["M4A3_CCO_EP1",2];
_currBox addWeaponCargoGlobal ["SCAR_L_CQC_Holo",2];
_currBox addWeaponCargoGlobal ["SCAR_H_CQC_CCO",2];
_currBox addWeaponCargoGlobal ["SCAR_H_CQC_CCO_SD",2];
_currBox addWeaponCargoGlobal ["SCAR_L_STD_EGLM_RCO",2];
_currBox addWeaponCargoGlobal ["SCAR_H_LNG_Sniper_SD",1];
_currBox addWeaponCargoGlobal ["SCAR_H_STD_EGLM_Spect",2];
_currBox addWeaponCargoGlobal ["MP5A5",2];
_currBox addWeaponCargoGlobal ["MP5SD",2];
_currBox addWeaponCargoGlobal ["DMR",1];
_currBox addWeaponCargoGlobal ["M110_NVG_EP1",1];
_currBox addWeaponCargoGlobal ["m107",1];
_currBox addWeaponCargoGlobal ["M24",1];
_currBox addWeaponCargoGlobal ["M40A3",1];
_currBox addWeaponCargoGlobal ["M60A4_EP1",1];
_currBox addWeaponCargoGlobal ["Mk_48",1];
_currBox addWeaponCargoGlobal ["M240",1];
_currBox addWeaponCargoGlobal ["m240_scoped_EP1",1];
_currBox addWeaponCargoGlobal ["M249_m145_EP1",1];
_currBox addWeaponCargoGlobal ["M249_EP1",2];
_currBox addWeaponCargoGlobal ["glock17_EP1",5];
_currBox addWeaponCargoGlobal ["Colt1911",1];
_currBox addWeaponCargoGlobal ["M9",5];
_currBox addWeaponCargoGlobal ["M9SD",5];
_currBox addWeaponCargoGlobal ["UZI_EP1",2];
_currBox addWeaponCargoGlobal ["UZI_SD_EP1",2];
_currBox addWeaponCargoGlobal ["Binocular",5];
_currBox addWeaponCargoGlobal ["NVGoggles",5];
_currBox addWeaponCargoGlobal ["Binocular_Vector",1];
_currBox addWeaponCargoGlobal ["ItemGPS",2];

_currBox addMagazineCargoGlobal ["8Rnd_B_Beneli_74Slug",12];
_currBox addMagazineCargoGlobal ["8Rnd_B_Beneli_Pellets",12];
_currBox addMagazineCargoGlobal ["20Rnd_762x51_DMR",18];
_currBox addMagazineCargoGlobal ["30Rnd_556x45_Stanag",132];
_currBox addMagazineCargoGlobal ["30Rnd_556x45_StanagSD",24];
_currBox addMagazineCargoGlobal ["20Rnd_762x51_B_SCAR",24];
_currBox addMagazineCargoGlobal ["20Rnd_762x51_SB_SCAR",12];
_currBox addMagazineCargoGlobal ["30Rnd_9x19_MP5",12];
_currBox addMagazineCargoGlobal ["30Rnd_9x19_MP5SD",12];
_currBox addMagazineCargoGlobal ["10Rnd_127x99_m107",6];
_currBox addMagazineCargoGlobal ["5Rnd_762x51_M24",12];
_currBox addMagazineCargoGlobal ["IR_Strobe_Target",1];
_currBox addMagazineCargoGlobal ["IRStrobe",1];
_currBox addMagazineCargoGlobal ["100Rnd_762x51_M240",16];
_currBox addMagazineCargoGlobal ["200Rnd_556x45_M249",12];
_currBox addMagazineCargoGlobal ["17Rnd_9x19_glock17",10];
_currBox addMagazineCargoGlobal ["7Rnd_45ACP_1911",10];
_currBox addMagazineCargoGlobal ["15Rnd_9x19_M9",10];
_currBox addMagazineCargoGlobal ["15Rnd_9x19_M9SD",10];
_currBox addMagazineCargoGlobal ["30Rnd_9x19_UZI",4];
_currBox addMagazineCargoGlobal ["30Rnd_9x19_UZI_SD",4];


    };
	
    case "mission_Side_RUWeapons": { // Used in the suply side mission
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
_currBox addWeaponCargoGlobal ["AK_107_GL_kobra",2];
_currBox addWeaponCargoGlobal ["AK_107_GL_pso",2];
_currBox addWeaponCargoGlobal ["AK_107_kobra",2];
_currBox addWeaponCargoGlobal ["AK_107_pso",2];
_currBox addWeaponCargoGlobal ["AK_47_M",2];
_currBox addWeaponCargoGlobal ["AK_47_S",2];
_currBox addWeaponCargoGlobal ["AK_74",2];
_currBox addWeaponCargoGlobal ["AK_74_GL_kobra",2];
_currBox addWeaponCargoGlobal ["AKS_74_kobra",2];
_currBox addWeaponCargoGlobal ["AKS_74_NSPU",2];
_currBox addWeaponCargoGlobal ["AKS_74_pso",2];
_currBox addWeaponCargoGlobal ["AKS_74_U",2];
_currBox addWeaponCargoGlobal ["AKS_74_UN_kobra",2];
_currBox addWeaponCargoGlobal ["AKS_GOLD",2];
_currBox addWeaponCargoGlobal ["bizon",2];
_currBox addWeaponCargoGlobal ["bizon_silenced",2];
_currBox addWeaponCargoGlobal ["huntingrifle",1];
_currBox addWeaponCargoGlobal ["LeeEnfield",2];
_currBox addWeaponCargoGlobal ["Pecheneg",2];
_currBox addWeaponCargoGlobal ["KSVK",1];
_currBox addWeaponCargoGlobal ["PK",2];
_currBox addWeaponCargoGlobal ["RPK_74",2];
_currBox addWeaponCargoGlobal ["Sa58V_CCO_EP1",2];
_currBox addWeaponCargoGlobal ["Sa58V_RCO_EP1",2];
_currBox addWeaponCargoGlobal ["Saiga12K",2];
_currBox addWeaponCargoGlobal ["SVD",1];
_currBox addWeaponCargoGlobal ["SVD_CAMO",1];
_currBox addWeaponCargoGlobal ["SVD_NSPU_EP1",1];
_currBox addWeaponCargoGlobal ["VSS_vintorez",1];
_currBox addWeaponCargoGlobal ["Makarov",5];
_currBox addWeaponCargoGlobal ["MakarovSD",5];
_currBox addWeaponCargoGlobal ["revolver_EP1",5];
_currBox addWeaponCargoGlobal ["Sa61_EP1",2];
_currBox addWeaponCargoGlobal ["UZI_EP1",2];
_currBox addWeaponCargoGlobal ["UZI_SD_EP1",2];
_currBox addWeaponCargoGlobal ["revolver_gold_EP1",1];
_currBox addWeaponCargoGlobal ["Binocular",5];
_currBox addWeaponCargoGlobal ["NVGoggles",5];
_currBox addWeaponCargoGlobal ["ItemGPS",2];
_currBox addWeaponCargoGlobal ["Binocular_Vector",1];


_currBox addMagazineCargoGlobal ["30Rnd_545x39_AK",120];
_currBox addMagazineCargoGlobal ["30Rnd_545x39_AKSD",12];
_currBox addMagazineCargoGlobal ["8Rnd_9x18_Makarov",10];
_currBox addMagazineCargoGlobal ["8Rnd_9x18_MakarovSD",10];
_currBox addMagazineCargoGlobal ["30Rnd_9x19_UZI",4];
_currBox addMagazineCargoGlobal ["30Rnd_9x19_UZI_SD",4];
_currBox addMagazineCargoGlobal ["20Rnd_B_765x17_Ball",4];
_currBox addMagazineCargoGlobal ["6Rnd_45ACP",12];
_currBox addMagazineCargoGlobal ["30Rnd_762x39_AK47",36];
_currBox addMagazineCargoGlobal ["30Rnd_762x39_SA58",24];
_currBox addMagazineCargoGlobal ["64Rnd_9x19_Bizon",12];
_currBox addMagazineCargoGlobal ["64Rnd_9x19_SD_Bizon",12];
_currBox addMagazineCargoGlobal ["5x_22_LR_17_HMR",6];
_currBox addMagazineCargoGlobal ["10x_303",12];
_currBox addMagazineCargoGlobal ["100Rnd_762x54_PK",16];
_currBox addMagazineCargoGlobal ["5Rnd_127x108_KSVK",6];
_currBox addMagazineCargoGlobal ["75Rnd_545x39_RPK",8];
_currBox addMagazineCargoGlobal ["8Rnd_B_Saiga12_74Slug",12];
_currBox addMagazineCargoGlobal ["8Rnd_B_Saiga12_Pellets",12];
_currBox addMagazineCargoGlobal ["10Rnd_762x54_SVD",18];
_currBox addMagazineCargoGlobal ["20Rnd_9x39_SP5_VSS",6];
    };
	
    case "mission_Side_RUlaunchers": { // Used in the suply side mission
    	_currBox = _box;
        
        // Clear prexisting weapons first
        clearMagazineCargoGlobal _currBox;
		clearWeaponCargoGlobal _currBox;
        
        // Add new weapons before ammunition
_currBox addWeaponCargoGlobal ["Igla",1];
_currBox addWeaponCargoGlobal ["MetisLauncher",1];
_currBox addWeaponCargoGlobal ["RPG18",4];
_currBox addWeaponCargoGlobal ["RPG7V",6];
_currBox addWeaponCargoGlobal ["M79_EP1",4];
_currBox addWeaponCargoGlobal ["Strela",1];


_currBox addMagazineCargoGlobal ["RPG18",8];
_currBox addMagazineCargoGlobal ["Igla",2];
_currBox addMagazineCargoGlobal ["AT13",2];
_currBox addMagazineCargoGlobal ["PG7V",18];
_currBox addMagazineCargoGlobal ["PG7VL",6];
_currBox addMagazineCargoGlobal ["PG7VR",3];
_currBox addMagazineCargoGlobal ["MineE",5];
_currBox addMagazineCargoGlobal ["HandGrenade_East",20];
_currBox addMagazineCargoGlobal ["BAF_ied_v1",4];
_currBox addMagazineCargoGlobal ["BAF_ied_v2",2];
_currBox addMagazineCargoGlobal ["OG7",6];
_currBox addMagazineCargoGlobal ["1Rnd_HE_GP25",30];
_currBox addMagazineCargoGlobal ["1Rnd_SMOKE_GP25",10];
_currBox addMagazineCargoGlobal ["FlareWhite_GP25",10];
_currBox addMagazineCargoGlobal ["SmokeShell",20];
_currBox addMagazineCargoGlobal ["IR_Strobe_Target",1];
_currBox addMagazineCargoGlobal ["1Rnd_HE_M203",32];
_currBox addMagazineCargoGlobal ["1Rnd_Smoke_M203",8];
_currBox addMagazineCargoGlobal ["6Rnd_FlareWhite_M203",8];
_currBox addMagazineCargoGlobal ["Strela",2];
    };
};
