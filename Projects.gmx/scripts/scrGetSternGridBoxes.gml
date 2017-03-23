adjacentGridBoxes = scrGetAdjacentGridBoxesParameterized(player);
sternShields = noone;
sternShieldsIndex = 0;

for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if(scrIsFacingUp(player)) {
        if(scrIsBelowParameterized(adjacentGridBoxes[i], player)) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
    } else if(scrIsFacingRight(player)) {
        if(scrIsLeftParameterized(adjacentGridBoxes[i], player)) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
    } else if(scrIsFacingDown(player)) {
        if(scrIsAboveParameterized(adjacentGridBoxes[i], player)) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
    } else if(scrIsFacingLeft(player)) {
        if(scrIsRightParameterized(adjacentGridBoxes[i], player)) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
    }
}

return sternShields;
