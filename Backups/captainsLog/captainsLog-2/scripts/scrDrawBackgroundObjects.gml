objectArray = scrProximitySort(argument0);

for(i = 0; i < array_length_1d(objectArray); i++) {
    if(scrCanSeeObject(player, objectArray[i])) {
        distance = point_distance(player.x, player.y, objectArray[i].x, objectArray[i].y) / sprite_get_width(sprGridBox);
        numSubImages = 4;
        subImage = 0;
        if(scrIsFacingUp(player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            hud.primeMeridian - ((((player.x - objectArray[i].x) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingRight(player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            hud.primeMeridian - ((((player.y - objectArray[i].y) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingDown(player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            hud.primeMeridian + ((((player.x - objectArray[i].x) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingLeft(player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            hud.primeMeridian + ((((player.y - objectArray[i].y) * view_wview[0]) / (hud.radarRightBound - hud.radarLeftBound)) * (view_wview[0] / (hud.radarRightBound - hud.radarLeftBound))), 
                            hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         }
    }
}
