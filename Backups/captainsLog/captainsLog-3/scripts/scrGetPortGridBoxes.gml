adjacentGridBoxes = scrGetAdjacentGridBoxesParameterized(player);
portShields = noone;
portShieldsIndex = 0;

for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if(scrIsFacingUp(player)) {
        if(scrIsLeftParameterized(adjacentGridBoxes[i], player)) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
    } else if(scrIsFacingRight(player)) {
        if(scrIsAboveParameterized(adjacentGridBoxes[i], player)) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
    } else if(scrIsFacingDown(player)) {
        if(scrIsRightParameterized(adjacentGridBoxes[i], player)) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
    } else if(scrIsFacingLeft(player)) {
        if(scrIsBelowParameterized(adjacentGridBoxes[i], player)) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
    }
}

return portShields;
