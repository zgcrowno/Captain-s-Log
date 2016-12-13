player = instance_find(objPlayerShip, 0);
hud = instance_find(objHud, 0);

if(player.actionMap[? "Thrusters Port"] > 0) {
    draw_text(hud.consoleLeftBound + string_width("Console:  /  "), hud.consoleLowerBound - string_height("Something"), "Thrusters");
}
