if(global.player.target != noone) {
    //Draw the target image
    draw_sprite(global.player.target.radarSprite, 
                global.player.target.image_index, 
                global.hud.targetImageRightBound - ((global.hud.targetImageRightBound - global.hud.targetImageLeftBound) / 2), 
                global.hud.targetImageLowerBound - ((global.hud.targetImageLowerBound - global.hud.targetImageUpperBound) / 2));
    
    //Draw the captain's personal information
    draw_text(global.hud.targetIntelLeftBound, 
              global.hud.targetIntelUpperBound, 
              global.util.captainString + global.player.target.designation);
    
    //Draw the target's overall HP bar
    draw_healthbar(global.hud.targetPowerLeftBound, 
                   global.hud.targetPowerUpperBound, 
                   global.hud.targetPowerLeftBound + ((global.hud.targetPowerRightBound - global.hud.targetPowerLeftBound) / 2), 
                   global.hud.targetPowerUpperBound + ((global.hud.targetPowerLowerBound - global.hud.targetPowerUpperBound)), 
                   (global.player.target.currentHP / global.player.target.maxHP) * 100, 
                   c_black, 
                   c_maroon, 
                   c_maroon, 
                   3, 
                   false, 
                   false);
                   
    //Draw the overall PP bar
    draw_healthbar(global.hud.targetPowerLeftBound + ((global.hud.targetPowerRightBound - global.hud.targetPowerLeftBound) / 2), 
                   global.hud.targetPowerUpperBound, 
                   global.hud.targetPowerRightBound, 
                   global.hud.targetPowerUpperBound + ((global.hud.targetPowerLowerBound - global.hud.targetPowerUpperBound)),
                   (global.player.target.currentPP / global.player.target.maxPP) * 100, 
                   c_black, 
                   c_teal, 
                   c_teal, 
                   3, 
                   false, 
                   false);
} else {
    draw_set_color(c_red);
    
    //Draw the target image lines
    draw_line(global.hud.targetImageLeftBound, 
              global.hud.targetImageUpperBound, 
              global.hud.targetImageRightBound, 
              global.hud.targetImageLowerBound);
    draw_line(global.hud.targetImageLeftBound, 
              global.hud.targetImageLowerBound, 
              global.hud.targetImageRightBound, 
              global.hud.targetImageUpperBound);
    
    //Draw the target info lines
    draw_line(global.hud.targetIntelLeftBound, 
              global.hud.targetIntelUpperBound, 
              global.hud.targetIntelRightBound, 
              global.hud.targetIntelLowerBound);
    draw_line(global.hud.targetIntelLeftBound, 
              global.hud.targetIntelLowerBound, 
              global.hud.targetIntelRightBound, 
              global.hud.targetIntelUpperBound);
    
    //Draw the target power lines
    draw_line(global.hud.targetPowerLeftBound, 
              global.hud.targetPowerUpperBound, 
              global.hud.targetPowerRightBound, 
              global.hud.targetPowerLowerBound);
    draw_line(global.hud.targetPowerLeftBound, 
              global.hud.targetPowerLowerBound, 
              global.hud.targetPowerRightBound, 
              global.hud.targetPowerUpperBound);
    
    //Draw the target aq one lines
    draw_line(global.hud.targetAQOneLeftBound, 
              global.hud.targetAQOneUpperBound, 
              global.hud.targetAQOneRightBound, 
              global.hud.targetAQOneLowerBound);
    draw_line(global.hud.targetAQOneLeftBound, 
              global.hud.targetAQOneLowerBound, 
              global.hud.targetAQOneRightBound, 
              global.hud.targetAQOneUpperBound);
    
    //Draw the target aq two lines
    draw_line(global.hud.targetAQTwoLeftBound, 
              global.hud.targetAQTwoUpperBound, 
              global.hud.targetAQTwoRightBound, 
              global.hud.targetAQTwoLowerBound);
    draw_line(global.hud.targetAQTwoLeftBound, 
              global.hud.targetAQTwoLowerBound, 
              global.hud.targetAQTwoRightBound, 
              global.hud.targetAQTwoUpperBound);
    
    //Draw the target aq three lines
    draw_line(global.hud.targetAQThreeLeftBound, 
              global.hud.targetAQThreeUpperBound, 
              global.hud.targetAQThreeRightBound, 
              global.hud.targetAQThreeLowerBound);
    draw_line(global.hud.targetAQThreeLeftBound, 
              global.hud.targetAQThreeLowerBound, 
              global.hud.targetAQThreeRightBound, 
              global.hud.targetAQThreeUpperBound);
    
    //Draw the target aq four lines
    draw_line(global.hud.targetAQFourLeftBound, 
              global.hud.targetAQFourUpperBound, 
              global.hud.targetAQFourRightBound, 
              global.hud.targetAQFourLowerBound);
    draw_line(global.hud.targetAQFourLeftBound, 
              global.hud.targetAQFourLowerBound, 
              global.hud.targetAQFourRightBound, 
              global.hud.targetAQFourUpperBound);
    
    //Draw the target aq five lines
    draw_line(global.hud.targetAQFiveLeftBound, 
              global.hud.targetAQFiveUpperBound, 
              global.hud.targetAQFiveRightBound, 
              global.hud.targetAQFiveLowerBound);
    draw_line(global.hud.targetAQFiveLeftBound, 
              global.hud.targetAQFiveLowerBound, 
              global.hud.targetAQFiveRightBound, 
              global.hud.targetAQFiveUpperBound);
    
    //Draw the target aq six lines
    draw_line(global.hud.targetAQSixLeftBound, 
              global.hud.targetAQSixUpperBound, 
              global.hud.targetAQSixRightBound, 
              global.hud.targetAQSixLowerBound);
    draw_line(global.hud.targetAQSixLeftBound, 
              global.hud.targetAQSixLowerBound, 
              global.hud.targetAQSixRightBound, 
              global.hud.targetAQSixUpperBound); 
    
    //Draw the target aq seven lines
    draw_line(global.hud.targetAQSevenLeftBound, 
              global.hud.targetAQSevenUpperBound, 
              global.hud.targetAQSevenRightBound, 
              global.hud.targetAQSevenLowerBound);
    draw_line(global.hud.targetAQSevenLeftBound, 
              global.hud.targetAQSevenLowerBound, 
              global.hud.targetAQSevenRightBound, 
              global.hud.targetAQSevenUpperBound); 
    
    //Draw the target aq eight lines
    draw_line(global.hud.targetAQEightLeftBound, 
              global.hud.targetAQEightUpperBound, 
              global.hud.targetAQEightRightBound, 
              global.hud.targetAQEightLowerBound);
    draw_line(global.hud.targetAQEightLeftBound, 
              global.hud.targetAQEightLowerBound, 
              global.hud.targetAQEightRightBound, 
              global.hud.targetAQEightUpperBound);
    
    draw_set_color(c_white);
}
