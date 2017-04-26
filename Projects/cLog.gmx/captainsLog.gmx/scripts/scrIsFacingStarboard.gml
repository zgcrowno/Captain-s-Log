return (scrIsFacingUp(player) && scrIsFacingLeft(self)) 
        || (scrIsFacingLeft(player) && scrIsFacingDown(self)) 
        || (scrIsFacingDown(player) && scrIsFacingRight(self)) 
        || (scrIsFacingRight(player) && scrIsFacingUp(self));
