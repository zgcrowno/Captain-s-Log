//This script is meant to be run only by the Halitosis ship
var gb = argument0;

if(scrGridBoxIsAdjacent(gb)) {
    if(scrIsFacingUp(self)) {
        if(((gridBox.x > bbox_left - gridBox.sprite_width && gridBox.x < x - gridBox.sprite_width)
            || (gridBox.x < bbox_right && gridBox.x > x))
           && gridBox.y < bbox_top - gridBox.sprite_width) {
            return true;
        }
    } else if(scrIsFacingLeft(self)) {
        if(((gridBox.y < bbox_bottom && gridBox.y > y)
            || (gridBox.y > bbox_top - gridBox.sprite_width && gridBox.y < y - gridBox.sprite_width))
           && gridBox.x < bbox_left - gridBox.sprite_width) {
            return true;
        }
    } else if(scrIsFacingDown(self)) {
        if(((gridBox.x > bbox_left - gridBox.sprite_width && gridBox.x < x - gridBox.sprite_width)
            || (gridBox.x < bbox_right && gridBox.x > x))
           && gridBox.y > bbox_bottom) {
            return true;
        }
    } else {
        if(((gridBox.y < bbox_bottom && gridBox.y > y)
            || (gridBox.y > bbox_top - gridBox.sprite_width && gridBox.y < y - gridBox.sprite_width))
           && gridBox.x > bbox_right) {
            return true;
        }
    }
    return false;
} else {
    return false;
}
