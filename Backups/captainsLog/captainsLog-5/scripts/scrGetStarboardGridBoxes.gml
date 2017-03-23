adjacentGridBoxes = scrGetAdjacentGridBoxesParameterized(player);
starboardShields = noone;
starboardShieldsIndex = 0;

for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if(scrIsFacingUp(player)) {
        if(scrIsRightParameterized(adjacentGridBoxes[i], player)) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        }
    } else if(scrIsFacingRight(player)) {
        if(scrIsBelowParameterized(adjacentGridBoxes[i], player)) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        }
    } else if(scrIsFacingDown(player)) {
        if(scrIsLeftParameterized(adjacentGridBoxes[i], player)) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        }
    } else if(scrIsFacingLeft(player)) {
        if(scrIsAboveParameterized(adjacentGridBoxes[i], player)) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        }
    }
}

return starboardShields;
