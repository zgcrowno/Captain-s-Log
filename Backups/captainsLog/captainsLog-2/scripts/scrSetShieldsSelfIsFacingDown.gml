if (scrIsAbove(adjacentGridBoxes[i])) {
    sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
    sternShieldsIndex++;
}
if (scrIsBelow(adjacentGridBoxes[i])) {
    bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
    bowShieldsIndex++;
}
if (scrIsLeft(adjacentGridBoxes[i])) {
    starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
    starboardShieldsIndex++;
}
if (scrIsRight(adjacentGridBoxes[i])) {
    portShields[portShieldsIndex] = adjacentGridBoxes[i];
    portShieldsIndex++;
}
