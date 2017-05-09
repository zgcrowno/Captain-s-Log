return (scrIsFacingUp(global.player) && scrIsFacingRight(self)) 
        || (scrIsFacingLeft(global.player) && scrIsFacingUp(self)) 
        || (scrIsFacingDown(global.player) && scrIsFacingLeft(self)) 
        || (scrIsFacingRight(global.player) && scrIsFacingDown(self));
