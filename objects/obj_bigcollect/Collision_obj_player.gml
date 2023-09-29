with (instance_create(x, y, obj_smallnumber))
    number = "100"
	global.combotime = 60

global.collect += 100
scr_soundeffect(sfx_collectpizza)
create_collect(x, y, sprite_index)
instance_destroy()
