/*
	Vehicle & backpack Paintshop
	By Halv
	
	Copyright (C) 2015  Halvhjearne > README.md

	Halv's Paintshop eXpanded 4 Exile 
	by DirtySanchez
	DonkeyPunch.INFO
	https://discord.me/eXpoch
*/


//these are the classnames of buildings that will activate the paintshop for uniforms / back packs / vehicles
//Base Painting is based on your own territory and the action is built into exile code
//Vehicle Painting is based on _paintshopBuildings and the action is built into exile code
_paintshopbuildings = ["Land_Atm_01_F","Exile_Sign_Vehicles","Exile_Sign_Vehicles_Small"]; 

//add textures and preset colors here
_textures = [
	//Halv's Paintshop eXpanded 4 Exile by DirtySanchez
	["Camo 01","SM\Paint\textures\camo01_co.paa"],
	["Camo 02","SM\Paint\textures\camo02_co.paa"],
	["Camo 03","SM\Paint\textures\camo03_co.paa"],
	["Camo 04","SM\Paint\textures\camo04_co.paa"],
	["Camo 05","SM\Paint\textures\camo05_co.paa"],
	["Camo 06","SM\Paint\textures\camo06_co.paa"],
	["Camo 07","SM\Paint\textures\camo07_co.paa"],
	["Camo 08","SM\Paint\textures\camo08_co.paa"],
	["Camo 09","SM\Paint\textures\camo09_co.paa"],
	["Armor","SM\Paint\textures\armor.jpg"],
	["Devil's Camo","SM\Paint\textures\blackredwhite.paa"],
	["Blue Camo","SM\Paint\textures\bluecamo.jpg"],
	["Camo Camo","SM\Paint\textures\camo.jpg"],
	["DirtySanchez Camo","SM\Paint\textures\camo1.jpg"],
	["Aqua Camo","SM\Paint\textures\camoaqua.jpg"],
	["Desert Camo","SM\Paint\textures\camodesert.jpg"],
	["Silver Camo","SM\Paint\textures\camogrey.jpg"],
	["Pink Camo","SM\Paint\textures\camopink.jpg"],
	["Red Camo","SM\Paint\textures\camored.jpg"],
	["Smooth Camo","SM\Paint\textures\camosmooth.jpg"],
	["Tie Die Camo","SM\Paint\textures\camotiedie.jpg"],
	["Digital Camo","SM\Paint\textures\digital.jpg"],
	["Fire Camo","SM\Paint\textures\fire.jpg"],
	["Flat Green Camo","SM\Paint\textures\flatgreen.jpg"],
	["Pink Hair Camo","SM\Paint\textures\pink-hair.jpg"],
	["Safari Camo","SM\Paint\textures\safari.jpg"],
	["Shield Camo","SM\Paint\textures\shield.jpg"],
	["Skull Camo","SM\Paint\textures\skullcamo.jpg"],
	["Neon Camo","SM\Paint\textures\spilled_neon.jpg"],
	["Urban Camo","SM\Paint\textures\urbancamo.jpg"],
	["Zebra Camo","SM\Paint\textures\zebracamo.paa"],
	["Eagle","\a3\data_f_curator\Eagle\Data\eagle_co.paa"],
	//preset colors
	["White","#(argb,8,8,3)color(1,1,1,1)"],
	["Silver","#(argb,8,8,3)color(0.75,0.75,0.75,1)"],
	["Gray","#(argb,8,8,3)color(0.5,0.5,0.5,1)"],
	["Black","#(argb,8,8,3)color(0,0,0,0.6)"],
	["Red","#(argb,8,8,3)color(1,0,0,1)"],
	["Maroon","#(argb,8,8,3)color(0.5,0,0,0.7)"],
	["Yellow","#(argb,8,8,3)color(1,1,0,1)"],
	["Lime","#(argb,8,8,3)color(0,1,0,1)"],
	["Green","#(argb,8,8,3)color(0,0.5,0,1)"],
	["Aqua","#(argb,8,8,3)color(0,1,1,1)"],
	["Teal","#(argb,8,8,3)color(0,0.5,0.5,1)"],
	["Blue","#(argb,8,8,3)color(0,0,1,1)"],
	["Navy","#(argb,8,8,3)color(0,0,0.5,1)"],
	["Fuchsia","#(argb,8,8,3)color(1,0,1,1)"],
	["Purple","#(argb,8,8,3)color(0.5,0,0.5,1)"]
];

/*
// Use these below as examples of how to add other textures from MODS or from the mission file pbo :)
//Epoch
	//Epoch["Bear","\x\addons\a3_epoch_assets\textures\bear\bear_co.paa"],
	//Epoch["Candy","\x\addons\a3_epoch_assets\textures\candy\candy_ca.paa"],
	//Epoch["Circuit","\x\addons\a3_epoch_assets\textures\circuit\circuit_co.paa"],
	//Epoch["Concrete","\x\addons\a3_epoch_assets\textures\concrete_ca.paa"],
	//Epoch["Wood","\x\addons\a3_epoch_assets\textures\wood_co.paa"],
	//Epoch["Supply crate","\x\addons\a3_epoch_assets_1\textures\supply_crate_co.paa"],
	//Epoch["Carry Tent","\x\addons\a3_epoch_assets_3\carnival\carnyTent_co.paa"],
//custom textures (have to be in your mission pbo)
	//custom["Linux","trader\trader.jpg"],
	//custom["DK Flag","custom\dkflag.jpg"],
	//custom["Load Screen","custom\loadscreen.jpg"],
	//custom["Problem Solving","custom\problemsolving.jpg"],
	//custom["Union Jack","custom\unionjack.jpg"],
	//custom["Carbon","custom\carbon.jpg"],
	//custom["Stars and Bars","custom\confederate.jpg"],
	//custom["Leopard skin","custom\leopard.jpg"],
	//custom["Stars and Stripes","custom\murica.jpg"],
	//custom["Rainbow","custom\rainbow.jpg"],
	//custom["Shark Teeths","custom\shark.jpg"],
	//custom["Camo Light Green","custom\lightgreen.jpg"]
//default arma 3 textures
	["Debriefing background","\a3\Ui_f\data\gui\cfg\Debriefing\debriefingbackground_co.paa"],
	["CommunityGuide background 1","\a3\Ui_f\data\gui\cfg\CommunityGuide\airassault_co.paa"],
	["CommunityGuide background 2","\a3\Ui_f\data\gui\cfg\CommunityGuide\basicinfantrycombat_co.paa"],
	["CommunityGuide background 3","\a3\Ui_f\data\gui\cfg\CommunityGuide\combinedarms_co.paa"],
	["CommunityGuide background 4","\a3\Ui_f\data\gui\cfg\CommunityGuide\groundvehiclecrew_co.paa"],
	["CommunityGuide background 5","\a3\Ui_f\data\gui\cfg\CommunityGuide\guerrillawarfare_co.paa"],
	["CommunityGuide background 6","\a3\Ui_f\data\gui\cfg\CommunityGuide\helicopters_co.paa"],
	["CommunityGuide background 7","\a3\Ui_f\data\gui\cfg\CommunityGuide\introduction_co.paa"],
	["CommunityGuide background 8","\a3\Ui_f\data\gui\cfg\CommunityGuide\sniperslaunchers_co.paa"],
	["CommunityGuide background 9","\a3\Ui_f\data\gui\cfg\CommunityGuide\zeus_co.paa"],
	["LoadingScreens 1","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_06_co.paa"],
	["LoadingScreens 2","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_07_co.paa"],
	["LoadingScreens 3","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_10_co.paa"],
	["LoadingScreens 4","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_14_co.paa"],
	["LoadingScreens 5","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_16_co.paa"],
	["LoadingScreens 6","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_17_co.paa"],
	["LoadingScreens 7","\a3\Ui_f\data\gui\cfg\LoadingScreens\gc_wallpaper_18_co.paa"],
	["LoadingScreens 8","\a3\Ui_f\data\gui\cfg\LoadingScreens\loading_01_co.paa"],
	["Bootcamp Background","\a3\Ui_f\data\gui\Rsc\RscDisplayBootcampMsgBox\bootcampmsgbox_background_ca.paa"],
	["Workshop defaultimage","\a3\Ui_f\data\gui\Rsc\RscDisplayPublishMission\steamworksdefaultimage_co.paa"],
	["WelcomeScreens 1","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome1_ca.paa"],
	["WelcomeScreens 2","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome2_ca.paa"],
	["WelcomeScreens 3","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome3_ca.paa"],
	["WelcomeScreens 4","\a3\Ui_f\data\gui\Rsc\RscDisplayWelcome\welcome4_ca.paa"],
//karts pics
	["Karts Content","\a3\data_f_kart\images\karts_contentbrowserpicture_co.paa"],
	["Karts illustration 1","\a3\data_f_kart\images\karts_illustration_01_ca.paa"],
	["Karts illustration 2","\a3\data_f_kart\images\karts_illustration_02_ca.paa"],
	["Karts illustration 3","\a3\data_f_kart\images\karts_illustration_03_ca.paa"],
	["Karts illustration 4","\a3\data_f_kart\images\karts_illustration_04_ca.paa"],
	["Karts illustration 5","\a3\data_f_kart\images\karts_illustration_05_ca.paa"],
	["Karts illustration 6","\a3\data_f_kart\images\karts_illustration_06_ca.paa"],
	["Karts Overview","\a3\data_f_kart\images\karts_overviewpicture_co.paa"],
	["Karts Flag 1","\a3\data_f_kart\Flags\flag_bluking1_co.paa"],
	["Karts Flag 2","\a3\data_f_kart\Flags\flag_bluking2_co.paa"],
	["Karts Flag 3","\a3\data_f_kart\Flags\flag_fuel1_co.paa"],
	["Karts Flag 4","\a3\data_f_kart\Flags\flag_fuel2_co.paa"],
	["Karts Flag 5","\a3\data_f_kart\Flags\flag_koke1_co.paa"],
	["Karts Flag 6","\a3\data_f_kart\Flags\flag_koke2_co.paa"],
	["Karts Flag 7","\a3\data_f_kart\Flags\flag_redburger_co.paa"],
	["Karts Flag 8","\a3\data_f_kart\Flags\flag_redstone_co.paa"],
	["Karts Flag 9","\a3\data_f_kart\Flags\flag_suatmm_co.paa"],

//other
	["Heli Content","\a3\data_f_heli\images\heli_overviewpicture_co.paa"],
*/