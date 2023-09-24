function Approach(argument0, argument1, argument2) //gml_Script_Approach
{
    if (argument0 < argument1)
    {
        argument0 += argument2
        if (argument0 > argument1)
            return argument1;
    }
    else
    {
        argument0 -= argument2
        if (argument0 < argument1)
            return argument1;
    }
    return argument0;
}
function Wave()
{
	var a4 = (argument1 - argument0) * 0.5;
	return argument0 + a4 + (sin((((current_time * 0.001) + (argument2 * argument3)) / argument2) * 6.283185307179586) * a4);
}