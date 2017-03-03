objectArray = argument0;

for(i = 0; i < array_length_1d(objectArray); i++) {
    if(scrCanSeeObject(player, objectArray[i])) {
        distance = point_distance(player.x, player.y, objectArray[i].x, objectArray[i].y) / sprite_get_width(sprGridBox);
        numSubImages = 4;
        subImage = 0;
        if(player.image_angle % 360 == 0) {
            if(objectArray[i].image_angle % 360 == 0) {
                subImage = player.image_angle / 90;
            } else if(objectArray[i].image_angle % 270 == 0) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(objectArray[i].image_angle % 180 == 0) {
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
         } else if(player.image_angle % 270 == 0) {
            if(objectArray[i].image_angle % 360 == 0) {
                subImage = player.image_angle / 90;
            } else if(objectArray[i].image_angle % 270 == 0) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(objectArray[i].image_angle % 180 == 0) {
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
         } else if(player.image_angle % 180 == 0) {
            if(objectArray[i].image_angle % 360 == 0) {
                subImage = player.image_angle / 90;
            } else if(objectArray[i].image_angle % 270 == 0) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(objectArray[i].image_angle % 180 == 0) {
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
         } else if(player.image_angle % 90 == 0) {
            if(objectArray[i].image_angle % 360 == 0) {
                subImage = player.image_angle / 90;
            } else if(objectArray[i].image_angle % 270 == 0) {
                subImage = (player.image_angle / 90) + 1
                if(subImage == 4) {
                    subImage = 0;
                }
            } else if(objectArray[i].image_angle % 180 == 0) {
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
