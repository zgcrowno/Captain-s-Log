if(player.currentState == player.initState) {
    draw_text(hud.commandsRightBound - string_width("Thrusters"), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsRightBound - string_width("Shields"), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsRightBound - string_width(util.actionMapTargetString), hud.commandsUpperBound + 2 * string_height("Commands: "), util.actionMapTargetString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapGunsString), hud.commandsUpperBound + 3 * string_height("Commands: "), util.actionMapGunsString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapCannonString), hud.commandsUpperBound + 4 * string_height("Commands: "), util.actionMapCannonString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapActiveString), hud.commandsUpperBound + 5 * string_height("Commands: "), util.actionMapActiveString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapPassiveString), hud.commandsUpperBound + 6 * string_height("Commands: "), util.actionMapPassiveString);
    draw_text(hud.commandsRightBound - string_width("Cut"), hud.commandsUpperBound + 7 * string_height("Commands: "), "Cut");
} else if(player.currentState == player.thrusterState) {
    draw_text(hud.commandsRightBound - string_width("Port"), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsRightBound - string_width("Starboard"), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsRightBound - string_width("Bow"), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsRightBound - string_width("Stern"), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsRightBound - string_width("Rotate"), hud.commandsUpperBound + 4 * string_height("Commands: "), "Rotate");
} else if(player.currentState == player.shieldState) {
    draw_text(hud.commandsRightBound - string_width("Port"), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsRightBound - string_width("Starboard"), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsRightBound - string_width("Bow"), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsRightBound - string_width("Stern"), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsRightBound - string_width("All"), hud.commandsUpperBound + 4 * string_height("Commands: "), "All");
} else if(player.currentState == player.targetState) {
    for(i = 0; i < array_length_1d(util.enemies); i++) {
        draw_text(hud.commandsRightBound - string_width(util.enemies[i].designation), hud.commandsUpperBound + (i * string_height("Commands: ")), util.enemies[i].designation);
    }
} else if(player.currentState == player.gunState) {
    draw_text(hud.commandsRightBound - string_width("Fire"), hud.commandsUpperBound, "Fire");
} else if(player.currentState == player.cannonState) {
    draw_text(hud.commandsRightBound - string_width("Fire"), hud.commandsUpperBound, "Fire");
} else if(player.currentState == player.cutState) {
    draw_text(hud.commandsRightBound - string_width("Thrusters"), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsRightBound - string_width("Shields"), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsRightBound - string_width(util.actionMapTargetString), hud.commandsUpperBound + 2 * string_height("Commands: "), util.actionMapTargetString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapGunsString), hud.commandsUpperBound + 3 * string_height("Commands: "), util.actionMapGunsString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapCannonString), hud.commandsUpperBound + 4 * string_height("Commands: "), util.actionMapCannonString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapActiveString), hud.commandsUpperBound + 5 * string_height("Commands: "), util.actionMapActiveString);
    draw_text(hud.commandsRightBound - string_width(util.actionMapPassiveString), hud.commandsUpperBound + 6 * string_height("Commands: "), util.actionMapPassiveString);
    draw_text(hud.commandsRightBound - string_width("All"), hud.commandsUpperBound + 7 * string_height("Commands: "), "All");
} else if(player.currentState == player.thrusterPortState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterStarboardState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterBowState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterSternState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterRotateState) {
    draw_text(hud.commandsRightBound - string_width("Clock"), hud.commandsUpperBound, "Clock");
    draw_text(hud.commandsRightBound - string_width("Count"), hud.commandsUpperBound + string_height("Commands: "), "Count");
} else if(player.currentState == player.thrusterRotateDegreesClockwiseState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterRotateDegreesCounterclockwiseState) {
    draw_text(hud.commandsRightBound - string_width("[\#]"), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.cutThrustersState) {
    draw_text(hud.commandsRightBound - string_width("Port"), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsRightBound - string_width("Starboard"), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsRightBound - string_width("Bow"), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsRightBound - string_width("Stern"), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsRightBound - string_width("Rotate"), hud.commandsUpperBound + 4 * string_height("Commands: "), "Rotate");
    draw_text(hud.commandsRightBound - string_width("All"), hud.commandsUpperBound + 5 * string_height("Commands: "), "All");
} else if(player.currentState == player.cutThrustersRotateState) {
    draw_text(hud.commandsRightBound - string_width("Clock"), hud.commandsUpperBound, "Clock");
    draw_text(hud.commandsRightBound - string_width("Count"), hud.commandsUpperBound + string_height("Commands: "), "Count");
    draw_text(hud.commandsRightBound - string_width("All"), hud.commandsUpperBound + 2 * string_height("Commands: "), "All");
} else if(player.currentState == player.cutShieldsState) {
    draw_text(hud.commandsRightBound - string_width("Port"), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsRightBound - string_width("Starboard"), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsRightBound - string_width("Bow"), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsRightBound - string_width("Stern"), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsRightBound - string_width("All"), hud.commandsUpperBound + 4 * string_height("Commands: "), "All");
}
