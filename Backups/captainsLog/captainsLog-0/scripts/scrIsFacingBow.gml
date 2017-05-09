return (scrIsFacingUp(global.player) && scrIsFacingDown(self)) 
        || (scrIsFacingLeft(global.player) && scrIsFacingRight(self)) 
        || (scrIsFacingDown(global.player) && scrIsFacingUp(self)) 
        || (scrIsFacingRight(global.player) && scrIsFacingLeft(self));
