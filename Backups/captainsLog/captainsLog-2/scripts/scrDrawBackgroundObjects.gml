objectArray = scrSort(argument0);

for(i = 0; i < array_length_1d(objectArray); i++) {
    //show_debug_message(objectArray);
    //show_debug_message(string(objectArray[i].id) + ": " + string(point_distance(player.x, player.y, objectArray[i].x, objectArray[i].y)));
    if(scrCanSeeObject(player, objectArray[i])) {
        distance = point_distance(player.x, player.y, objectArray[i].x, objectArray[i].y) / sprite_get_width(sprGridBox);
        numSubImages = 4;
        subImage = 0;
        if(scrIsFacingUp(player)) {
            if(scrIsFacingUp(objectArray[i])) {
                subImage = player.image_angle / 90;
            } else if(scrIsFacingRight(objectArray[i])) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(scrIsFacingDown(objectArray[i])) {
                subImage = (player.image_angle / 90) + 2;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1;
                }
            } else {
                subImage = (player.image_angle / 90) + 3;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1
                } else if(subImage == 6) {
                    subImage = 2;
                }
            }
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
            if(scrIsFacingUp(objectArray[i])) {
                subImage = player.image_angle / 90;
            } else if(scrIsFacingRight(objectArray[i])) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(scrIsFacingDown(objectArray[i])) {
                subImage = (player.image_angle / 90) + 2;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1;
                }
            } else {
                subImage = (player.image_angle / 90) + 3;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1
                } else if(subImage == 6) {
                    subImage = 2;
                }
            }
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
            if(scrIsFacingUp(objectArray[i])) {
                subImage = player.image_angle / 90;
            } else if(scrIsFacingRight(objectArray[i])) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(scrIsFacingDown(objectArray[i])) {
                subImage = (player.image_angle / 90) + 2;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1;
                }
            } else {
                subImage = (player.image_angle / 90) + 3;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1
                } else if(subImage == 6) {
                    subImage = 2;
                }
            }
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
            if(scrIsFacingUp(objectArray[i])) {
                subImage = player.image_angle / 90;
            } else if(scrIsFacingRight(objectArray[i])) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(scrIsFacingDown(objectArray[i])) {
                subImage = (player.image_angle / 90) + 2;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1;
                }
            } else {
                subImage = (player.image_angle / 90) + 3;
                if(subImage == 4) {
                    subImage = 0;
                } else if(subImage == 5) {
                    subImage = 1
                } else if(subImage == 6) {
                    subImage = 2;
                }
            }
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
