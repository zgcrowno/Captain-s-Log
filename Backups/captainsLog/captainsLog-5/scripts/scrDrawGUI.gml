//Draw the overall HP bar
draw_healthbar(hud.powerLeftBound, 
               hud.powerUpperBound, 
               hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), 
               hud.powerUpperBound + ((hud.powerLowerBound - hud.powerUpperBound)), 
               (player.currentHP / player.maxHP) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);

//Draw the overall PP bar
draw_healthbar(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), 
               hud.powerUpperBound, 
               hud.powerRightBound, 
               hud.powerUpperBound + ((hud.powerLowerBound - hud.powerUpperBound)),
               (player.currentPP / player.maxPP) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersPortHP and thrustersPortPP bars
draw_healthbar(hud.thrustersLeftBound, 
               hud.thrustersUpperBound, 
               hud.thrustersLeftBound + 15, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               (player.currentHPThrustersPort / player.maxHPThrustersPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersLeftBound + 15, 
               hud.thrustersUpperBound, 
               hud.thrustersLeftBound + 30, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               (player.currentPPThrustersPort / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersStarboardHP and thrustersStarboardPP bars
draw_healthbar(hud.thrustersRightBound - 30, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersRightBound - 15, 
               hud.thrustersLowerBound, 
               (player.currentHPThrustersStarboard / player.maxHPThrustersStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersRightBound - 15, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersRightBound, 
               hud.thrustersLowerBound, 
               (player.currentPPThrustersStarboard / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersBowHP and thrustersBowPP bars
draw_healthbar(hud.thrustersRightBound - 30, 
               hud.thrustersUpperBound, 
               hud.thrustersRightBound - 15, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               (player.currentHPThrustersBow / player.maxHPThrustersBow) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersRightBound - 15, 
               hud.thrustersUpperBound, 
               hud.thrustersRightBound, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               (player.currentPPThrustersBow / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersSternHP and thrustersSternPP bars
draw_healthbar(hud.thrustersLeftBound, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersLeftBound + 15, 
               hud.thrustersLowerBound, 
               (player.currentHPThrustersStern / player.maxHPThrustersStern) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersLeftBound + 15, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersRightBound + 30, 
               hud.thrustersLowerBound, 
               (player.currentPPThrustersStern / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersRotateClockwisePP and thrustersRotateCounterclockwisePP bars
draw_healthbar(hud.thrustersRightBound - 60, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersRightBound - 45, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + 15, 
               (player.currentPPThrustersRotateClockwise / player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersLeftBound + 60, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersLeftBound + 45, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + 15, 
               (player.currentPPThrustersRotateCounterclockwise / player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsPortHP and shieldsPortPP bars
draw_healthbar(hud.shieldsLeftBound, 
               hud.shieldsUpperBound, 
               hud.shieldsLeftBound + 15, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               (player.currentHPShieldsPort / player.maxHPShieldsPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsLeftBound + 15, 
               hud.shieldsUpperBound, 
               hud.shieldsLeftBound + 30, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               (player.currentPPShieldsPort / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsStarboardHP and shieldsStarboardPP bars
draw_healthbar(hud.shieldsRightBound - 30, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               hud.shieldsRightBound - 15, 
               hud.shieldsLowerBound, 
               (player.currentHPShieldsStarboard / player.maxHPShieldsStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsRightBound - 15, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               hud.shieldsRightBound, 
               hud.shieldsLowerBound, 
               (player.currentPPShieldsStarboard / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsBowHP and shieldsBowPP bars
draw_healthbar(hud.shieldsRightBound - 30, 
               hud.shieldsUpperBound, 
               hud.shieldsRightBound - 15, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               (player.currentHPShieldsBow / player.maxHPShieldsBow) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsRightBound - 15, 
               hud.shieldsUpperBound, 
               hud.shieldsRightBound, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               (player.currentPPShieldsBow / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsSternHP and shieldsSternPP bars
draw_healthbar(hud.shieldsLeftBound, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               hud.shieldsLeftBound + 15, 
               hud.shieldsLowerBound, 
               (player.currentHPShieldsStern / player.maxHPShieldsStern) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsLeftBound + 15, 
               hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2), 
               hud.shieldsRightBound + 30, 
               hud.shieldsLowerBound, 
               (player.currentPPShieldsStern / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
               
//Draw Target Info
if(player.target != noone) {
    //Draw the target image
    draw_sprite(player.target.sprite_index, player.target.image_index, hud.targetImageRightBound - ((hud.targetImageLowerBound - hud.targetImageUpperBound) / 2), hud.targetImageLowerBound - ((hud.targetImageLowerBound - hud.targetImageUpperBound) / 2));
    
    //Draw the captain's personal information
    draw_text(hud.targetIntelLeftBound + string_width("  "), hud.targetIntelUpperBound + string_height("Something"), "Captain: " + player.target.designation);
    draw_text(hud.targetIntelLeftBound + string_width("  "), hud.targetIntelUpperBound + (2 * string_height("Something")), "HP: " + string(player.target.currentHP));
    draw_text(hud.targetIntelLeftBound + string_width("  "), hud.targetIntelUpperBound + (3 * string_height("Something")), "Age: " + string(player.target.age));
    draw_text(hud.targetIntelLeftBound + string_width("  "), hud.targetIntelUpperBound + (4 * string_height("Something")), "Temperament: " + player.target.temper);
    draw_text(hud.targetIntelLeftBound + string_width("  "), hud.targetIntelUpperBound + (5 * string_height("Something")), "Family: " + player.target.family);
} else {
    //Draw the screen static
    for(j = hud.targetImageLowerBound; j >= hud.targetImageUpperBound; j--) {
        draw_set_color(choose(c_black, c_white));
        draw_line(hud.targetImageLeftBound, j, hud.targetImageRightBound, j);
    }
    draw_set_color(c_white);
}

//Draw the gunsPP bar
draw_healthbar(hud.gunsLeftBound, 
               hud.gunsUpperBound, 
               hud.gunsRightBound, 
               hud.gunsLowerBound, 
               (player.currentPPGuns / player.requiredPPGuns) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the cannonPP bar
draw_healthbar(hud.cannonLeftBound, 
               hud.cannonUpperBound, 
               hud.cannonRightBound, 
               hud.cannonLowerBound, 
               (player.currentPPCannon / player.requiredPPCannon) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
               
//Draw the activePP bar
draw_healthbar(hud.activeLeftBound, 
               hud.activeUpperBound, 
               hud.activeRightBound, 
               hud.activeLowerBound, 
               (player.currentPPActive / player.requiredPPActive) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the passivePP bar
draw_healthbar(hud.passiveLeftBound, 
               hud.passiveUpperBound, 
               hud.passiveRightBound, 
               hud.passiveLowerBound, 
               (player.currentPPPassive / player.requiredPPPassive) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
               
//Draw lines from enemies to respective designations in commands screen
if(player.currentState == player.targetState) {
    for(i = 0; i < array_length_1d(player.enemies); i++) {
        draw_line(player.enemies[i].x, player.enemies[i].y, hud.radarLeftBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_black);
        draw_line(hud.radarLeftBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2), hud.commandsRightBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_white);
    }
}

//Draw percentage info
draw_text(hud.thrustersPercentRightBound - string_width(string(player.percentPPThrusters) + "%"), hud.thrustersPercentLowerBound - string_height("Something"), string(player.percentPPThrusters) + "%");
draw_text(hud.shieldsPercentRightBound - string_width(string(player.percentPPShields) + "%"), hud.shieldsPercentLowerBound - string_height("Something"), string(player.percentPPShields) + "%");
draw_text(hud.gunsPercentLeftBound - string_width(string(player.percentPPGuns + "%")), hud.gunsPercentLowerBound - string_height("Something"), string(player.percentPPGuns) + "%");
draw_text(hud.cannonPercentLeftBound - string_width(string(player.percentPPCannon + "%")), hud.cannonPercentLowerBound - string_height("Something"), string(player.percentPPCannon) + "%");
draw_text(hud.activePercentLeftBound - string_width(string(player.percentPPActive + "%")), hud.activePercentLowerBound - string_height("Something"), string(player.percentPPActive) + "%");
draw_text(hud.passivePercentLeftBound - string_width(string(player.percentPPPassive + "%")), hud.passivePercentLowerBound - string_height("Something"), string(player.percentPPPassive) + "%");

for(i = player.actionMapDisplaySize; i > 0; i--) {
    if(player.actionMap[? "Thrusters Port"] > 0
       || player.actionMap[? "Thrusters Starboard"] > 0
       || player.actionMap[? "Thrusters Bow"] > 0
       || player.actionMap[? "Thrusters Stern"] > 0
       || player.actionMap[? "Thrusters Count"] > 0
       || player.actionMap[? "Thrusters Clock"] > 0) {
        draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "Thrusters:");
        i--;
        if(player.actionMap[? "Thrusters Port"] > 0) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Port: " + string(player.actionMap[? "Thrusters Port"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Starboard"] > 0) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Starboard: " + string(player.actionMap[? "Thrusters Starboard"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Bow"] > 0) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Bow: " + string(player.actionMap[? "Thrusters Bow"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Stern"] > 0) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Stern: " + string(player.actionMap[? "Thrusters Stern"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Count"] > 0) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Count: " + string(player.actionMap[? "Thrusters Count"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Clock"] > 0) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Clock: " + string(player.actionMap[? "Thrusters Clock"]));
            i--;
        }
    }
    if(player.actionMap[? "Shields Port"] == player.toActivate || player.actionMap[? "Shields Port"] == player.toDeactivate
       || player.actionMap[? "Shields Starboard"] == player.toActivate || player.actionMap[? "Shields Starboard"] == player.toDeactivate
       || player.actionMap[? "Shields Bow"] == player.toActivate || player.actionMap[? "Shields Bow"] == player.toDeactivate
       || player.actionMap[? "Shields Stern"] == player.toActivate || player.actionMap[? "Shields Stern"] == player.toDeactivate) {
        draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "Shields:");
        i--;
        if(player.actionMap[? "Shields Port"] == player.toActivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Port: Activate");
            i--;
        } else if(player.actionMap[? "Shields Port"] == player.toDeactivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Port: Cut");
            i--;
        }
        if(player.actionMap[? "Shields Starboard"] == player.toActivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Starboard: Activate");
            i--;
        } else if(player.actionMap[? "Shields Starboard"] == player.toDeactivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Starboard: Cut");
            i--;
        }
        if(player.actionMap[? "Shields Bow"] == player.toActivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Bow: Activate");
            i--;
        } else if(player.actionMap[? "Shields Bow"] == player.toDeactivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Bow: Cut");
            i--;
        }
        if(player.actionMap[? "Shields Stern"] == player.toActivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Stern: Activate");
            i--;
        } else if(player.actionMap[? "Shields Stern"] == player.toDeactivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Stern: Cut");
            i--;
        }
    }
    if(player.actionMap[? "Guns"]) {
        draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "Guns");
        i--;
    }
    if(player.actionMap[? "Cannon"]) {
        draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "Cannon");
        i--;
    }
    if(player.actionMap[? "Active"]) {
        draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "Active");
        i--;
    }
    if(player.actionMap[? "Passive"] == player.toActivate || player.actionMap[? "Passive"] == player.toDeactivate) {
        draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "Passive");
        i--;
        if(player.actionMap[? "Passive"] == player.toActivate) {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Activate");
            i--;
        } else {
            draw_text(hud.powerLeftBound + ((hud.powerRightBound - hud.powerLeftBound) / 2), hud.powerLowerBound - (i * string_height("Something")), "  Cut");
            i--;
        }
    }
}

//Draw the state-dependent word prompts
if(player.currentState == player.initState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Target");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Guns");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "Cannon");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 5 * string_height("Commands: "), "Active");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 6 * string_height("Commands: "), "Passive");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 7 * string_height("Commands: "), "Cut");
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
} else if(player.currentState == player.targetState) {
    for(i = 0; i < array_length_1d(player.enemies); i++) {
        draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + (i * string_height("Commands: ")), player.enemies[i].designation);
    }
} else if(player.currentState == player.gunState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Fire");
} else if(player.currentState == player.cannonState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Fire");
} else if(player.currentState == player.cutState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Target");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Guns");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "Cannon");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 5 * string_height("Commands: "), "Active");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 6 * string_height("Commands: "), "Passive");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 7 * string_height("Commands: "), "All");
} else if(player.currentState == player.thrusterPortState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterStarboardState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterBowState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterSternState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "[\#]");
} else if(player.currentState == player.thrusterRotateState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Clock");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Count");
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
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Clock");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Count");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "All");
} else if(player.currentState == player.cutShieldsState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Port");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Starboard");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Bow");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Stern");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "All");
}
