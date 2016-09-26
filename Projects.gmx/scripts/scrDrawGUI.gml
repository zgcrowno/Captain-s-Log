player = instance_find(objRiceCake, 0);
hud = instance_find(objHud2, 0);
draw_set_color(c_white);
draw_set_font(fntMain);
depth = -1;

//Draw the overall HP bar
draw_healthbar(hud.powerLeftBound + 50, 
               hud.powerUpperBound + 25, 
               hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2) - 25, 
               hud.powerUpperBound + 50, 
               (player.currentHP / player.maxHP) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);

//Draw the overall PP bar
draw_healthbar(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2) + 50, 
               hud.powerUpperBound + 25, hud.powerRightBound - 25, 
               hud.powerUpperBound + 50, 
               (player.currentPP / player.maxPP) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the thrustersPortHP and thrustersPortPP bars
draw_healthbar(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16), 
               hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               (player.currentHPThrustersPort / player.maxHPThrustersPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16), 
               (player.currentPPThrustersPort / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the thrustersStarboardHP and thrustersStarboardPP bars
draw_healthbar(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16), 
               hud.thrustersRightBound - ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               (player.currentHPThrustersStarboard / player.maxHPThrustersStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersRightBound - ((hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16), 
               (player.currentPPThrustersStarboard / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the thrustersBowHP and thrustersBowPP bars
draw_healthbar(hud.thrustersLeftBound + (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16), 
               hud.thrustersRightBound - (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + (2 *((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16)), 
               (player.currentHPThrustersBow / player.maxHPThrustersBow) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.thrustersLeftBound + (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + (2 *((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16)), 
               hud.thrustersRightBound - (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersUpperBound + (3 *((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16)), 
               (player.currentPPThrustersBow / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the thrustersSternHP and thrustersSternPP bars
draw_healthbar(hud.thrustersLeftBound + (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersLowerBound - (3 * ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16)), 
               hud.thrustersRightBound - (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersLowerBound - (2 *((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16)), 
               (player.currentHPThrustersStern / player.maxHPThrustersStern) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.thrustersLeftBound + (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersLowerBound - (2 *((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16)), 
               hud.thrustersRightBound - (5 * (hud.thrustersRightBound - hud.thrustersLeftBound) / 16), 
               hud.thrustersLowerBound - ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 16), 
               (player.currentPPThrustersStern / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the thrustersRotateClockwisePP and thrustersRotateCounterclockwisePP bars
draw_healthbar(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - 20, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - 5, 
               hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - 10, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + 5, 
               (player.currentPPThrustersRotateClockwise / player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);
draw_healthbar(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + 10, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - 5, 
               hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + 20, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + 5, 
               (player.currentPPThrustersRotateCounterclockwise / player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the shieldsPortHP and shieldsPortPP bars
draw_healthbar(hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2) - ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16), 
               hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) - ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               (player.currentHPShieldsPort / player.maxHPShieldsPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) - ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2) + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16), 
               (player.currentPPShieldsPort / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the shieldsStarboardHP and shieldsStarboardPP bars
draw_healthbar(hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2) - ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16), 
               hud.shieldsRightBound - ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               (player.currentHPShieldsStarboard / player.maxHPShieldsStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               hud.shieldsRightBound - ((hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2) + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16), 
               (player.currentPPShieldsStarboard / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the shieldsBowHP and shieldsBowPP bars
draw_healthbar(hud.shieldsLeftBound + (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16), 
               hud.shieldsRightBound - (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + (2 *((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16)), 
               (player.currentHPShieldsBow / player.maxHPShieldsBow) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.shieldsLeftBound + (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + (2 *((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16)), 
               hud.shieldsRightBound - (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsUpperBound + (3 *((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16)), 
               (player.currentPPShieldsBow / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the shieldsSternHP and shieldsSternPP bars
draw_healthbar(hud.shieldsLeftBound + (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsLowerBound - (3 * ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16)), 
               hud.shieldsRightBound - (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsLowerBound - (2 *((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16)), 
               (player.currentHPShieldsStern / player.maxHPShieldsStern) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);
draw_healthbar(hud.shieldsLeftBound + (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsLowerBound - (2 *((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16)), 
               hud.shieldsRightBound - (5 * (hud.shieldsRightBound - hud.shieldsLeftBound) / 16), 
               hud.shieldsLowerBound - ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 16), 
               (player.currentPPShieldsStern / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the gunsPP bar
draw_healthbar(hud.gunsLeftBound + (5 * (hud.gunsRightBound - hud.gunsLeftBound) / 16), 
               hud.gunsUpperBound + (3 *((hud.gunsLowerBound - hud.gunsUpperBound) / 16)), 
               hud.gunsRightBound - (5 * (hud.gunsRightBound - hud.gunsLeftBound) / 16), 
               hud.gunsUpperBound + (2 *((hud.gunsLowerBound - hud.gunsUpperBound) / 16)), 
               (player.currentPPGuns / player.requiredPPGuns) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the cannonPP bar
draw_healthbar(hud.cannonLeftBound + (5 * (hud.cannonRightBound - hud.cannonLeftBound) / 16), 
               hud.cannonUpperBound + (3 *((hud.cannonLowerBound - hud.cannonUpperBound) / 16)), 
               hud.cannonRightBound - (5 * (hud.cannonRightBound - hud.cannonLeftBound) / 16), 
               hud.cannonUpperBound + (2 *((hud.cannonLowerBound - hud.cannonUpperBound) / 16)), 
               (player.currentPPCannon / player.requiredPPCannon) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw "Commands:" and "Console:"
draw_text(hud.commandsLeftBound, hud.commandsUpperBound, "Commands:");
draw_text(hud.consoleLeftBound, hud.consoleUpperBound, "Console:");

//Draw the state-dependent word prompts
if(player.currentState == player.initState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Guns");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Cannon");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "Cut");
} else if(player.currentState == player.thrusterState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "Rotate");
} else if(player.currentState == player.shieldState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "All");
} else if(player.currentState == player.gunState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[Enemy]");
} else if(player.currentState == player.cannonState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Fire");
} else if(player.currentState == player.cutState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Guns");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Cannon");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "All");
} else if(player.currentState == player.thrusterPortState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterStarboardState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterBowState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterSternState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterRotateState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Clockwise");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Counter");
} else if(player.currentState == player.thrusterRotateDegreesClockwiseState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterRotateDegreesCounterclockwiseState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.cutThrustersState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "Rotate");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 5 * string_height("Commands: "), "All");
} else if(player.currentState == player.cutThrustersRotateState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Clockwise");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Counter");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "All");
} else if(player.currentState == player.cutShieldsState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "All");
}

/*************Begin drawing the coordinate system*****************/
draw_set_color(c_green);
draw_set_font(fntCoordinate);

//X-axis
draw_sprite(sprCoordinate, 0, player.x, hud.gameScreenLowerBound);
draw_text(player.x, hud.gameScreenLowerBound - 45, "0");
for(i = 0; i < hud.playAreaRightBound - player.x; i++) {
    if(i % 100 == 0) {
        draw_sprite(sprCoordinate, 0, player.x + i, hud.gameScreenLowerBound);
        draw_text(player.x + i, hud.gameScreenLowerBound - 45, i);
    } else if(i % 25 == 0) {
        draw_sprite(sprCoordinateSmall, 0, player.x + i, hud.gameScreenLowerBound);
    }
}
for(i = 0; i < player.x - hud.playAreaLeftBound; i++) {
    if(i % 100 == 0) {
        draw_sprite(sprCoordinate, 0, player.x - i, hud.gameScreenLowerBound);
        draw_text(player.x - i, hud.gameScreenLowerBound - 45, i);
    } else if(i % 25 == 0) {
        draw_sprite(sprCoordinateSmall, 0, player.x - i, hud.gameScreenLowerBound);
    }
}

//Y-axis
draw_sprite(sprCoordinateY, 0, hud.gameScreenLeftBound, player.y);
draw_text(hud.gameScreenLeftBound + 32, player.y - string_height(string(i)), "0");
for(i = 0; i < hud.playAreaLowerBound - player.y; i++) {
    if(i % 100 == 0) {
        draw_sprite(sprCoordinateY, 0, hud.gameScreenLeftBound, player.y + i);
        draw_text(hud.gameScreenLeftBound + 32, player.y + i - string_height(string(i)), i);
    } else if(i % 25 == 0) {
        draw_sprite(sprCoordinateYSmall, 0, hud.gameScreenLeftBound, player.y + i);
    }
}
for(i = 0; i < player.y - hud.playAreaUpperBound; i++) {
    if(i % 100 == 0) {
        draw_sprite(sprCoordinateY, 0, hud.gameScreenLeftBound, player.y - i);
        draw_text(hud.gameScreenLeftBound + 32, player.y - i - string_height(string(i)), i);
    } else if(i % 25 == 0) {
        draw_sprite(sprCoordinateYSmall, 0, hud.gameScreenLeftBound, player.y - i);
    }
}
/****************End drawing the coordinate system*****************/
