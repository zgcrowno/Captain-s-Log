player = instance_find(objRiceCake, 0);
draw_set_color(c_black);
draw_set_font(fntMain);
depth = -1;

//Draw the overall HP bar
draw_healthbar(90, 1710, 520, 1730, (player.currentHP / player.maxHP) * 100, c_black, c_maroon, c_maroon, 0, true, true);

//Draw the overall PP bar
draw_healthbar(630, 1710, 1060, 1730, (player.currentPP / player.maxPP) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the thrustersPortHP and thrustersPortPP bars
draw_healthbar(20, 1790, 80, 1800, (player.currentHPThrustersPort / player.maxHPThrustersPort) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(20, 1800, 80, 1810, (player.currentPPThrustersPort / player.requiredPPThrusters) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the thrustersStarboardHP and thrustersStarboardPP bars
draw_healthbar(136, 1790, 196, 1800, (player.currentHPThrustersStarboard / player.maxHPThrustersStarboard) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(136, 1800, 196, 1810, (player.currentPPThrustersStarboard / player.requiredPPThrusters) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the thrustersBowHP and thrustersBowPP bars
draw_healthbar(78, 1765, 138, 1775, (player.currentHPThrustersBow / player.maxHPThrustersBow) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(78, 1775, 138, 1785, (player.currentPPThrustersBow / player.requiredPPThrusters) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the thrustersSternHP and thrustersSternPP bars
draw_healthbar(78, 1815, 138, 1825, (player.currentHPThrustersStern / player.maxHPThrustersStern) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(78, 1825, 138, 1835, (player.currentPPThrustersStern / player.requiredPPThrusters) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the thrustersRotatePP bar
draw_healthbar(103, 1795, 113, 1805, (player.currentPPThrustersRotate / player.requiredPPThrustersRotate) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the shieldsPortHP and shieldsPortPP bars
draw_healthbar(236, 1790, 296, 1800, (player.currentHPShieldsPort / player.maxHPShieldsPort) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(236, 1800, 296, 1810, (player.currentPPShieldsPort / player.requiredPPShields) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the shieldsStarboardHP and shieldsStarboardPP bars
draw_healthbar(352, 1790, 412, 1800, (player.currentHPShieldsStarboard / player.maxHPShieldsStarboard) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(352, 1800, 412, 1810, (player.currentPPShieldsStarboard / player.requiredPPShields) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the shieldsBowHP and shieldsBowPP bars
draw_healthbar(294, 1765, 354, 1775, (player.currentHPShieldsBow / player.maxHPShieldsBow) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(294, 1775, 354, 1785, (player.currentPPShieldsBow / player.requiredPPShields) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the shieldsSternHP and shieldsSternPP bars
draw_healthbar(294, 1815, 354, 1825, (player.currentHPShieldsStern / player.maxHPShieldsStern) * 100, c_black, c_maroon, c_maroon, 0, true, true);
draw_healthbar(294, 1825, 354, 1835, (player.currentPPShieldsStern / player.requiredPPShields) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the gunsPP bar
draw_healthbar(452, 1790, 628, 1810, (player.currentPPGuns / player.requiredPPGuns) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw the cannonPP bar
draw_healthbar(668, 1790, 844, 1810, (player.currentPPCannon / player.requiredPPCannon) * 100, c_black, c_teal, c_teal, 0, true, true);

//Draw "Commands:" and "Console:"
draw_text(0, room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Commands:");
draw_text(0, room_height - (instance_find(objHud, 0).sprite_height / 6), "Console:");

//Draw the state-dependent word prompts
if(player.currentState == player.initState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Thrusters | Shields | Guns | Cannon | Cut");
} else if(player.currentState == player.thrusterState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Port | Starboard | Bow | Stern | Rotate");
} else if(player.currentState == player.shieldState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Port | Starboard | Bow | Stern");
} else if(player.currentState == player.gunState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[Enemy Designations]");
} else if(player.currentState == player.cannonState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.cutState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Thrusters | Shields | Guns | Cannon | All");
} else if(player.currentState == player.thrusterPortState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.thrusterStarboardState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.thrusterBowState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.thrusterSternState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.thrusterRotateState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Clockwise | Counter");
} else if(player.currentState == player.thrusterRotateDegreesClockwiseState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.thrusterRotateDegreesCounterclockwiseState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "[\#]");
} else if(player.currentState == player.cutThrustersState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Port | Starboard | Bow | Stern");
} else if(player.currentState == player.cutShieldsState) {
    draw_text(string_width("Commands: "), room_height - (2 * (instance_find(objHud, 0).sprite_height) / 6), "Port | Starboard | Bow | Stern");
}
