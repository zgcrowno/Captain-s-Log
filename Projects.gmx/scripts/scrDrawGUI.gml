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
            hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2), 
            hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2));
            
//Draw the shields player sprite
draw_sprite(player.sprite_index, 
            -1, 
            hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2), 
            hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2));

//Draw the thrustersPortHP and thrustersPortPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.thrustersPortHPLeftBound,
          hud.thrustersPortHPUpperBound,
          hud.thrustersPortHPLeftBound,
          hud.thrustersPortHPLowerBound);
draw_line(hud.thrustersPortHPRightBound,
          hud.thrustersPortHPUpperBound,
          hud.thrustersPortHPRightBound,
          hud.thrustersPortHPLowerBound);
draw_line(hud.thrustersPortHPLeftBound,
          hud.thrustersPortHPUpperBound,
          hud.thrustersPortHPRightBound,
          hud.thrustersPortHPUpperBound);
draw_line(hud.thrustersPortHPLeftBound,
          hud.thrustersPortHPLowerBound,
          hud.thrustersPortHPRightBound,
          hud.thrustersPortHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.thrustersPortPPLeftBound,
          hud.thrustersPortPPUpperBound,
          hud.thrustersPortPPLeftBound,
          hud.thrustersPortPPLowerBound);
draw_line(hud.thrustersPortPPRightBound,
          hud.thrustersPortPPUpperBound,
          hud.thrustersPortPPRightBound,
          hud.thrustersPortPPLowerBound);
draw_line(hud.thrustersPortPPLeftBound,
          hud.thrustersPortPPUpperBound,
          hud.thrustersPortPPRightBound,
          hud.thrustersPortPPUpperBound);
draw_line(hud.thrustersPortPPLeftBound,
          hud.thrustersPortPPLowerBound,
          hud.thrustersPortPPRightBound,
          hud.thrustersPortPPLowerBound);
draw_set_color(c_white);
draw_line(hud.thrustersPortPPRightBound,
          hud.thrustersPortPPUpperBound,
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) - (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2));

//Draw the thrustersStarboardHP and thrustersStarboardPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.thrustersStarboardHPLeftBound,
          hud.thrustersStarboardHPUpperBound,
          hud.thrustersStarboardHPLeftBound,
          hud.thrustersStarboardHPLowerBound);
draw_line(hud.thrustersStarboardHPRightBound,
          hud.thrustersStarboardHPUpperBound,
          hud.thrustersStarboardHPRightBound,
          hud.thrustersStarboardHPLowerBound);
draw_line(hud.thrustersStarboardHPLeftBound,
          hud.thrustersStarboardHPUpperBound,
          hud.thrustersStarboardHPRightBound,
          hud.thrustersStarboardHPUpperBound);
draw_line(hud.thrustersStarboardHPLeftBound,
          hud.thrustersStarboardHPLowerBound,
          hud.thrustersStarboardHPRightBound,
          hud.thrustersStarboardHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.thrustersStarboardPPLeftBound,
          hud.thrustersStarboardPPUpperBound,
          hud.thrustersStarboardPPLeftBound,
          hud.thrustersStarboardPPLowerBound);
draw_line(hud.thrustersStarboardPPRightBound,
          hud.thrustersStarboardPPUpperBound,
          hud.thrustersStarboardPPRightBound,
          hud.thrustersStarboardPPLowerBound);
draw_line(hud.thrustersStarboardPPLeftBound,
          hud.thrustersStarboardPPUpperBound,
          hud.thrustersStarboardPPRightBound,
          hud.thrustersStarboardPPUpperBound);
draw_line(hud.thrustersStarboardPPLeftBound,
          hud.thrustersStarboardPPLowerBound,
          hud.thrustersStarboardPPRightBound,
          hud.thrustersStarboardPPLowerBound);
draw_set_color(c_white);
draw_line(hud.thrustersStarboardHPLeftBound,
          hud.thrustersStarboardHPLowerBound,
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2) + (player.sprite_width / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2));

//Draw the thrustersBowHP and thrustersBowPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.thrustersBowHPLeftBound,
          hud.thrustersBowHPUpperBound,
          hud.thrustersBowHPLeftBound,
          hud.thrustersBowHPLowerBound);
draw_line(hud.thrustersBowHPRightBound,
          hud.thrustersBowHPUpperBound,
          hud.thrustersBowHPRightBound,
          hud.thrustersBowHPLowerBound);
draw_line(hud.thrustersBowHPLeftBound,
          hud.thrustersBowHPUpperBound,
          hud.thrustersBowHPRightBound,
          hud.thrustersBowHPUpperBound);
draw_line(hud.thrustersBowHPLeftBound,
          hud.thrustersBowHPLowerBound,
          hud.thrustersBowHPRightBound,
          hud.thrustersBowHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.thrustersBowPPLeftBound,
          hud.thrustersBowPPUpperBound,
          hud.thrustersBowPPLeftBound,
          hud.thrustersBowPPLowerBound);
draw_line(hud.thrustersBowPPRightBound,
          hud.thrustersBowPPUpperBound,
          hud.thrustersBowPPRightBound,
          hud.thrustersBowPPLowerBound);
draw_line(hud.thrustersBowPPLeftBound,
          hud.thrustersBowPPUpperBound,
          hud.thrustersBowPPRightBound,
          hud.thrustersBowPPUpperBound);
draw_line(hud.thrustersBowPPLeftBound,
          hud.thrustersBowPPLowerBound,
          hud.thrustersBowPPRightBound,
          hud.thrustersBowPPLowerBound);
draw_set_color(c_white);
draw_line(hud.thrustersBowHPLeftBound,
          hud.thrustersBowHPUpperBound,
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) - (player.sprite_height / 2));

//Draw the thrustersSternHP and thrustersSternPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.thrustersSternHPLeftBound,
          hud.thrustersSternHPUpperBound,
          hud.thrustersSternHPLeftBound,
          hud.thrustersSternHPLowerBound);
draw_line(hud.thrustersSternHPRightBound,
          hud.thrustersSternHPUpperBound,
          hud.thrustersSternHPRightBound,
          hud.thrustersSternHPLowerBound);
draw_line(hud.thrustersSternHPLeftBound,
          hud.thrustersSternHPUpperBound,
          hud.thrustersSternHPRightBound,
          hud.thrustersSternHPUpperBound);
draw_line(hud.thrustersSternHPLeftBound,
          hud.thrustersSternHPLowerBound,
          hud.thrustersSternHPRightBound,
          hud.thrustersSternHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.thrustersSternPPLeftBound,
          hud.thrustersSternPPUpperBound,
          hud.thrustersSternPPLeftBound,
          hud.thrustersSternPPLowerBound);
draw_line(hud.thrustersSternPPRightBound,
          hud.thrustersSternPPUpperBound,
          hud.thrustersSternPPRightBound,
          hud.thrustersSternPPLowerBound);
draw_line(hud.thrustersSternPPLeftBound,
          hud.thrustersSternPPUpperBound,
          hud.thrustersSternPPRightBound,
          hud.thrustersSternPPUpperBound);
draw_line(hud.thrustersSternPPLeftBound,
          hud.thrustersSternPPLowerBound,
          hud.thrustersSternPPRightBound,
          hud.thrustersSternPPLowerBound);
draw_set_color(c_white);
draw_line(hud.thrustersSternPPRightBound,
          hud.thrustersSternPPLowerBound,
          hud.thrustersLeftBound + ((hud.thrustersRightBound - hud.thrustersLeftBound) / 2),
          hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + (player.sprite_height / 2));

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

//Draw the shieldsPortHP and shieldsPortPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.shieldsPortHPLeftBound,
          hud.shieldsPortHPUpperBound,
          hud.shieldsPortHPLeftBound,
          hud.shieldsPortHPLowerBound);
draw_line(hud.shieldsPortHPRightBound,
          hud.shieldsPortHPUpperBound,
          hud.shieldsPortHPRightBound,
          hud.shieldsPortHPLowerBound);
draw_line(hud.shieldsPortHPLeftBound,
          hud.shieldsPortHPUpperBound,
          hud.shieldsPortHPRightBound,
          hud.shieldsPortHPUpperBound);
draw_line(hud.shieldsPortHPLeftBound,
          hud.shieldsPortHPLowerBound,
          hud.shieldsPortHPRightBound,
          hud.shieldsPortHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.shieldsPortPPLeftBound,
          hud.shieldsPortPPUpperBound,
          hud.shieldsPortPPLeftBound,
          hud.shieldsPortPPLowerBound);
draw_line(hud.shieldsPortPPRightBound,
          hud.shieldsPortPPUpperBound,
          hud.shieldsPortPPRightBound,
          hud.shieldsPortPPLowerBound);
draw_line(hud.shieldsPortPPLeftBound,
          hud.shieldsPortPPUpperBound,
          hud.shieldsPortPPRightBound,
          hud.shieldsPortPPUpperBound);
draw_line(hud.shieldsPortPPLeftBound,
          hud.shieldsPortPPLowerBound,
          hud.shieldsPortPPRightBound,
          hud.shieldsPortPPLowerBound);
draw_set_color(c_white);
draw_line(hud.shieldsPortPPRightBound,
          hud.shieldsPortPPUpperBound,
          hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) - (player.sprite_width / 2),
          hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2));

//Draw the shieldsStarboardHP and shieldsStarboardPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPUpperBound,
          hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPLowerBound);
draw_line(hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPUpperBound,
          hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPLowerBound);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPUpperBound,
          hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPUpperBound);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPLowerBound,
          hud.shieldsStarboardHPRightBound,
          hud.shieldsStarboardHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPUpperBound,
          hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPLowerBound);
draw_line(hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPUpperBound,
          hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPLowerBound);
draw_line(hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPUpperBound,
          hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPUpperBound);
draw_line(hud.shieldsStarboardPPLeftBound,
          hud.shieldsStarboardPPLowerBound,
          hud.shieldsStarboardPPRightBound,
          hud.shieldsStarboardPPLowerBound);
draw_set_color(c_white);
draw_line(hud.shieldsStarboardHPLeftBound,
          hud.shieldsStarboardHPLowerBound,
          hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2) + (player.sprite_width / 2),
          hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2));

//Draw the shieldsBowHP and shieldsBowPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.shieldsBowHPLeftBound,
          hud.shieldsBowHPUpperBound,
          hud.shieldsBowHPLeftBound,
          hud.shieldsBowHPLowerBound);
draw_line(hud.shieldsBowHPRightBound,
          hud.shieldsBowHPUpperBound,
          hud.shieldsBowHPRightBound,
          hud.shieldsBowHPLowerBound);
draw_line(hud.shieldsBowHPLeftBound,
          hud.shieldsBowHPUpperBound,
          hud.shieldsBowHPRightBound,
          hud.shieldsBowHPUpperBound);
draw_line(hud.shieldsBowHPLeftBound,
          hud.shieldsBowHPLowerBound,
          hud.shieldsBowHPRightBound,
          hud.shieldsBowHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.shieldsBowPPLeftBound,
          hud.shieldsBowPPUpperBound,
          hud.shieldsBowPPLeftBound,
          hud.shieldsBowPPLowerBound);
draw_line(hud.shieldsBowPPRightBound,
          hud.shieldsBowPPUpperBound,
          hud.shieldsBowPPRightBound,
          hud.shieldsBowPPLowerBound);
draw_line(hud.shieldsBowPPLeftBound,
          hud.shieldsBowPPUpperBound,
          hud.shieldsBowPPRightBound,
          hud.shieldsBowPPUpperBound);
draw_line(hud.shieldsBowPPLeftBound,
          hud.shieldsBowPPLowerBound,
          hud.shieldsBowPPRightBound,
          hud.shieldsBowPPLowerBound);
draw_set_color(c_white);
draw_line(hud.shieldsBowHPLeftBound,
          hud.shieldsBowHPUpperBound,
          hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2),
          hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2) - (player.sprite_height / 2));

//Draw the shieldsSternHP and shieldsSternPP bars, and the borders thereof (and lines thereto)
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
draw_set_color(c_maroon);
draw_line(hud.shieldsSternHPLeftBound,
          hud.shieldsSternHPUpperBound,
          hud.shieldsSternHPLeftBound,
          hud.shieldsSternHPLowerBound);
draw_line(hud.shieldsSternHPRightBound,
          hud.shieldsSternHPUpperBound,
          hud.shieldsSternHPRightBound,
          hud.shieldsSternHPLowerBound);
draw_line(hud.shieldsSternHPLeftBound,
          hud.shieldsSternHPUpperBound,
          hud.shieldsSternHPRightBound,
          hud.shieldsSternHPUpperBound);
draw_line(hud.shieldsSternHPLeftBound,
          hud.shieldsSternHPLowerBound,
          hud.shieldsSternHPRightBound,
          hud.shieldsSternHPLowerBound);
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
draw_set_color(c_teal);
draw_line(hud.shieldsSternPPLeftBound,
          hud.shieldsSternPPUpperBound,
          hud.shieldsSternPPLeftBound,
          hud.shieldsSternPPLowerBound);
draw_line(hud.shieldsSternPPRightBound,
          hud.shieldsSternPPUpperBound,
          hud.shieldsSternPPRightBound,
          hud.shieldsSternPPLowerBound);
draw_line(hud.shieldsSternPPLeftBound,
          hud.shieldsSternPPUpperBound,
          hud.shieldsSternPPRightBound,
          hud.shieldsSternPPUpperBound);
draw_line(hud.shieldsSternPPLeftBound,
          hud.shieldsSternPPLowerBound,
          hud.shieldsSternPPRightBound,
          hud.shieldsSternPPLowerBound);
draw_set_color(c_white);
draw_line(hud.shieldsSternPPRightBound,
          hud.shieldsSternPPLowerBound,
          hud.shieldsLeftBound + ((hud.shieldsRightBound - hud.shieldsLeftBound) / 2),
          hud.shieldsUpperBound + ((hud.shieldsLowerBound - hud.shieldsUpperBound) / 2) + (player.sprite_height / 2));
               
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
