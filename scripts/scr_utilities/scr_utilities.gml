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
function scr_initenemy()
{
	santaID = -4
    rattime = 0
    platformid = -4
    usepalette = 0
    blur_effect = 0
    hsp_carry = 0
    vsp_carry = 0
    xscale = 1
    yscale = 1
    grav = 0.5
    hsp = 0
    vsp = 0
    stunned = 0
    alarm[0] = 150
    roaming = 1
    flying = 0
    straightthrow = 0
    stomped = 0
    reset = 0
    bombreset = 0
    hp = 1
    maxhp = 1
    grounded = 1
    hit_connected = 0
    flash = 0
    birdcreated = 0
    boundbox = 0
    hitboxcreate = 0
    important = 0
    heavy = 0
    depth = 0
    grabbedby = 0
    paletteselect = 0
    spr_palette = 168
    stuntouchbuffer = 0
    scaredbuffer = 0
    movespeed = 1
    ragebuffer = 0
    ragehitbox = 0
    ragedash = 0
    ragecooldown = 0
    img_angle = image_angle
    steppy = 20
    invtime = 0
    invincible = 0
    bumpable = 1
    stompable = 1
    killbyenemy = 1
    groundpound = 1
    instantkillable = 1
    stunnable = 1
    parryable = 1
    destroyable = 1
    hittable = 1
    shakestun = 1
    pepperman_grab = 0
    stagger_buffer = -1
    stagger_max = 45
    stagger_jumpspeed = 4
    stagger_movespeed = 1
    stagger_dir = 1
    hitLag = 25
    hitX = x
    hitY = y
    hitvsp = 0
    hithsp = 0
    dodgebuffer = 0
    arcprojectiletimer = 0
    escape = 0
    oggrav = 0.5
    arena = 0
    wave = 0
    rage = 0
    instakilled = 0
    killprotection = 0
    mach3destroy = 0
    provoked = 0
    is_controllable = 0
    possess_movespeed = 0
    stuntouch_yoffset = 0
    turnmax = 200
    turntimer = 0
    turnstart = 0
    timedgate = 0
    chargeID = -4
    angle = image_angle
    is_controllable = 0
    possess_movespeed = 0
    grav = 0.5
    hsp = 0
    vsp = 0
    state = (134 << 0)
    stunned = 0
    alarm[0] = 150
    roaming = 1
    collectdrop = 5
    flying = 0
    straightthrow = 0
    cigar = 0
    cigarcreate = 0
    stomped = 0
    shot = 0
    reset = 0
    flash = 0
    thrown = 0
    hp = 1
    slapped = 0
    grounded = 1
    birdcreated = 0
    boundbox = 0
    spr_dead = 138
    important = 0
    heavy = 0
    depth = 0
    paletteselect = 0
    spr_palette = 151
    grabbedby = 0
    stuntouchbuffer = 0
    scaredbuffer = 0
    railmovespeed = 0
    use_collision = 1
    turner = 0
    elite = 0
    elitehit = 0
    elitegrab = 0
    ventilator_vsp = -5
    linethrown = 0
    dashcloudid = 523
}
function scr_player_addslopemomentum(argument0, argument1) //gml_Script_scr_player_addslopemomentum
{
    with (instance_place(x, (y + 1), obj_slope))
    {
        if (sign(image_xscale) == (-sign(other.xscale)))
        {
            if (abs(image_yscale) < abs(image_xscale))
                other.movespeed += argument0
            else
                other.movespeed += argument1
        }
        else if (abs(image_yscale) < abs(image_xscale))
            other.movespeed -= argument0
        else
            other.movespeed -= argument1
    }
}
function scr_heatup() 
{
    global.baddiespeed += 1
    if (global.stylethreshold == 2)
        global.baddiepowerup = 1
    if (global.stylethreshold >= 2)
    {
        global.baddierage = 1
        
    }
    
}
function scr_heatdown() //gml_Script_scr_heatdown
{
    global.baddiespeed -= 1
    if (global.stylethreshold != 2)
        global.baddiepowerup = 0
    if (global.stylethreshold < 2)
    {
        global.baddierage = 0
        
    }
    
    
}