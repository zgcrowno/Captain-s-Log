return (scrIsFacingUp(player) && scrIsFacingDown(self)) 
        || (scrIsFacingLeft(player) && scrIsFacingRight(self)) 
        || (scrIsFacingDown(player) && scrIsFacingUp(self)) 
        || (scrIsFacingRight(player) && scrIsFacingLeft(self));
