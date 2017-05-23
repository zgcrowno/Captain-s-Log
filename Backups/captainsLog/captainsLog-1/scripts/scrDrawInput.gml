x = global.hud.consoleLeftBound;
y = global.hud.consoleLowerBound - string_height(global.util.heightString);

draw_set_color(c_white);
draw_set_font(fntMain);
draw_text(x, y, global.input);
