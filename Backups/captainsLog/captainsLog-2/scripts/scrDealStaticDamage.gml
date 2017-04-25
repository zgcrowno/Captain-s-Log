if(sprite_index == sprGridBoxStatic) {
    for(i = 0; i < instance_number(objShip); i++) {
        ship = instance_find(objShip, i)
        if(place_meeting(x, y, ship)) {
            ship.currentHP -= util.staticDamage;
        }
    }
}
