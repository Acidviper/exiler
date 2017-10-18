/**
 * ExileClient_gui_selectSpawnLocation_show
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_spawnButton","_listBox","_listItemIndex","_numberOfSpawnPoints","_randNum","_randData","_randomSpawnIndex"];
disableSerialization;
ExileClientSpawnLocationSelectionDone = false;
ExileClientSelectedSpawnLocationMarkerName = "";
createDialog "RscExileSelectSpawnLocationDialog";
waitUntil
{
	_display = findDisplay 24002;
	!isNull _display
};
_spawnButton = _display displayCtrl 24003;
_spawnButton ctrlEnable false;
_display displayAddEventHandler ["KeyDown", "_this call ExileClient_gui_loadingScreen_event_onKeyDown"];
_listBox = _display displayCtrl 24002;
lbClear _listBox;
{
	if (getMarkerType _x == "ExileSpawnZone" && ((getMarkerPos ExileClientLastDeathMarker) distance (getMarkerPos _x)) > 3000) then
	{
		_listItemIndex = _listBox lbAdd (markerText _x);
		_listBox lbSetData [_listItemIndex, _x];
	};
}
forEach allMapMarkers;
 
_numberOfSpawnPoints = {getMarkerType _x == "ExileSpawnZone" && ((getMarkerPos ExileClientLastDeathMarker) distance (getMarkerPos _x)) > 3000} count allMapMarkers;
if (_numberOfSpawnPoints > 0) then
{
    _randNum = floor(random _numberOfSpawnPoints);
    _randData = lbData [24002,_randNum];
    _randomSpawnIndex = _listBox lbAdd "Random";
    _listBox lbSetData [_randomSpawnIndex, _randData];
};
_playerUID = getPlayerUID player;
{
    _flag = _x;
    _buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
    if(_playerUID in _buildRights)then
    {
        _name = _flag getVariable ["ExileTerritoryName", ""];
        _lbid = _listBox lbAdd _name;
        _listBox lbSetColor [_lbid, [0,0.68,1,1]];
        _markerName = Format["%1%2",_name,_playerUID];
        deleteMarker _markerName;
        createMarker [_markerName,getPosATL _flag];
        _listBox lbSetData [_lbid,_markerName];
    };
} forEach (allMissionObjects "Exile_Construction_Flag_Static");
true