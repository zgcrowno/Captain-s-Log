projectiles = scrGetProjectiles();

//Draw the skybox, enemy background sprites, projectile background sprites and HUD
draw_sprite(sprBlueSky, -1, 0, 0);

scrDrawBackgroundObjects(util.enemies);

scrDrawBackgroundObjects(projectiles);

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

//Draw actionQueue
scrDrawActionQueue();

//Draw the state-dependent command prompts
scrDrawCommandPrompts();
