if(actionMap[? util.actionMapCannonString]) {
    if(object_index == objRiceCake) {
        cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle - 90), 
                       y + lengthdir_y(cannonOffset, image_angle - 90), 
                       objPlayerCannonBullet);
        cannonBullet.image_angle = image_angle + 180;
    } else if(object_index == objSidecar) {
        cannonBullet = instance_create(x + lengthdir_x(cannonOffset, image_angle),
                       y + lengthdir_y(cannonOffset, image_angle - 180),
                       objPlayerCannonBullet);
        cannonBullet.image_angle = image_angle;
    } else if(object_index == objFlasher) {
        gridBoxes = scrGetGridBoxes();
        for(i = 0; i < array_length_1d(gridBoxes); i++) {
            gridBox = gridBoxes[i];
            if(scrIsFacingUp(self)) {
                
            } else if(scrIsFacingLeft()) {
            
            } else if(scrIsFacingDown()) {
            
            } else {
            
            }
        }
    } else if(object_index == objHalitosis) {
        
    } else if(object_index == objPincer) {
    
    } else if(object_index == objMezzanine) {
    
    }
}
