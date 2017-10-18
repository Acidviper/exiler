// **********************************************************************************************************
// * This project is licensed under Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) 
// * https://creativecommons.org/licenses/by-sa/4.0/
// **********************************************************************************************************
//	@file Name: modmodChecker.sqf
//	@file Author: NRZ7 (www.standarol.com)
//	@description: This script modCheck the mods loaded by the client. If any mod is not loaded, pop's a screen with detailed information and clickable community links (modmodCheckerDisplay.sqf).
//					You can configure requiered addons (error 99) or optional addons (error 1). If any required mod fails, the client load "You Loose" screen after close the dialog.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Exile_Client Example - READ TO UNDERSTAND - DO NOT TOUCH - READ - DO NOT TOUCH - READ - DO NOT TOUCH
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Change "Exile_Client" to name of the CfgPatches from desired mod.
// You can find under editor. ("Tools" - "Config Viewer" - "Configfile" - "CfgPatches")
if (isClass(configFile >> "CfgPatches" >> "Exile_Client")) then  
	{  
// Change modCheckExile to your desired and unique mod variable name
// Change "Exile Mod is" to your mod string. For advanced users, can change size, color, allign, etc.
		modCheckExile =  "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>Exile Mod is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
// Change "Exile Mod is" to your mod string
		modCheckExile = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>Exile Mod is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
// Set 99 to Required, Set 1 to optional
		errorLevel = errorLevel + 99
	};

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// START OF MODS CONFIG - EDIT OR DELETE UNDER THIS LINE
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
// CUP_Weapons Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "CUP_Weapons_WeaponsCore")) then  
	{  
		modCheckCUPWeapons = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Weapons is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckCUPWeapons = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Weapons is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};

// CUP_Units Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "CUP_Creatures_People_Core")) then  
	{  
		modCheckCUPUnits = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Units is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckCUPUnits = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Units is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};
	
// CUP_TerrainCore Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "CUP_Worlds")) then  
	{  
		modCheckCUPTerrainCore = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Terrain Core is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckCUPTerrainCore = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Terrain Core is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};
	
// CUP_TerrainMaps Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "cup_chernarus_config")) then  
	{  
		modCheckCUPTerrainMaps = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Terrain Maps is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckCUPTerrainMaps = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Terrain Maps is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};
	
// CUP_Vehicles Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "CUP_Vehicles_Core")) then  
	{  
		modCheckCUPVehicles = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Vehicles is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckCUPVehicles = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CUP Vehicles is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};

// Community Base Addon Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "CBA_main")) then  
	{  
		modCheckCBA = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CBA_A3 is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckCBA = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>CBA_A3 is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};

// TRYK's Multi-Play Uniforms Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "TRYK_Uniform")) then  
	{  
		modCheckTRYKUniforms = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>TRYK's Multi-Play Uniforms is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckTRYKUniforms = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>TRYK's Multi-Play Uniforms is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};
	
// DS Houses Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "DShouses")) then  
	{  
		modCheckDShouses = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>DS Houses is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckDShouses = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>DS Houses is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};
	
// Enhanced Movement Example - DELETE OR MODIFY
//if (isClass(configFile >> "CfgPatches" >> "BaBe_core")) then  
//	{  
//		modCheckEnhancedMovement = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>Enhanced Movement is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
//	} else { 
//		modCheckEnhancedMovement = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>Enhanced Movement is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
//		errorLevel = errorLevel + 99
//	};
	
// SAD_Minigun_Fix Example - DELETE OR MODIFY
if (isClass(configFile >> "CfgPatches" >> "SAD_Minigun_Fix")) then  
	{  
		modCheckSADMinigunFix = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>Temp fix for exile miniguns is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckSADMinigunFix = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>Temp fix for exile miniguns is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};

// YOU CAN ADD MORE MODS, ADD FOR EACH SOME CODE LIKE THIS
	
/*
if (isClass(configFile >> "CfgPatches" >> "YOUR_MOD_CLASSNAME")) then  
	{  
		modCheckYOURMOD = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>YOUR MOD is</t><t color='#2fd402' size='0.9' shadow='1' shadowColor='#000000' align='center'> found!</t><br/>";
	} else { 
		modCheckYOURMOD = "<t size='0.9' shadow='1' shadowColor='#000000' align='center'>YOUR MOD is</t><t color='#ff0000' size='0.9' shadow='1' shadowColor='#000000' align='center'> NOT FOUND!</t><br/>";
		errorLevel = errorLevel + 99
	};
*/
