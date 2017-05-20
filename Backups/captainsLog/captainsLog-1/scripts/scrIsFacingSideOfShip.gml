var ship = argument0;
var side = argument1;

if(side == global.util.portString) {
    return (scrIsFacingUp(ship) && scrIsFacingRight(self)) 
        || (scrIsFacingLeft(ship) && scrIsFacingUp(self)) 
        || (scrIsFacingDown(ship) && scrIsFacingLeft(self)) 
        || (scrIsFacingRight(ship) && scrIsFacingDown(self));
} else if(side == global.util.starboardString) {
    return (scrIsFacingUp(ship) && scrIsFacingLeft(self)) 
        || (scrIsFacingLeft(ship) && scrIsFacingDown(self)) 
        || (scrIsFacingDown(ship) && scrIsFacingRight(self)) 
        || (scrIsFacingRight(ship) && scrIsFacingUp(self));
} else if(side == global.util.bowString) {
    return (scrIsFacingUp(ship) && scrIsFacingDown(self)) 
        || (scrIsFacingLeft(ship) && scrIsFacingRight(self)) 
        || (scrIsFacingDown(ship) && scrIsFacingUp(self)) 
        || (scrIsFacingRight(ship) && scrIsFacingLeft(self));
} else if(side == global.util.sternString) {
    return (scrIsFacingUp(ship) && scrIsFacingUp(self)) 
        || (scrIsFacingLeft(ship) && scrIsFacingLeft(self)) 
        || (scrIsFacingDown(ship) && scrIsFacingDown(self)) 
        || (scrIsFacingRight(ship) && scrIsFacingRight(self));
}
