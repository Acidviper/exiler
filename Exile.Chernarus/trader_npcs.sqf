/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 35 NPCs
private _npcs = [
["Exile_Trader_Hardware", ["HubStandingUA_idle1"], "Exile_Trader_Hardware", "WhiteHead_07", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [11458.1, 11321.5, 318.232], [-0.950667, 0.310214, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_scratch"], "Exile_Trader_Food", "WhiteHead_21", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [11457, 11317, 318.232], [-0.946588, 0.322446, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_01", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [11504, 11264.9, 315.963], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["c4coming2cDf_genericstani2"], "Exile_Trader_Armory", "WhiteHead_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [11443.2, 11326.2, 318.232], [0.865135, -0.501539, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["c4coming2cDf_genericstani1"], "Exile_Trader_Equipment", "WhiteHead_04", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [11441.6, 11320.6, 318.232], [0.86263, -0.505835, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["c4coming2cDf_genericstani1"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [11440.3, 11316.3, 318.232], [0.953353, -0.301857, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubBriefing_scratch"], "Exile_Trader_AircraftCustoms", "AfricanHead_01", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [11480.8, 11342.5, 317.322], [0.653302, 0.757098, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubBriefing_loop"], "Exile_Trader_Office", "WhiteHead_18", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [11445.9, 11306.5, 318.232], [0.357814, 0.933793, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubBriefing_scratch"], "Exile_Trader_Vehicle", "GreekHead_A3_07", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [11445, 11373, 317.221], [-0.81243, 0.583059, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_loop"], "Exile_Trader_VehicleCustoms", "AfricanHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [11433.5, 11356.9, 317.099], [-0.81302, 0.582236, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubBriefing_think"], "Exile_Trader_AircraftCustoms", "WhiteHead_07", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [12548.9, 12556, 159.001], [-0.944966, 0.327168, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubBriefing_loop"], "Exile_Trader_Aircraft", "WhiteHead_16", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [12537.5, 12542.6, 158.902], [-0.946294, 0.323307, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_15", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [12551.9, 12542.7, 159.001], [-0.222348, -0.974967, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_stretch"], "Exile_Trader_WasteDump", "WhiteHead_08", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [4082.32, 11656.5, 365.557], [0.948456, -0.316907, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUA_move1"], "Exile_Trader_WasteDump", "WhiteHead_18", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [6341.3, 7812.99, 304.972], [-0.56609, -0.824344, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubStandingUA_idle3"], "Exile_Trader_Vehicle", "WhiteHead_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Aviator",[],["","","","","",""]], [6293.04, 7821.05, 305.003], [0.516967, 0.856006, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUA_move2"], "Exile_Trader_Food", "WhiteHead_20", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [6301.86, 7841.4, 305.638], [-0.492955, -0.870055, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["c4coming2cDf_genericstani1"], "Exile_Trader_Equipment", "WhiteHead_14", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [6292.08, 7837.01, 305.517], [0.864538, -0.502567, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubBriefing_scratch"], "Exile_Trader_Hardware", "GreekHead_A3_05", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [6299.96, 7830.94, 305.638], [-0.829086, 0.559121, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms2", ["HubBriefing_think"], "Exile_Trader_CommunityCustoms2", "GreekHead_A3_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [1302.01, 13377, 331.512], [-0.639144, 0.769087, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_stretch"], "Exile_Trader_Food", "WhiteHead_08", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [1329.16, 13361.6, 331.096], [-0.755248, 0.65544, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [11121.4, 5046.13, 290.132], [0.9976, 0.0692369, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms3", ["HubBriefing_loop"], "Exile_Trader_CommunityCustoms3", "GreekHead_A3_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [6293.85, 7842.58, 305.638], [0.864371, -0.502854, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["c4coming2cDf_genericstani2"], "Exile_Trader_Armory", "WhiteHead_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [1174.73, 2471.43, 9.01375], [0.627909, -0.778287, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["c4coming2cDf_genericstani1"], "Exile_Trader_Equipment", "WhiteHead_06", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [1154.47, 2438.92, 7.23552], [0.986083, -0.166252, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUA_idle1"], "Exile_Trader_Food", "WhiteHead_03", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [1219.92, 2441.4, 6.22003], [0.0795552, -0.99683, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubBriefing_think"], "Exile_Trader_Hardware", "GreekHead_A3_07", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [1251.56, 2460.64, 6.4576], [0.2139, -0.976856, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubStandingUA_idle2"], "Exile_Trader_Office", "WhiteHead_20", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [1178.36, 2502.79, 6.10557], [0.811798, -0.583938, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", ["c4coming2cDf_genericstani2"], "Exile_Trader_RussianRoulette", "WhiteHead_21", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [1230.73, 2461.58, 6.06834], [0.998572, 0.0534165, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubBriefing_loop"], "Exile_Trader_SpecialOperations", "WhiteHead_02", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [1168.73, 2462.63, 6.60967], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubBriefing_scratch"], "Exile_Trader_Vehicle", "WhiteHead_04", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [1249.8, 2419.21, 6.16144], [-0.99992, 0.0126583, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop"], "Exile_Trader_WasteDump", "WhiteHead_15", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [1217.15, 2369.58, 6.17991], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_stretch"], "Exile_Trader_VehicleCustoms", "WhiteHead_19", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [1250.23, 2426.29, 6.15841], [-0.999417, 0.0341492, 0], [0, 0, 1]],
["Exile_Trader_Boat", [], "Exile_Trader_Boat", "AfricanHead_02", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Clear",[],["","","","","",""]], [13590.3, 6248.24, 3.05822], [-0.995678, 0.0928697, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", [], "Exile_Trader_BoatCustoms", "WhiteHead_07", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [13589.3, 6258.02, 3.05822], [-0.995997, 0.0893848, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubBriefing_loop"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [6297.7, 7844.24, 305.637], [-0.570659, -0.821187, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_loop"], "Exile_Trader_VehicleCustoms", "WhiteHead_20", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Aviator",[],["","","","","",""]], [6295.46, 7819.43, 305.006], [0.52229, 0.852768, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubBriefing_scratch"], "Exile_Trader_AircraftCustoms", "WhiteHead_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [1207.17, 2410.34, 6.21728], [0.085654, 0.996325, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_stretch"], "Exile_Trader_VehicleCustoms", "GreekHead_A3_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [11121.8, 5057.15, 290.777], [0.972139, -0.234405, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_loop"], "Exile_Trader_VehicleCustoms", "WhiteHead_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [4083.32, 11650.8, 365.649], [0.999945, 0.0104734, 0], [0, 0, 1]],
//military trader
["Exile_Trader_Vehicle", ["HubBriefing_loop"], "Exile_Trader_CommunityCustoms4", "WhiteHead_07", [["CUP_smg_MP5SD6","","","",["CUP_30Rnd_9x19_MP5",30],[],""],[],["Exile_Weapon_Colt1911","","","",["Exile_Magazine_7Rnd_45ACP",7],[],""],["U_I_pilotCoveralls",[["CUP_30Rnd_9x19_MP5",3,30],["Exile_Magazine_7Rnd_45ACP",3,7]]],["CUP_V_B_PilotVest",[]],[],"H_PilotHelmetFighter_O","G_Combat",[],["","","","","",""]], [13733.3, 2916.76, 46.5264], [-0.605873, 0.795561, 0], [0, 0, 1]],
["Exile_Trader_CommunityCustoms5", ["HubBriefing_think"], "Exile_Trader_CommunityCustoms5", "WhiteHead_18", [["CUP_arifle_AK47","CUP_muzzle_Bizon","","CUP_optic_Kobra",["CUP_30Rnd_762x39_AK47_M",30],[],""],["launch_RPG32_F","","","",[],[],""],["Exile_Weapon_Colt1911","","","",["Exile_Magazine_7Rnd_45ACP",7],[],""],["U_O_T_Soldier_F",[["Exile_Magazine_7Rnd_45ACP",3,7]]],["V_PlateCarrier1_rgr",[["CUP_30Rnd_762x39_AK47_M",3,30]]],[],"CUP_H_BAF_Officer_Beret_PRR_U","CUP_FR_NeckScarf2",[],["","","","","","CUP_NVG_HMNVS"]], [13697.8, 2929, 47.6542], [0.996316, 0.0857549, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_stretch"], "Exile_Trader_WasteDump", "WhiteHead_03", [["LMG_Zafir_F","","","",[],[],""],[],["Exile_Weapon_Colt1911","","","",["Exile_Magazine_7Rnd_45ACP",7],[],""],["U_C_HunterBody_grn",[["Exile_Magazine_7Rnd_45ACP",3,7]]],["V_Rangemaster_belt",[]],[],"CUP_H_RUS_TSH_4_Brown","G_Goggles_VR",[],["","","","","",""]], [13729.3, 2950.42, 46.6129], [-0.528202, -0.849119, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;