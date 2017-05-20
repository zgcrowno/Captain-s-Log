var str = argument0;    //The port, starboard, bow or stern string

if(str == global.util.portString) {
    return (scrIsFacingUp(global.player) && scrIsRight(global.player))
        || (scrIsFacingLeft(global.player) && scrIsAbove(global.player))
        || (scrIsFacingDown(global.player) && scrIsLeft(global.player))
        || (scrIsFacingRight(global.player) && scrIsBelow(global.player));
} else if(str == global.util.starboardString) {
    return (scrIsFacingUp(global.player) && scrIsLeft(global.player))
        || (scrIsFacingLeft(global.player) && scrIsBelow(global.player))
        || (scrIsFacingDown(global.player) && scrIsRight(global.player))
        || (scrIsFacingRight(global.player) && scrIsAbove(global.player));
} else if(str == global.util.bowString) {
    return (scrIsFacingUp(global.player) && scrIsBelow(global.player))
        || (scrIsFacingLeft(global.player) && scrIsRight(global.player))
        || (scrIsFacingDown(global.player) && scrIsAbove(global.player))
        || (scrIsFacingRight(global.player) && scrIsLeft(global.player));
} else if(str == global.util.sternString) {
    return (scrIsFacingUp(global.player) && scrIsAbove(global.player))
        || (scrIsFacingLeft(global.player) && scrIsLeft(global.player))
        || (scrIsFacingDown(global.player) && scrIsBelow(global.player))
        || (scrIsFacingRight(global.player) && scrIsRight(global.player));
}
