return (scrIsFacingUp(global.player) && scrIsFacingUp(self)) 
        || (scrIsFacingLeft(global.player) && scrIsFacingLeft(self)) 
        || (scrIsFacingDown(global.player) && scrIsFacingDown(self)) 
        || (scrIsFacingRight(global.player) && scrIsFacingRight(self));
