function scr_savescore(argument0) //gml_Script_scr_savescore
{
	
    if (global.collect >= global.srank)
    {
        global.rank = "s"
    }
    else if (global.collect  > global.arank)
        global.rank = "a"
    else if (global.collect > global.brank)
        global.rank = "b"
    else if (global.collect > global.crank)
        global.rank = "c"
    else
        global.rank = "d"
    scr_soundeffect(mu_rankd)
    audio_stop_sound(mu_pizzatime)
    audio_stop_sound(mu_snickchallenge)
    audio_stop_sound(mu_snickchallengeend)
    ini_open("saveData.ini")
    if (ini_read_real("Highscore", argument0, 0) < global.collect)
        ini_write_real("Highscore", argument0, global.collect)
    if (ini_read_real("Treasure", argument0, 0) == 0)
        ini_write_real("Treasure", argument0, global.treasure)
    if (global.secretfound > 3)
        global.secretfound = 3
    if (ini_read_real("Secret", argument0, 0) < global.secretfound)
        ini_write_string("Secret", argument0, global.secretfound)
    if (ini_read_real("Toppin", (argument0 + "1"), 0) == 0)
        ini_write_real("Toppin", (argument0 + "1"), global.shroomfollow)
    if (ini_read_real("Toppin", (argument0 + "2"), 0) == 0)
        ini_write_real("Toppin", (argument0 + "2"), global.cheesefollow)
    if (ini_read_real("Toppin", (argument0 + "3"), 0) == 0)
        ini_write_real("Toppin", (argument0 + "3"), global.tomatofollow)
    if (ini_read_real("Toppin", (argument0 + "4"), 0) == 0)
        ini_write_real("Toppin", (argument0 + "4"), global.sausagefollow)
    if (ini_read_real("Toppin", (argument0 + "5"), 0) == 0)
        ini_write_real("Toppin", (argument0 + "5"), global.pineapplefollow)
    ini_write_string("Ranks", argument0, global.rank)
    ini_close()
}


function hurt_player(argument0)
{
	with (argument0.id)
{
    if ((state == 23 || state == 24 || state == 17) && cutscene == 0)
    {
    }
    else if (state == 26 && hurted == 0)
    {
    }
    else if (state == 14)
    {
    }
    else if (state == 1)
    {
    }
    else if (state == 12 || state == 13)
    {
    }
    else if (state != 72 && hurted == 0 && cutscene == 0 && state != 71)
    {
        scr_soundeffect(sfx_pephurt)
        alarm[8] = 60
        alarm[7] = 120
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        movespeed = 8
        vsp = -5
        timeuntilhpback = 300
        instance_create(x, y, obj_spikehurteffect)
        state = 72
        image_index = 0
        flash = 1
        if (character == "S" && global.collect == 0)
        {
            state = 54
            sprite_index = spr_deathstart
        }
        if (shotgunAnim == 0 && character == "P")
        {
            global.hurtcounter += 1
            if (character == "P")
            {
                if (global.collect > 100)
                    global.collect -= 100
                else
                    global.collect = 0
            }
            if (global.collect != 0)
            {
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
            }
        }
        else if (character == "P")
        {
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_shotgunback
            if (backupweapon == 1)
                backupweapon = 0
            else
                shotgunAnim = 0
        }
        if (character == "S")
        {
            if (global.collect > 0)
            {
                global.collect = 0
                repeat (10)
                    instance_create(x, y, obj_pizzaloss)
            }
        }
    }
}

}
function get_control_string(argument0)
{
    switch argument0
    {
        case 27:
            return "Escape";
        case 112:
            return "F1";
        case 113:
            return "F2";
        case 114:
            return "F3";
        case 115:
            return "F4";
        case 116:
            return "F5";
        case 117:
            return "F6";
        case 118:
            return "F7";
        case 119:
            return "F8";
        case 120:
            return "F9";
        case 121:
            return "F10";
        case 122:
            return "F11";
        case 123:
            return "F12";
        case 44:
            return "Print Screen";
        case 19:
            return "Pause";
        case 49:
            return "[1]";
        case 50:
            return "[2]";
        case 51:
            return "[3]";
        case 52:
            return "[4]";
        case 53:
            return "[5]";
        case 54:
            return "[6]";
        case 55:
            return "[7]";
        case 56:
            return "[8]";
        case 57:
            return "[9]";
        case 48:
            return "[0]";
        case 8:
            return "Backspace";
        case 45:
            return "Insert";
        case 36:
            return "Home";
        case 33:
            return "Page Up";
        case 9:
            return "Tab";
        case 81:
            return "Q";
        case 87:
            return "W";
        case 69:
            return "E";
        case 82:
            return "R";
        case 84:
            return "T";
        case 89:
            return "Y";
        case 85:
            return "U";
        case 73:
            return "I";
        case 79:
            return "O";
        case 80:
            return "P";
        case 35:
            return "End";
        case 34:
            return "Page Down";
        case 103:
            return "Num 7";
        case 104:
            return "Num 8";
        case 105:
            return "Num 9";
        case 43:
            return "[+]";
        case 65:
            return "A";
        case 83:
            return "S";
        case 68:
            return "D";
        case 70:
            return "F";
        case 71:
            return "G";
        case 72:
            return "H";
        case 74:
            return "J";
        case 75:
            return "K";
        case 76:
            return "L";
        case 13:
            return "Enter";
        case 100:
            return "Num 4";
        case 101:
            return "Num 5";
        case 102:
            return "Num 6";
        case 16:
            return "$";
        case 90:
            return "Z";
        case 88:
            return "X";
        case 67:
            return "C";
        case 86:
            return "V";
        case 66:
            return "B";
        case 78:
            return "N";
        case 77:
            return "M";
        case 38:
            return "&";
        case 97:
            return "Num 1";
        case 98:
            return "Num 2";
        case 99:
            return "Num 3";
        case 17:
            return "Control";
        case 18:
            return "Alt";
        case 32:
            return "%";
        case 37:
            return ")";
        case 39:
            return "*";
        case 40:
            return "(";
        case 96:
            return "Num 0";
        case 32771:
            return "X";
        case 32769:
            return "A";
        case 32770:
            return "B";
        case 32772:
            return "Y";
        case 32781:
            return "w";
        case 32782:
            return "s";
        case 32775:
            return "i";
        case 32774:
            return "p";
        case 32773:
            return "u";
        case 32776:
            return "o";
        case 32779:
            return "l";
        case 32780:
            return "r";
        case 32783:
            return "a";
        case 32784:
            return "d";
        default:
            return "[unknown]";
    }

}
function prompt_string(argument0)
{
    var font = "[spr_buttonfont]"
    return concat(font, get_control_string(argument0), "[spr_tutorialfont]");
}
function scr_transfotip(argument0) //gml_Script_scr_transfotip
{
    if instance_exists(obj_transfotip)
        instance_destroy(obj_transfotip)
    if argument0 = undefined
	argument0 = "[fa_center][fa_middle][spr_buttonfont][c_white]" + prompt_string(global.key_jump) + " Jump"
    with (instance_create(x, y, obj_transfotip))
    
        text = argument0
        
        
    
}
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
function point_in_camera(argument0, argument1, argument2) //gml_Script_point_in_camera
{
    var cam_x = camera_get_view_x(argument2)
    var cam_y = camera_get_view_y(argument2)
    var cam_w = camera_get_view_width(argument2)
    var cam_h = camera_get_view_height(argument2)
    return point_in_rectangle(argument0, argument1, cam_x, cam_y, (cam_x + cam_w), (cam_y + cam_h));
}

function point_in_camera_ext(argument0, argument1, argument2, argument3, argument4) //gml_Script_point_in_camera_ext
{
    cam_x = camera_get_view_x(argument2)
    cam_y = camera_get_view_y(argument2)
    cam_w = camera_get_view_width(argument2)
    cam_h = camera_get_view_height(argument2)
    return point_in_rectangle(argument0, argument1, (cam_x - argument3), (cam_y - argument4), ((cam_x + cam_w) + argument3), ((cam_y + cam_h) + argument4));
}
function bbox_in_camera(argument0, argument1)
{
    if is_undefined(argument1)
        argument1 = 0
    var cam_x = camera_get_view_x(argument0)
    var cam_y = camera_get_view_y(argument0)
    var cam_w = camera_get_view_width(argument0)
    var cam_h = camera_get_view_height(argument0)
    return (bbox_left < ((cam_x + cam_w) + argument1) && bbox_right > (cam_x - argument1) && bbox_top < ((cam_y + cam_h) + argument1) && bbox_bottom > (cam_y - argument1));
}

function Wave()
{
	var a4 = (argument1 - argument0) * 0.5;
	return argument0 + a4 + (sin((((current_time * 0.001) + (argument2 * argument3)) / argument2) * 6.283185307179586) * a4);
}
function concat() //gml_Script_concat
{
    var _string = ""
    for (var i = 0; i < argument_count; i++)
        _string += string(argument[i])
    return _string;
}
function tv_do_expression(argument0) //gml_Script_tv_do_expression
{
    with (obj_tv)
    {
        if (expressionsprite != argument0)
        {
            state = (250 << 0)
            expressionsprite = argument0
            sprite_index = spr_tv_whitenoise
            

        }
    }
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
    hitLag = 0
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