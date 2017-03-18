//Instance of the HUD Object
hud = instance_find(objHud, 0);

//Instance of the player ship
player = instance_find(objPlayerShip, 0);

//The Amount of Damage Received by any Ship which Comes into Contact with the Bullet
damage = 25;

if(object_is_ancestor(object_index, objPlayerBullet)) {
    backgroundSprite = sprPlayerBulletBackground;
} else {
    backgroundSprite = sprEnemyBulletBackground;
}
