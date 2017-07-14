//TODO: Use global.util variables for angle degrees.
//Also, this isn't working for sprites that are supposed to cover more
//than one gridBox. Might need to use the drawBegin and drawEnd events
//to fix issues with nearer objects being covered up by ones that are 
//farther away.
objectArray = scrProximitySort(argument0);
var hypotenuse = noone;
var halfPerspectivePlane = noone;

//TODO: 50 is equal to half of the degrees of the player ship's range of sight (at this point)
//In the future, make the perspective work perfectly, and adjust sprites to be the correct size
//for this perspective. The draw_sprite_ext functions work more accurately to scale when dividing
//view_wview[global.util.hudView] by 2, but they currently map more accurately to the enemy sprites
//when dividing by sprite_get_width(sprGridBox).
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
                            global.hud.primeMeridian - (((global.player.x - object.x) / halfPerspectivePlane) * (view_wview[global.util.hudView] / sprite_get_width(sprGridBox))),
                            global.hud.enemyBackgroundSpriteY, 
                            1 / distance,
                            1 / distance,
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
                            global.hud.primeMeridian - (((global.player.y - object.y) / halfPerspectivePlane) * (view_wview[global.util.hudView] / sprite_get_width(sprGridBox))),
                            global.hud.enemyBackgroundSpriteY, 
                            1 / distance, 
                            1 / distance, 
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
                            global.hud.primeMeridian + (((global.player.x - object.x) / halfPerspectivePlane) * (view_wview[global.util.hudView] / sprite_get_width(sprGridBox))),
                            global.hud.enemyBackgroundSpriteY, 
                            1 / distance, 
                            1 / distance, 
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
                            global.hud.primeMeridian + (((global.player.y - object.y) / halfPerspectivePlane) * (view_wview[global.util.hudView] / sprite_get_width(sprGridBox))),
                            global.hud.enemyBackgroundSpriteY, 
                            1 / distance, 
                            1 / distance, 
                            0, 
                            c_white, 
                            1);
         }
    }
}
