if (!isServer) exitWith {};

while {true} do
{
    if (daytime >= 18 || daytime < 6) then
    {
        //setTimeMultiplier 12
		setTimeMultiplier 10
    }
    else
    {
        //setTimeMultiplier 3.5
		setTimeMultiplier 3
    };


    uiSleep 30;
};