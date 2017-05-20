var cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle),
                                   y + lengthdir_y(cannonOffset, image_angle - 180),
                                   objPlayerCannonBullet);
cannonBullet.image_angle = image_angle;
