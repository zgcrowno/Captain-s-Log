projectiles = scrGetProjectiles();
gridBoxes = scrGetGridBoxes();

//Draw the skybox, enemy background sprites, projectile background sprites and HUD
draw_sprite(sprBlueSky, -1, 0, 0);

scrDrawBackgroundObjects(util.enemies);

scrDrawBackgroundObjects(projectiles);

draw_sprite(sprPixelHud, -1, 0, 0);
            
//Draw the typing prompt
draw_sprite(sprTypingPrompt, 
            -1, 
            hud.consoleLeftBound + string_width(instance_find(objPlayerShip, 0).input), 
            hud.consoleLowerBound - string_height("Something") - 3);

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
               
//Draw the thrusters player sprite
draw_sprite(player.sprite_index, 
            -1, 
            hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - (((sprite_get_bbox_right(player.sprite_index) - sprite_get_bbox_left(player.sprite_index)) / 2) - sprite_get_xoffset(player.sprite_index)), 
            hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - (((sprite_get_bbox_bottom(player.sprite_index) - sprite_get_bbox_top(player.sprite_index)) / 2) - sprite_get_yoffset(player.sprite_index)));
            show_debug_message(sprite_get_bbox_bottom(player.sprite_index) - sprite_get_bbox_top(player.sprite_index));
            
//Draw the shields player sprite
draw_sprite(player.sprite_index, 
            -1, 
            hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2), 
            hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2));

//Draw the thrustersPortHP and thrustersPortPP bars, and the borders thereof (and lines thereto)
scrDrawThrustersPortInfo();

//Draw the thrustersStarboardHP and thrustersStarboardPP bars, and the borders thereof (and lines thereto)
scrDrawThrustersStarboardInfo();

//Draw the thrustersBowHP and thrustersBowPP bars, and the borders thereof (and lines thereto)
scrDrawThrustersBowInfo();

//Draw the thrustersSternHP and thrustersSternPP bars, and the borders thereof (and lines thereto)
scrDrawThrustersSternInfo();

//Draw the thrustersRotateClockwisePP and thrustersRotateCounterclockwisePP bars
scrDrawThrustersRotateClockwiseInfo();
scrDrawThrustersRotateCounterclockwiseInfo();

//Draw the shieldsPortHP and shieldsPortPP bars, and the borders thereof (and lines thereto)
scrDrawShieldsPortInfo();

//Draw the shieldsStarboardHP and shieldsStarboardPP bars, and the borders thereof (and lines thereto)
scrDrawShieldsStarboardInfo();

//Draw the shieldsBowHP and shieldsBowPP bars, and the borders thereof (and lines thereto)
scrDrawShieldsBowInfo();

//Draw the shieldsSternHP and shieldsSternPP bars, and the borders thereof (and lines thereto)
scrDrawShieldsSternInfo();
               
//Draw Target Info
scrDrawTargetInfo();

//Draw gridBox numbers
scrDrawGridBoxNumbers();

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
scrDrawTargetLines();

//Draw percentage info
scrDrawPercentageInfo();

//Draw player actionQueue
scrDrawActionQueue(player);

//Draw target actionQueue
if(player.target != noone) {
    scrDrawActionQueue(player.target);
}

//Draw the state-dependent command prompts
scrDrawCommandPrompts();
