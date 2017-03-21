return (scrIsFacingUp(player) && scrIsFacingUp(self)) 
        || (scrIsFacingLeft(player) && scrIsFacingLeft(self)) 
        || (scrIsFacingDown(player) && scrIsFacingDown(self)) 
        || (scrIsFacingRight(player) && scrIsFacingRight(self));
