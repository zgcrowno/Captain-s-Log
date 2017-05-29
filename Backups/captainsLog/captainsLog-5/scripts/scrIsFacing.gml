var objectFaced = argument0;

return (scrIsFacingLeft() && scrIsLeft(objectFaced))
        || (scrIsFacingRight() && scrIsRight(objectFaced))
        || (scrIsFacingUp() && scrIsAbove(objectFaced))
        || (scrIsFacingDown() && scrIsBelow(objectFaced))
