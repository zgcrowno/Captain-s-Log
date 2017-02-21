//Draw the skybox, enemy background sprites and HUD
draw_sprite(sprBlueSky, -1, 0, 0);
show_debug_message(player.image_angle);

for(i = 0; i < array_length_1d(player.enemies); i++) {
    if(scrCanSeeEnemy(player, player.enemies[i])) {
        distance = point_distance(player.x, player.y, player.enemies[i].x, player.enemies[i].y) / sprite_get_width(sprGridBox);
        if(player.image_angle % 360 == 0) {
            draw_sprite_ext(player.enemies[i].backgroundSprite,
                            player.enemies[i].image_angle + (player.image_angle / 90), 
                            hud.primeMeridian - ((((player.x - player.enemies[i].x) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(player.image_angle % 270 == 0) {
            draw_sprite_ext(player.enemies[i].backgroundSprite,
                            player.enemies[i].image_angle + (player.image_angle / 90), 
                            hud.primeMeridian + ((((player.y + player.enemies[i].y) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(player.image_angle % 180 == 0) {
            draw_sprite_ext(player.enemies[i].backgroundSprite,
                            player.enemies[i].image_angle + (player.image_angle / 90), 
                            hud.primeMeridian - ((((player.x + player.enemies[i].x) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(player.image_angle % 90 == 0) {
            draw_sprite_ext(player.enemies[i].backgroundSprite,
                            player.enemies[i].image_angle + (player.image_angle / 90), 
                            hud.primeMeridian + ((((player.y - player.enemies[i].y) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         }
    }
}

draw_sprite(sprPixelHud, -1, 0, 0);
            
//Draw the typing prompt
draw_sprite(sprTypingPrompt, 
            -1, 
            hud.consoleLeftBound + string_width(instance_find(objPlayerShip, 0).input), 
            hud.consoleLowerBound - string_height("Something"));

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
               hud.thrustersLeftBound + 30, 
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
               hud.shieldsLeftBound + 30, 
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
    draw_sprite(player.target.sprite_index, player.target.image_index, hud.targetImageRightBound - ((hud.targetImageRightBound - hud.targetImageLeftBound) / 2), hud.targetImageLowerBound - ((hud.targetImageLowerBound - hud.targetImageUpperBound) / 2));
    
    //Draw the captain's personal information
    draw_text(hud.targetIntelLeftBound, hud.targetIntelUpperBound + string_height("Something"), "Captain: " + player.target.designation);
    draw_text(hud.targetIntelLeftBound, hud.targetIntelUpperBound + (2 * string_height("Something")), "HP: " + string(player.target.currentHP));
    draw_text(hud.targetIntelLeftBound, hud.targetIntelUpperBound + (3 * string_height("Something")), "Age: " + string(player.target.age));
    draw_text(hud.targetIntelLeftBound, hud.targetIntelUpperBound + (4 * string_height("Something")), "Temperament: " + player.target.temper);
    draw_text(hud.targetIntelLeftBound, hud.targetIntelUpperBound + (5 * string_height("Something")), "Family: " + player.target.family);
} else {
    //To Do: Display "N/A" or something to that effect
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
        draw_line(player.enemies[i].x + view_xport[1], player.enemies[i].y + view_yport[1], view_xport[1], hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_black);
        draw_line(view_xport[1], hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2), hud.commandsRightBound, hud.commandsUpperBound + (i * string_height("Commands: ")) + (string_height("Commands: ") / 2));
        draw_set_color(c_white);
    }
}

//Draw percentage info
draw_text(hud.thrustersPercentRightBound - string_width(string(player.percentPPThrusters)), hud.thrustersPercentLowerBound - string_height("Something"), string(player.percentPPThrusters));
draw_text(hud.shieldsPercentRightBound - string_width(string(player.percentPPShields)), hud.shieldsPercentLowerBound - string_height("Something"), string(player.percentPPShields));
draw_text(hud.gunsPercentRightBound - string_width(string(player.percentPPGuns)), hud.gunsPercentLowerBound - string_height("Something"), string(player.percentPPGuns));
draw_text(hud.cannonPercentRightBound - string_width(string(player.percentPPCannon)), hud.cannonPercentLowerBound - string_height("Something"), string(player.percentPPCannon));
draw_text(hud.activePercentRightBound - string_width(string(player.percentPPActive)), hud.activePercentLowerBound - string_height("Something"), string(player.percentPPActive));
draw_text(hud.passivePercentRightBound - string_width(string(player.percentPPPassive)), hud.passivePercentLowerBound - string_height("Something"), string(player.percentPPPassive));

//Display actionQueue
if(!ds_list_empty(player.actionQueue)) {
    for(i = 0; i < ds_list_size(player.actionQueue); i++) {
        draw_text(hud.aqOneLeftBound, hud.aqOneUpperBound - ((ds_list_size(player.actionQueue) - (i + 1)) * 57), ds_list_find_value(player.actionQueue, i));
    }
}

//Draw the state-dependent word prompts
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
    for(i = 0; i < array_length_1d(player.enemies); i++) {
        draw_text(hud.commandsRightBound - string_width(player.enemies[i].designation), hud.commandsUpperBound + (i * string_height("Commands: ")), player.enemies[i].designation);
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
