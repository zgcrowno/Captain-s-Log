global.player = instance_find(objPlayerShip, 0);

x = global.hud.consoleLeftBound;
y = global.hud.consoleLowerBound - string_height("String Height");

draw_set_color(c_white);
draw_set_font(fntMain);
draw_text(x, y, global.player.input);
