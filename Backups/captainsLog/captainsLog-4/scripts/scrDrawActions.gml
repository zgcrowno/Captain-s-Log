player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud, 0);

show_debug_message("thrustersPort: " + string(player.thrustersPort));
show_debug_message("touchedTimeline: " + string(player.touchedTimeline));
if(player.actionMap[? "Thrusters Port"] > 0) {
    draw_text(hud.consoleLeftBound + string_width("Console:  /  "), hud.consoleLowerBound - string_height("Something"), "Thrusters");
}
