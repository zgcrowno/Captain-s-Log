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