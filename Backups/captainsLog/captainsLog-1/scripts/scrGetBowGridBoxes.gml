adjacentGridBoxes = scrGetAdjacentGridBoxesParameterized(player);
bowShields = noone;
bowShieldsIndex = 0;

for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if(scrIsFacingUp(player)) {
        if(scrIsAboveParameterized(adjacentGridBoxes[i], player)) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        }
    } else if(scrIsFacingRight(player)) {
        if(scrIsRightParameterized(adjacentGridBoxes[i], player)) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        }
    } else if(scrIsFacingDown(player)) {
        if(scrIsBelowParameterized(adjacentGridBoxes[i], player)) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        }
    } else if(scrIsFacingLeft(player)) {
        if(scrIsLeftParameterized(adjacentGridBoxes[i], player)) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        }
    }
}

return bowShields;
