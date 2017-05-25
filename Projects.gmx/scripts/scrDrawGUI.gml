var enemiesAndProjectiles = scrGetEnemiesAndProjectiles();
var gridBoxes = global.allGridBoxes;

draw_set_color(c_white);
draw_set_font(fntMain);

//Draw the skybox, enemy background sprites, projectile background sprites and HUD
draw_sprite(sprBlueSky, -1, 0, 0);

scrDrawBackgroundObjects(enemiesAndProjectiles);

if(global.util.paused) {
    draw_sprite(sprShutter, -1, 2, 2);
    draw_sprite(sprRadarBlack, -1, view_xport[global.util.radarPort], view_yport[global.util.radarPort]);
}

draw_sprite(sprPixelHud, -1, 0, 0);
            
//Draw the typing prompt
draw_sprite(sprTypingPrompt, 
            -1, 
            global.hud.consoleLeftBound + string_width(global.input), 
            global.hud.consoleLowerBound - string_height(global.util.heightString) - 3);
            
if(room != asset_get_index(room_get_name(rmTestMainMenu))) {

    //Draw the overall HP bar
    draw_healthbar(global.hud.powerLeftBound, 
                   global.hud.powerUpperBound, 
                   global.hud.powerLeftBound + ((global.hud.powerRightBound - global.hud.powerLeftBound) / 2), 
                   global.hud.powerUpperBound + ((global.hud.powerLowerBound - global.hud.powerUpperBound)), 
                   (global.player.currentHP / global.player.maxHP) * 100, 
                   c_black, 
                   c_maroon, 
                   c_maroon, 
                   3, 
                   false, 
                   false);
    
    //Draw the overall PP bar
    draw_healthbar(global.hud.powerLeftBound + ((global.hud.powerRightBound - global.hud.powerLeftBound) / 2), 
                   global.hud.powerUpperBound, 
                   global.hud.powerRightBound, 
                   global.hud.powerUpperBound + ((global.hud.powerLowerBound - global.hud.powerUpperBound)),
                   (global.player.currentPP / global.player.maxPP) * 100, 
                   c_black, 
                   c_teal, 
                   c_teal, 
                   3, 
                   false, 
                   false);
                   
    //Draw the thrusters player sprite
    draw_sprite(global.player.sprite_index, 
                -1, 
                global.hud.thrustersLeftBound + ((global.hud.thrustersRightBound - global.hud.thrustersLeftBound) / 2) - ((sprite_get_bbox_right(global.player.sprite_index) / 2) - sprite_get_xoffset(global.player.sprite_index)), 
                global.hud.thrustersUpperBound + ((global.hud.thrustersLowerBound - global.hud.thrustersUpperBound) / 2) - ((sprite_get_bbox_bottom(global.player.sprite_index) / 2) - sprite_get_yoffset(global.player.sprite_index)));
                
    //Draw the shields player sprite
    draw_sprite(global.player.sprite_index, 
                -1, 
                global.hud.shieldsLeftBound + ((global.hud.shieldsRightBound - global.hud.shieldsLeftBound) / 2) - ((sprite_get_bbox_right(global.player.sprite_index) / 2) - sprite_get_xoffset(global.player.sprite_index)), 
                global.hud.shieldsUpperBound + ((global.hud.shieldsLowerBound - global.hud.shieldsUpperBound) / 2) - ((sprite_get_bbox_bottom(global.player.sprite_index) / 2) - sprite_get_yoffset(global.player.sprite_index)));
    
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
    draw_healthbar(global.hud.gunsLeftBound, 
                   global.hud.gunsUpperBound, 
                   global.hud.gunsRightBound, 
                   global.hud.gunsLowerBound, 
                   (global.player.currentPPGuns / global.player.requiredPPGuns) * 100, 
                   c_black, 
                   c_teal, 
                   c_teal, 
                   3, 
                   false, 
                   false);
    
    //Draw the cannonPP bar
    draw_healthbar(global.hud.cannonLeftBound, 
                   global.hud.cannonUpperBound, 
                   global.hud.cannonRightBound, 
                   global.hud.cannonLowerBound, 
                   (global.player.currentPPCannon / global.player.requiredPPCannon) * 100, 
                   c_black, 
                   c_teal, 
                   c_teal, 
                   3, 
                   false, 
                   false);
                   
    //Draw the activePP bar
    draw_healthbar(global.hud.activeLeftBound, 
                   global.hud.activeUpperBound, 
                   global.hud.activeRightBound, 
                   global.hud.activeLowerBound, 
                   (global.player.currentPPActive / global.player.requiredPPActive) * 100, 
                   c_black, 
                   c_teal, 
                   c_teal, 
                   3, 
                   false, 
                   false);
    
    //Draw the passivePP bar
    draw_healthbar(global.hud.passiveLeftBound, 
                   global.hud.passiveUpperBound, 
                   global.hud.passiveRightBound, 
                   global.hud.passiveLowerBound, 
                   (global.player.currentPPPassive / global.player.requiredPPPassive) * 100, 
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
    scrDrawActionQueue(global.player);
    
    //Draw target actionQueue
    if(global.player.target != noone) {
        scrDrawActionQueue(global.player.target);
    }
} else {
    draw_sprite(sprRadarBlack, -1, view_xport[global.util.radarPort], view_yport[global.util.radarPort]);
}

//Draw the state-dependent command prompts
scrDrawCommandPrompts();
