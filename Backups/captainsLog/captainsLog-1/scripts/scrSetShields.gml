var adjacentGridBoxes = scrGetAdjacentGridBoxes();
var portShieldsIndex = 0;
var starboardShieldsIndex = 0;
var bowShieldsIndex = 0;
var sternShieldsIndex = 0;
    
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
