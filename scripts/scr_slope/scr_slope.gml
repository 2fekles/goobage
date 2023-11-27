function scr_slope()
{
	y++;
	var curslope = 0
var slope = instance_place(x, y, obj_slope);
var slope2 = instance_place(x, y, obj_slopePlatform);
if slope
var curslope = slope
else if slope2
var curslope = slope2
if (curslope)
{
	with (curslope)
	{
		var object_side = 0;
		var slope_start = 0;
		var slope_end = 0;
		if (image_xscale > 0)
		{
			object_side = other.bbox_right;
			slope_start = bbox_bottom;
			slope_end = bbox_top;
		}
		else
		{
			object_side = other.bbox_left;
			slope_start = bbox_top;
			slope_end = bbox_bottom;
		}
		var m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left);
		curslope = slope_start - round(m * (object_side - bbox_left));
		if (other.bbox_bottom >= curslope)
		{
			other.y--;
			return 1;
		}
	}
}
y--;
return 0;
}

