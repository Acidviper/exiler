waitUntil {!isNull findDisplay 46 && !isNil 'ExileClientLoadedIn' && getPlayerUID player != ''};
waituntil {alive player};
uiSleep 5;
_playerUID = getPlayerUID player;
{
	_flag = _x;
	_buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
	if (_playerUID in _buildRights) then
	{
		_isStolen = _flag getVariable ["ExileFlagStolen", 0];
		_name = _flag getVariable ["ExileTerritoryName", ""];
		if (_isStolen == 1) then
		{
			["FlagStolen",[format["<t color='#E48A36'>%1</t> territory flag was stolen!",_name]]] call BIS_fnc_showNotification;
		}
	};
}
forEach (allMissionObjects "Exile_Construction_Flag_Static");