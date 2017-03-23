return (scrIsFacingUp(player) && scrIsBelow(player))
        || (scrIsFacingLeft(player) && scrIsRight(player))
        || (scrIsFacingDown(player) && scrIsAbove(player))
        || (scrIsFacingRight(player) && scrIsLeft(player));
