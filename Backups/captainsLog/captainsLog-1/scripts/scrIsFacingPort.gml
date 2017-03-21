return (scrIsFacingUp(player) && scrIsFacingRight(self)) 
        || (scrIsFacingLeft(player) && scrIsFacingUp(self)) 
        || (scrIsFacingDown(player) && scrIsFacingLeft(self)) 
        || (scrIsFacingRight(player) && scrIsFacingDown(self));
