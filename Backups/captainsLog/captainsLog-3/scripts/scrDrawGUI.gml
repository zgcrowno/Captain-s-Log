projectiles = scrGetProjectiles();

//Draw the skybox, enemy background sprites, projectile background sprites and HUD
draw_sprite(sprBlueSky, -1, 0, 0);

scrDrawBackgroundObjects(util.enemies);

scrDrawBackgroundObjects(projectiles);

draw_sprite(sprPixelHud, -1, 0, 0);

show_debug_message(hud.thrustersPortHPLowerBound);
            
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
               
//Draw the thrusters player sprite
draw_sprite(player.sprite_index, 
            -1, 
            hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2), 
            hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2));
            
//Draw the thrusters player sprite border
//Port
draw_line(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - (player.sprite_height / 2),
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + (player.sprite_height / 2));
//Starboard
draw_line(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - (player.sprite_height / 2),
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + (player.sprite_height / 2));
//Bow
draw_line(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - (player.sprite_height / 2),
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - (player.sprite_height / 2));
//Stern
draw_line(hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + (player.sprite_height / 2),
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + (player.sprite_height / 2));
            
//Draw the shields player sprite
draw_sprite(player.sprite_index, 
            -1, 
            hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2), 
            hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2));

//Draw the thrustersPortHP and thrustersPortPP bars
draw_healthbar(hud.thrustersPortHPLeftBound, 
               hud.thrustersPortHPUpperBound, 
               hud.thrustersPortHPRightBound, 
               hud.thrustersPortHPLowerBound, 
               (player.currentHPThrustersPort / player.maxHPThrustersPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersPortPPLeftBound, 
               hud.thrustersPortPPUpperBound, 
               hud.thrustersPortPPRightBound, 
               hud.thrustersPortPPLowerBound, 
               (player.currentPPThrustersPort / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersStarboardHP and thrustersStarboardPP bars
draw_healthbar(hud.thrustersStarboardHPLeftBound, 
               hud.thrustersStarboardHPUpperBound, 
               hud.thrustersStarboardHPRightBound, 
               hud.thrustersStarboardHPLowerBound, 
               (player.currentHPThrustersStarboard / player.maxHPThrustersStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersStarboardPPLeftBound, 
               hud.thrustersStarboardPPUpperBound, 
               hud.thrustersStarboardPPRightBound, 
               hud.thrustersStarboardPPLowerBound, 
               (player.currentPPThrustersStarboard / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersBowHP and thrustersBowPP bars
draw_healthbar(hud.thrustersBowHPLeftBound, 
               hud.thrustersBowHPUpperBound, 
               hud.thrustersBowHPRightBound, 
               hud.thrustersBowHPLowerBound, 
               (player.currentHPThrustersBow / player.maxHPThrustersBow) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersBowPPLeftBound, 
               hud.thrustersBowPPUpperBound, 
               hud.thrustersBowPPRightBound, 
               hud.thrustersBowPPLowerBound, 
               (player.currentPPThrustersBow / player.requiredPPThrusters) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the thrustersSternHP and thrustersSternPP bars
draw_healthbar(hud.thrustersSternHPLeftBound, 
               hud.thrustersSternHPUpperBound, 
               hud.thrustersSternHPRightBound, 
               hud.thrustersSternHPLowerBound, 
               (player.currentHPThrustersStern / player.maxHPThrustersStern) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.thrustersSternPPLeftBound, 
               hud.thrustersSternPPUpperBound, 
               hud.thrustersSternPPRightBound, 
               hud.thrustersSternPPLowerBound, 
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
draw_healthbar(hud.shieldsPortHPLeftBound, 
               hud.shieldsPortHPUpperBound, 
               hud.shieldsPortHPRightBound, 
               hud.shieldsPortHPLowerBound, 
               (player.currentHPShieldsPort / player.maxHPShieldsPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsPortPPLeftBound, 
               hud.shieldsPortPPUpperBound, 
               hud.shieldsPortPPRightBound, 
               hud.shieldsPortPPLowerBound, 
               (player.currentPPShieldsPort / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsStarboardHP and shieldsStarboardPP bars
draw_healthbar(hud.shieldsStarboardHPLeftBound, 
               hud.shieldsStarboardHPUpperBound, 
               hud.shieldsStarboardHPRightBound, 
               hud.shieldsStarboardHPLowerBound, 
               (player.currentHPShieldsStarboard / player.maxHPShieldsStarboard) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsStarboardPPLeftBound, 
               hud.shieldsStarboardPPUpperBound, 
               hud.shieldsStarboardPPRightBound, 
               hud.shieldsStarboardPPLowerBound, 
               (player.currentPPShieldsStarboard / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsBowHP and shieldsBowPP bars
draw_healthbar(hud.shieldsBowHPLeftBound, 
               hud.shieldsBowHPUpperBound, 
               hud.shieldsBowHPRightBound, 
               hud.shieldsBowHPLowerBound, 
               (player.currentHPShieldsBow / player.maxHPShieldsBow) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsBowPPLeftBound, 
               hud.shieldsBowPPUpperBound, 
               hud.shieldsBowPPRightBound, 
               hud.shieldsBowPPLowerBound, 
               (player.currentPPShieldsBow / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);

//Draw the shieldsSternHP and shieldsSternPP bars
draw_healthbar(hud.shieldsSternHPLeftBound, 
               hud.shieldsSternHPUpperBound, 
               hud.shieldsSternHPRightBound, 
               hud.shieldsSternHPLowerBound, 
               (player.currentHPShieldsStern / player.maxHPShieldsStern) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_healthbar(hud.shieldsSternPPLeftBound, 
               hud.shieldsSternPPUpperBound, 
               hud.shieldsSternPPRightBound, 
               hud.shieldsSternPPLowerBound, 
               (player.currentPPShieldsStern / player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
               
//Draw Target Info
scrDrawTargetInfo();

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
scrDrawActionQueue(player.target);

//Draw the state-dependent command prompts
scrDrawCommandPrompts();
