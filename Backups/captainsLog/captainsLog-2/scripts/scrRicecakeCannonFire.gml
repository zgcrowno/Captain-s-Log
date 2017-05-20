var cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle - 90), 
                                   y + lengthdir_y(cannonOffset, image_angle - 90), 
                                   objPlayerCannonBullet);
cannonBullet.image_angle = image_angle + 180;
