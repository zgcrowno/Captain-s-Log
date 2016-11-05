player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud2, 0);

depth = -2;
x = hud.consoleLeftBound;
y = hud.consoleLowerBound - string_height("String Height");

draw_set_color(c_white);
draw_set_font(fntMain);
draw_text(x, y, player.input);
