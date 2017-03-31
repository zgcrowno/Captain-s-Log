if (scrIsAbove(adjacentGridBoxes[i])) {
    starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
    starboardShieldsIndex++;
    portShields[portShieldsIndex] = adjacentGridBoxes[i];
    portShieldsIndex++;
}
if (scrIsBelow(adjacentGridBoxes[i])) {
    portShields[portShieldsIndex] = adjacentGridBoxes[i];
    portShieldsIndex++;
}
if (scrIsLeft(adjacentGridBoxes[i])) {
    bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
    bowShieldsIndex++;
}
if (scrIsRight(adjacentGridBoxes[i])) {
    sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
    sternShieldsIndex++;
}
