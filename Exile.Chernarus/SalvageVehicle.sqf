// http://www.exilemod.com/topic/17834-player-corpse-falls-from-destroyed-vehicle/?do=findComment&comment=162930

private ["_salvage"];
player playMove "AinvPknlMstpSnonWnonDr_medic1";
sleep 10;
deleteVehicle (_this select 0);