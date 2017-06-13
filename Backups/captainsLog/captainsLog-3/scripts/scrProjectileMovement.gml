var gridBoxTouching = instance_position(x, y, objGridBox);

if(gridBoxTouching != noone) {
    var projectile = self;
    with(gridBoxTouching) {
        var portalTouching = instance_place(x, y, objPortal);
        if(portalTouching != noone) {
            if(portalTouching.position == portalTouching.left && other.image_angle == 90
               || portalTouching.position == portalTouching.right && other.image_angle == 270
               || portalTouching.position == portalTouching.bottom && other.image_angle == 180
               || portalTouching.position == portalTouching.top && other.image_angle == 0) {
                with(portalTouching.otherPortal) {
                    var finalGridBox = instance_place(x, y, objGridBox);
                    projectile.x = finalGridBox.x + (finalGridBox.sprite_width / 2);
                    projectile.y = finalGridBox.y + (finalGridBox.sprite_width / 2);
                    if(position == left) {
                        projectile.image_angle = 270;
                    } else if(position == right) {
                        projectile.image_angle = 90;
                    } else if(position == bottom) {
                        projectile.image_angle = 0;
                    } else if(position == top) {
                        projectile.image_angle = 180;
                    }
                }
            } else {
                if(projectile.image_angle % 90 == 0) {
                    projectile.x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
                    projectile.y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
                } else {
                    projectile.x += sqrt(sqr(sprite_get_width(sprGridBox)) + sqr(sprite_get_width(sprGridBox))) * cos(degtorad(image_angle + 90));
                    projectile.y -= sqrt(sqr(sprite_get_width(sprGridBox)) + sqr(sprite_get_width(sprGridBox))) * sin(degtorad(image_angle + 90));
                }
            }
        } else {
            if(other.image_angle % 90 == 0) {
                other.x += sprite_get_width(sprGridBox) * cos(degtorad(other.image_angle + 90));
                other.y -= sprite_get_width(sprGridBox) * sin(degtorad(other.image_angle + 90));
            } else {
                other.x += sqrt(sqr(sprite_get_width(sprGridBox)) + sqr(sprite_get_width(sprGridBox))) * cos(degtorad(other.image_angle + 90));
                other.y -= sqrt(sqr(sprite_get_width(sprGridBox)) + sqr(sprite_get_width(sprGridBox))) * sin(degtorad(other.image_angle + 90));
            }
        }
    }
    other.x += sprite_get_width(sprGridBox) * cos(degtorad(other.image_angle + 90));
    other.y -= sprite_get_width(sprGridBox) * sin(degtorad(other.image_angle + 90));
    x = gridBoxTouching.x + (sprite_get_width(sprGridBox) / 2);     //Note: This is causing the projectiles' background sprites to appear off.
    y = gridBoxTouching.y + (sprite_get_height(sprGridBox) / 2);
}
