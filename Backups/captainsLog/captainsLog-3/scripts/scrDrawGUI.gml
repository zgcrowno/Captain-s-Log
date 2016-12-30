//Draw the overall HP bar
draw_healthbar(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 8), 
               hud.aggregateUpperBound + ((hud.aggregateLowerBound - hud.aggregateUpperBound) / 8), 
               hud.aggregateRightBound - ((hud.aggregateRightBound - hud.aggregateLeftBound) / 8), 
               hud.aggregateUpperBound + ((hud.aggregateLowerBound - hud.aggregateUpperBound) / 8) + 15, 
               (player.currentHP / player.maxHP) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               0, 
               true, 
               true);

//Draw the overall PP bar
draw_healthbar(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 8), 
               hud.aggregateUpperBound + ((hud.aggregateLowerBound - hud.aggregateUpperBound) / 8) + 15, 
               hud.aggregateRightBound - ((hud.aggregateRightBound - hud.aggregateLeftBound) / 8), 
               hud.aggregateUpperBound + ((hud.aggregateLowerBound - hud.aggregateUpperBound) / 8) + 30,
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
draw_healthbar(hud.gunsLeftBound + ((hud.gunsRightBound - hud.gunsLeftBound) / 6), 
               hud.gunsUpperBound + ((hud.gunsLowerBound - hud.gunsUpperBound) / 6), 
               hud.gunsRightBound - ((hud.gunsRightBound - hud.gunsLeftBound) / 6), 
               hud.gunsLowerBound - ((hud.gunsLowerBound - hud.gunsUpperBound) / 6), 
               (player.currentPPGuns / player.requiredPPGuns) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);

//Draw the cannonPP bar
draw_healthbar(hud.cannonLeftBound + ((hud.cannonRightBound - hud.cannonLeftBound) / 6), 
               hud.cannonUpperBound + ((hud.cannonLowerBound - hud.cannonUpperBound) / 6), 
               hud.cannonRightBound - ((hud.cannonRightBound - hud.cannonLeftBound) / 6), 
               hud.cannonLowerBound - ((hud.cannonLowerBound - hud.cannonUpperBound) / 6), 
               (player.currentPPCannon / player.requiredPPCannon) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               0, 
               true, 
               true);
               
//Draw lines from enemies to respective designations in commands screen
if(player.currentState == player.targetState) {
    for(i = 0; i < array_length_1d(player.enemies); i++) {
        draw_line(player.enemies[i].x, player.enemies[i].y, hud.playAreaLeftBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_black);
        draw_line(hud.playAreaLeftBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2), hud.commandsRightBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_white);
    }
}

//Draw Screen Titles
draw_text(hud.thrustersLeftBound, hud.thrustersUpperBound, "Thrusters:");
draw_text(hud.shieldsLeftBound, hud.shieldsUpperBound, "Shields:");
draw_text(hud.commandsLeftBound, hud.commandsUpperBound, "Commands:");
draw_text(hud.consoleLeftBound, hud.consoleUpperBound, "Console:");
draw_text(hud.targetLeftBound, hud.targetUpperBound, "Target:");
draw_text(hud.gunsLeftBound, hud.gunsUpperBound, "Guns:");
draw_text(hud.cannonLeftBound, hud.cannonUpperBound, "Cannon:");
draw_text(hud.activeLeftBound, hud.activeUpperBound, "Active:");
draw_text(hud.passiveLeftBound, hud.passiveUpperBound, "Passive:");
draw_text(hud.aggregateLeftBound, hud.aggregateUpperBound, "Aggregate:");

//Draw Target Info
if(player.target != noone) {
    //Draw the target image
    draw_sprite(player.target.sprite_index, player.target.image_index, hud.targetRightBound - ((hud.targetLowerBound - hud.targetUpperBound) / 2), hud.targetLowerBound - ((hud.targetLowerBound - hud.targetUpperBound) / 2));
} else {
    for(j = hud.targetLowerBound; j > hud.targetUpperBound; j--) {
        draw_set_color(choose(0, 16777215));
        draw_line(hud.targetLeftBound, j, hud.targetRightBound, j);
    }
    draw_set_color(c_white);
}

//Draw Aggregate Info
draw_text(hud.aggregateLeftBound, hud.aggregateLowerBound - (6 * string_height("Something")), "Thrusters: " + string(player.percentPPThrusters) + "%");
draw_text(hud.aggregateLeftBound, hud.aggregateLowerBound - (5 * string_height("Something")), "Shields: " + string(player.percentPPShields) + "%");
draw_text(hud.aggregateLeftBound, hud.aggregateLowerBound - (4 * string_height("Something")), "Guns: " + string(player.percentPPGuns) + "%");
draw_text(hud.aggregateLeftBound, hud.aggregateLowerBound - (3 * string_height("Something")), "Cannon: " + string(player.percentPPCannon) + "%");
draw_text(hud.aggregateLeftBound, hud.aggregateLowerBound - (2 * string_height("Something")), "Active: " + string(player.percentPPActive) + "%");
draw_text(hud.aggregateLeftBound, hud.aggregateLowerBound - string_height("Something"), "Passive: " + string(player.percentPPPassive) + "%");

for(i = player.actionMapDisplaySize; i > 0; i--) {
    if(player.actionMap[? "Thrusters Port"] > 0
       || player.actionMap[? "Thrusters Starboard"] > 0
       || player.actionMap[? "Thrusters Bow"] > 0
       || player.actionMap[? "Thrusters Stern"] > 0
       || player.actionMap[? "Thrusters Count"] > 0
       || player.actionMap[? "Thrusters Clock"] > 0) {
        draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "Thrusters:");
        i--;
        if(player.actionMap[? "Thrusters Port"] > 0) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Port: " + string(player.actionMap[? "Thrusters Port"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Starboard"] > 0) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Starboard: " + string(player.actionMap[? "Thrusters Starboard"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Bow"] > 0) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Bow: " + string(player.actionMap[? "Thrusters Bow"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Stern"] > 0) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Stern: " + string(player.actionMap[? "Thrusters Stern"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Count"] > 0) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Count: " + string(player.actionMap[? "Thrusters Count"]));
            i--;
        }
        if(player.actionMap[? "Thrusters Clock"] > 0) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Clock: " + string(player.actionMap[? "Thrusters Clock"]));
            i--;
        }
    }
    if(player.actionMap[? "Shields Port"] == player.toActivate || player.actionMap[? "Shields Port"] == player.toDeactivate
       || player.actionMap[? "Shields Starboard"] == player.toActivate || player.actionMap[? "Shields Starboard"] == player.toDeactivate
       || player.actionMap[? "Shields Bow"] == player.toActivate || player.actionMap[? "Shields Bow"] == player.toDeactivate
       || player.actionMap[? "Shields Stern"] == player.toActivate || player.actionMap[? "Shields Stern"] == player.toDeactivate) {
        draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "Shields:");
        i--;
        if(player.actionMap[? "Shields Port"] == player.toActivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Port: Activate");
            i--;
        } else if(player.actionMap[? "Shields Port"] == player.toDeactivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Port: Cut");
            i--;
        }
        if(player.actionMap[? "Shields Starboard"] == player.toActivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Starboard: Activate");
            i--;
        } else if(player.actionMap[? "Shields Starboard"] == player.toDeactivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Starboard: Cut");
            i--;
        }
        if(player.actionMap[? "Shields Bow"] == player.toActivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Bow: Activate");
            i--;
        } else if(player.actionMap[? "Shields Bow"] == player.toDeactivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Bow: Cut");
            i--;
        }
        if(player.actionMap[? "Shields Stern"] == player.toActivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Stern: Activate");
            i--;
        } else if(player.actionMap[? "Shields Stern"] == player.toDeactivate) {
            draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "  Stern: Cut");
            i--;
        }
    }
    if(player.actionMap[? "Guns"]) {
        draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "Guns");
        i--;
    }
    if(player.actionMap[? "Cannon"]) {
        draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "Cannon");
        i--;
    }
    if(player.actionMap[? "Active"]) {
        draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "Active");
        i--;
    }
    if(player.actionMap[? "Passive"]) {
        draw_text(hud.aggregateLeftBound + ((hud.aggregateRightBound - hud.aggregateLeftBound) / 2), hud.aggregateLowerBound - (i * string_height("Something")), "Passive");
        i--;
    }
}

//Draw the state-dependent word prompts
if(player.currentState == player.initState) {
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound, "Thrusters");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + string_height("Commands: "), "Shields");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 2 * string_height("Commands: "), "Target");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 3 * string_height("Commands: "), "Guns");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 4 * string_height("Commands: "), "Cannon");
    draw_text(hud.commandsLeftBound + string_width("Commands: "), hud.commandsUpperBound + 5 * string_height("Commands: "), "Cut");
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
