draw_set_color(c_red);

for(var i = 0; i < ds_list_size(global.util.log); i++) {
    x = global.hud.consoleLeftBound + ((global.hud.consoleRightBound - global.hud.consoleLeftBound) / 2)
    y = global.hud.consoleLowerBound - ((i + 1) * string_height(global.util.heightString));
    draw_text(x, y, global.util.log[| i]);
}

draw_set_color(c_white);
