objectArray = scrProximitySort(argument0);

for(i = 0; i < array_length_1d(objectArray); i++) {
    if(scrCanSeeObject(global.player, objectArray[i])) {
        distance = point_distance(global.player.x, 
                                  global.player.y, 
                                  objectArray[i].x, 
                                  objectArray[i].y) / sprite_get_width(sprGridBox);
        numSubImages = 4;
        subImage = 0;
        if(scrIsFacingUp(global.player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian - ((((global.player.x - objectArray[i].x) * view_wview[0]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[0] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingRight(global.player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian - ((((global.player.y - objectArray[i].y) * view_wview[0]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[0] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingDown(global.player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian + ((((global.player.x - objectArray[i].x) * view_wview[0]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[0] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingLeft(global.player)) {
            scrSetSubImage();
            draw_sprite_ext(objectArray[i].backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian + ((((global.player.y - objectArray[i].y) * view_wview[0]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[0] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         }
    }
}
