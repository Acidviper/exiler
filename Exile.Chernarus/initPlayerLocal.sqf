// Taken away for now
#include "initServer.sqf"

//traders
#include "trader_npcs.sqf"

NR_fnc_SalvageVehicle = compileFinal preprocessFileLineNumbers "SalvageVehicle.sqf";
//modChecker
waitUntil {!isNull findDisplay 46 && !isNil 'ExileClientLoadedIn' && getPlayerUID player != ''}; // wait until player is in spawned
firstCheck = 0; 
execVM "addons\modChecker\init\modCheckerInit.sqf";
//end modChecker
ExileClientXM8IsPowerOn = true;
call compileFinal preprocessFileLineNumbers "basedue.sqf";
call compileFinal preprocessFileLineNumbers "flagstolen.sqf";