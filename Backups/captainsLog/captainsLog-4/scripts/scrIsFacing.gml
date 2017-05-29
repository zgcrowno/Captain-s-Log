var objectFaced = argument0;

return (scrIsFacingLeft(self) && scrIsLeft(objectFaced))
        || (scrIsFacingRight(self) && scrIsRight(objectFaced))
        || (scrIsFacingUp(self) && scrIsAbove(objectFaced))
        || (scrIsFacingDown(self) && scrIsBelow(objectFaced))
