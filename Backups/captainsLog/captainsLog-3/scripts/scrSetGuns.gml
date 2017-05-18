len = sprite_get_width(sprGridBox);
hypotenuse = sqrt(sqr(len) + sqr(len));
if(object_index = objRiceCake) {
    gunsArray[0] = x;
    gunsArray[1] = y;
} else if(object_index = objSidecar) {
    gunsArray[0] = x;
    gunsArray[1] = y;
    gunsArray[2] = x + lengthdir_x(len, image_angle + 90);
    gunsArray[3] = y + lengthdir_y(len, image_angle + 90);
    show_debug_message(string(gunsArray[0]));
    show_debug_message(string(gunsArray[1]));
    show_debug_message(string(gunsArray[2]));
    show_debug_message(string(gunsArray[3]));
} else if(object_index = objFlasher) {
    gunsArray[0] = x + lengthdir_x(len, image_angle);
    gunsArray[1] = y + lengthdir_y(len, image_angle);
    gunsArray[2] = x + lengthdir_x(len, image_angle + 180);
    gunsArray[3] = y + lengthdir_y(len, image_angle + 180);
} else if(object_index = objHalitosis) {
    if(sprite_index != sprHalitosisSmall) {
        gunsArray[0] = x + lengthdir_x(len, image_angle + 90);
        gunsArray[1] = y + lengthdir_y(len, image_angle + 90);
        gunsArray[2] = x + lengthdir_x(hypotenuse, image_angle + 135);
        gunsArray[3] = y + lengthdir_y(hypotenuse, image_angle + 135);
        gunsArray[4] = x + lengthdir_x(hypotenuse, image_angle + 45);
        gunsArray[5] = y + lengthdir_y(hypotenuse, image_angle + 45);
    } else {
        gunsArray[0] = x + lengthdir_x(len, image_angle + 90);
        gunsArray[1] = y + lengthdir_y(len, image_angle + 90);
        gunsArray[2] = noone;
        gunsArray[3] = noone;
        gunsArray[4] = noone;
        gunsArray[5] = noone;
    }
} else if(object_index = objPincer) {
    gunsArray[0] = x + lengthdir_x(hypotenuse, image_angle + 135);
    gunsArray[1] = y + lengthdir_y(hypotenuse, image_angle + 135);
    gunsArray[2] = x + lengthdir_x(len, image_angle + 180);
    gunsArray[3] = y + lengthdir_y(len, image_angle + 180);
    gunsArray[4] = x + lengthdir_x(len, image_angle);
    gunsArray[5] = y + lengthdir_y(len, image_angle);
} else if(object_index = objMezzanine) {
    gunsArray[0] = x + lengthdir_x(hypotenuse, image_angle + 135);
    gunsArray[1] = y + lengthdir_y(hypotenuse, image_angle + 135);
    gunsArray[2] = x + lengthdir_x(len, image_angle + 90);
    gunsArray[3] = y + lengthdir_y(len, image_angle + 90);
    gunsArray[4] = x + lengthdir_x(hypotenuse, image_angle + 45);
    gunsArray[5] = y + lengthdir_y(hypotenuse, image_angle + 45);
    gunsArray[6] = x;
    gunsArray[7] = y;
    gunsArray[8] = x + lengthdir_x(len, image_angle);
    gunsArray[9] = y + lengthdir_y(len, image_angle);
    gunsArray[10] = x + lengthdir_x(hypotenuse, image_angle + 315);
    gunsArray[11] = y + lengthdir_y(hypotenuse, image_angle + 315);
} else if(object_index = objPawn) {
    gunsArray[0] = x;
    gunsArray[1] = y;
}
