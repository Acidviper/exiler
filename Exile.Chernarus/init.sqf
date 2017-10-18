//#include "buildingReplacement.sqf"
//if(isServer) then
//{
//	if (worldName == "chernarus") then 
//	{
		//_FFA_LHOUSEV=nearestObjects [getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition"),["house"],15000];
//		nearestObjects [getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition"),["house"],15000];
//	};
//};
call compileFinal preprocessFileLineNumbers "zcp.sqf";
call compileFinal preprocessFileLineNumbers "time.sqf";
[] execVM "Custom\EnigmaRevive\init.sqf";
call compileFinal preprocessFileLineNumbers "VirtualGarage\VirtualGarage_Client_Init.sqf";
execVM "Build_Limits\config.sqf";
if(hasInterface)then
{
[] execVM "addons\paintshop\paintshop.sqf";
};
SA_TOW_LOCKED_VEHICLES_ENABLED = false;
SA_TOW_IN_EXILE_SAFEZONE_ENABLED = false;
SA_MAX_TOWED_CARGO = 2;