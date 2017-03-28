if(player.target != noone) {
    //Draw the target image
    draw_sprite(player.target.sprite_index, 
                player.target.image_index, 
                hud.targetImageRightBound - ((hud.targetImageRightBound - hud.targetImageLeftBound) / 2), 
                hud.targetImageLowerBound - ((hud.targetImageLowerBound - hud.targetImageUpperBound) / 2));
    
    //Draw the captain's personal information
    draw_text(hud.targetIntelLeftBound, 
              hud.targetIntelUpperBound + string_height("Something"), 
              "Captain: " + player.target.designation);
    draw_text(hud.targetIntelLeftBound, 
              hud.targetIntelUpperBound + (2 * string_height("Something")), 
              "HP: " + string(player.target.currentHP));
    draw_text(hud.targetIntelLeftBound, 
              hud.targetIntelUpperBound + (3 * string_height("Something")), 
              "Age: " + string(player.target.age));
    draw_text(hud.targetIntelLeftBound, 
              hud.targetIntelUpperBound + (4 * string_height("Something")), 
              "Temperament: " + player.target.temper);
    draw_text(hud.targetIntelLeftBound, 
              hud.targetIntelUpperBound + (5 * string_height("Something")), 
              "Family: " + player.target.family);
    
    //Draw the target's overall HP bar
    draw_healthbar(hud.targetPowerLeftBound, 
                   hud.targetPowerUpperBound, 
                   hud.targetPowerLeftBound + ((hud.targetPowerRightBound - hud.targetPowerLeftBound) / 2), 
                   hud.targetPowerUpperBound + ((hud.targetPowerLowerBound - hud.targetPowerUpperBound)), 
                   (player.target.currentHP / player.target.maxHP) * 100, 
                   c_black, 
                   c_maroon, 
                   c_maroon, 
                   3, 
                   false, 
                   false);
                   
    //Draw the overall PP bar
    draw_healthbar(hud.targetPowerLeftBound + ((hud.targetPowerRightBound - hud.targetPowerLeftBound) / 2), 
                   hud.targetPowerUpperBound, 
                   hud.targetPowerRightBound, 
                   hud.targetPowerUpperBound + ((hud.targetPowerLowerBound - hud.targetPowerUpperBound)),
                   (player.target.currentPP / player.target.maxPP) * 100, 
                   c_black, 
                   c_teal, 
                   c_teal, 
                   3, 
                   false, 
                   false);
} else {
    draw_set_color(c_red);
    
    //Draw the target image lines
    draw_line(hud.targetImageLeftBound, 
              hud.targetImageUpperBound, 
              hud.targetImageRightBound, 
              hud.targetImageLowerBound);
    draw_line(hud.targetImageLeftBound, 
              hud.targetImageLowerBound, 
              hud.targetImageRightBound, 
              hud.targetImageUpperBound);
    
    //Draw the target info lines
    draw_line(hud.targetIntelLeftBound, 
              hud.targetIntelUpperBound, 
              hud.targetIntelRightBound, 
              hud.targetIntelLowerBound);
    draw_line(hud.targetIntelLeftBound, 
              hud.targetIntelLowerBound, 
              hud.targetIntelRightBound, 
              hud.targetIntelUpperBound);
    
    //Draw the target power lines
    draw_line(hud.targetPowerLeftBound, 
              hud.targetPowerUpperBound, 
              hud.targetPowerRightBound, 
              hud.targetPowerLowerBound);
    draw_line(hud.targetPowerLeftBound, 
              hud.targetPowerLowerBound, 
              hud.targetPowerRightBound, 
              hud.targetPowerUpperBound);
    
    //Draw the target aq one lines
    draw_line(hud.targetAQOneLeftBound, 
              hud.targetAQOneUpperBound, 
              hud.targetAQOneRightBound, 
              hud.targetAQOneLowerBound);
    draw_line(hud.targetAQOneLeftBound, 
              hud.targetAQOneLowerBound, 
              hud.targetAQOneRightBound, 
              hud.targetAQOneUpperBound);
    
    //Draw the target aq two lines
    draw_line(hud.targetAQTwoLeftBound, 
              hud.targetAQTwoUpperBound, 
              hud.targetAQTwoRightBound, 
              hud.targetAQTwoLowerBound);
    draw_line(hud.targetAQTwoLeftBound, 
              hud.targetAQTwoLowerBound, 
              hud.targetAQTwoRightBound, 
              hud.targetAQTwoUpperBound);
    
    //Draw the target aq three lines
    draw_line(hud.targetAQThreeLeftBound, 
              hud.targetAQThreeUpperBound, 
              hud.targetAQThreeRightBound, 
              hud.targetAQThreeLowerBound);
    draw_line(hud.targetAQThreeLeftBound, 
              hud.targetAQThreeLowerBound, 
              hud.targetAQThreeRightBound, 
              hud.targetAQThreeUpperBound);
    
    //Draw the target aq four lines
    draw_line(hud.targetAQFourLeftBound, 
              hud.targetAQFourUpperBound, 
              hud.targetAQFourRightBound, 
              hud.targetAQFourLowerBound);
    draw_line(hud.targetAQFourLeftBound, 
              hud.targetAQFourLowerBound, 
              hud.targetAQFourRightBound, 
              hud.targetAQFourUpperBound);
    
    //Draw the target aq five lines
    draw_line(hud.targetAQFiveLeftBound, 
              hud.targetAQFiveUpperBound, 
              hud.targetAQFiveRightBound, 
              hud.targetAQFiveLowerBound);
    draw_line(hud.targetAQFiveLeftBound, 
              hud.targetAQFiveLowerBound, 
              hud.targetAQFiveRightBound, 
              hud.targetAQFiveUpperBound);
    
    //Draw the target aq six lines
    draw_line(hud.targetAQSixLeftBound, 
              hud.targetAQSixUpperBound, 
              hud.targetAQSixRightBound, 
              hud.targetAQSixLowerBound);
    draw_line(hud.targetAQSixLeftBound, 
              hud.targetAQSixLowerBound, 
              hud.targetAQSixRightBound, 
              hud.targetAQSixUpperBound); 
    
    //Draw the target aq seven lines
    draw_line(hud.targetAQSevenLeftBound, 
              hud.targetAQSevenUpperBound, 
              hud.targetAQSevenRightBound, 
              hud.targetAQSevenLowerBound);
    draw_line(hud.targetAQSevenLeftBound, 
              hud.targetAQSevenLowerBound, 
              hud.targetAQSevenRightBound, 
              hud.targetAQSevenUpperBound); 
    
    //Draw the target aq eight lines
    draw_line(hud.targetAQEightLeftBound, 
              hud.targetAQEightUpperBound, 
              hud.targetAQEightRightBound, 
              hud.targetAQEightLowerBound);
    draw_line(hud.targetAQEightLeftBound, 
              hud.targetAQEightLowerBound, 
              hud.targetAQEightRightBound, 
              hud.targetAQEightUpperBound);
    
    draw_set_color(c_white);
}
