//TODO: Make this script more accurate; bring more perspective.
//Also, this isn't working for sprites that are supposed to cover more
//than one gridBox. Might need to use the drawBegin and drawEnd events
//to fix issues with nearer objects being covered up by ones that are 
//farther away.
objectArray = scrProximitySort(argument0);
var hypotenuse = noone;
var halfPerspectivePlane = noone;

for(i = 0; i < array_length_1d(objectArray); i++) {
    var object = objectArray[i];
    if(scrCanSeeObject(global.player, object)) {
        var distance = point_distance(global.player.x, 
                                  global.player.y, 
                                  object.x, 
                                  object.y) / sprite_get_width(sprGridBox);
        var numSubImages = 4;
        subImage = 0;
        if(scrIsFacingUp(global.player)) {
            scrSetSubImage();
            with(global.player) {
                hypotenuse = point_distance(x, y, x, object.y) / cos(50);
                halfPerspectivePlane = point_distance(x + lengthdir_x(hypotenuse, 140), object.y, x + lengthdir_x(hypotenuse, 40), object.y) / 2;
            }
            draw_sprite_ext(object.backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian - ((((((global.player.x - object.x) / halfPerspectivePlane) * abs(global.player.x - object.x)) * view_wview[global.util.hudView]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[global.util.hudView] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingRight(global.player)) {
            scrSetSubImage();
            with(global.player) {
                hypotenuse = point_distance(x, y, object.x, y) / cos(50);
                halfPerspectivePlane = point_distance(object.x, y + lengthdir_y(hypotenuse, 50), object.x, y + lengthdir_x(hypotenuse, 310)) / 2;
            }
            draw_sprite_ext(object.backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian - ((((((global.player.y - object.y) / halfPerspectivePlane) * abs(global.player.y - object.y)) * view_wview[global.util.hudView]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[global.util.hudView] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingDown(global.player)) {
            scrSetSubImage();
            with(global.player) {
                hypotenuse = point_distance(x, y, x, object.y) / cos(50);
                halfPerspectivePlane = point_distance(x + lengthdir_x(hypotenuse, 320), object.y, x + lengthdir_x(hypotenuse, 220), object.y) / 2;
            }
            draw_sprite_ext(object.backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian + ((((((global.player.x - object.x) / halfPerspectivePlane) * (global.player.x - object.x)) * view_wview[global.util.hudView]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[global.util.hudView] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         } else if(scrIsFacingLeft(global.player)) {
            scrSetSubImage();
            with(global.player) {
                hypotenuse = point_distance(x, y, object.x, y) / cos(50);
                halfPerspectivePlane = point_distance(object.x, y + lengthdir_y(hypotenuse, 230), object.x, y + lengthdir_x(hypotenuse, 130)) / 2;
            }
            draw_sprite_ext(object.backgroundSprite,
                            subImage, 
                            global.hud.primeMeridian + ((((((global.player.y - object.y) / halfPerspectivePlane) * (global.player.y - object.y)) * view_wview[global.util.hudView]) / (global.hud.radarRightBound - global.hud.radarLeftBound)) * (view_wview[global.util.hudView] / (global.hud.radarRightBound - global.hud.radarLeftBound))), 
                            global.hud.enemyBackgroundSpriteY, 
                            distance / sqr(distance), 
                            distance / sqr(distance), 
                            0, 
                            c_white, 
                            1);
         }
    }
}
