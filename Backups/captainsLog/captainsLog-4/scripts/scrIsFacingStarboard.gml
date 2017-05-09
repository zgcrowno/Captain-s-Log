return (scrIsFacingUp(global.player) && scrIsFacingLeft(self)) 
        || (scrIsFacingLeft(global.player) && scrIsFacingDown(self)) 
        || (scrIsFacingDown(global.player) && scrIsFacingRight(self)) 
        || (scrIsFacingRight(global.player) && scrIsFacingUp(self));
