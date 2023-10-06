draw_set_color(c_white)
draw_self()
draw_sprite(sprite_index, 1, x, y)
draw_set_halign(fa_center)
if drawing
{
    draw_text(x, (y - 150), highscore)
    draw_text(x, (y - 200), (secret_count + " OF 3 SECRET"))
    draw_sprite((toppin[0] ? spr_pizzakinshroom : spr_pizzakinshroom_pause), -1, (x - 75), (y - 100))
    draw_sprite((toppin[1] ? spr_pizzakincheese : spr_pizzakincheese_pause), -1, (x - 35), (y - 100))
    draw_sprite((toppin[2] ? spr_pizzakintomato : spr_pizzakintomato_pause), -1, x, (y - 100))
    draw_sprite((toppin[3] ? spr_pizzakinsausage : spr_pizzakinsausage_pause), -1, (x + 35), (y - 100))
    draw_sprite((toppin[4] ? spr_pizzakinpineapple : spr_pizzakinpineapple_pause), -1, (x + 75), (y - 100))
}