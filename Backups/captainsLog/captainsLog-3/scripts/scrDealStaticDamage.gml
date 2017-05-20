if(sprite_index == sprGridBoxStatic) {
    var shipTouching = collision_rectangle(x, 
                                           y, 
                                           x + sprite_width, 
                                           y + sprite_width, 
                                           objShip, 
                                           false, 
                                           true);
    
    if(shipTouching != noone) {
        shipTouching.currentHP -= global.util.staticDamage;
    }
}
