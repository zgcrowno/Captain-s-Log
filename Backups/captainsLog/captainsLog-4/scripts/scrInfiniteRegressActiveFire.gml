if(portalBlue == noone) {
    var blueTarget = instance_find(objGridBox, irandom(array_length_1d(global.allGridBoxes) - 1));
    var orangeTarget = blueTarget;
    
    while(orangeTarget == blueTarget) {
        orangeTarget = instance_find(objGridBox, irandom(array_length_1d(global.allGridBoxes) - 1));
    }
    
    portalBlue = instance_create(x + lengthdir_x(activeOffset, image_angle), y + lengthdir_y(activeOffset, image_angle), objPortalBlue);
    portalOrange = instance_create(x - lengthdir_x(activeOffset, image_angle), y - lengthdir_y(activeOffset, image_angle), objPortalOrange);
    
    portalBlue.target = blueTarget;
    portalOrange.target = orangeTarget;
    
    portalBlue.otherPortal = portalOrange;
    portalOrange.otherPortal = portalBlue;
    
    portalBlue.image_angle += 90;
    portalOrange.image_angle += 90;
    
    with(portalBlue) {
        scrMoveToTarget();
    }
    with(portalOrange) {
        scrMoveToTarget();
    }
}
