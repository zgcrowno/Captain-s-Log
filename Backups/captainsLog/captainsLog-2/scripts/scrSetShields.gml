adjacentGridBoxes = scrGetAdjacentGridBoxes();
portShieldsIndex = 0;
starboardShieldsIndex = 0;
bowShieldsIndex = 0;
sternShieldsIndex = 0;
    
//Set the shield blocks
for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if (scrIsBowShield(adjacentGridBoxes[i])) {
        bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
        bowShieldsIndex++;
    }
    if (scrIsSternShield(adjacentGridBoxes[i])) {
        sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
        sternShieldsIndex++;
    }
    if (scrIsPortShield(adjacentGridBoxes[i])) {
        portShields[portShieldsIndex] = adjacentGridBoxes[i];
        portShieldsIndex++;
    }
    if (scrIsStarboardShield(adjacentGridBoxes[i])) {
        starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
        starboardShieldsIndex++;
    }
}
