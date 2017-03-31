if (scrIsAbove(adjacentGridBoxes[i])) {
    bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
    bowShieldsIndex++;
}
if (scrIsBelow(adjacentGridBoxes[i])) {
    sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
    sternShieldsIndex++;
}
if (scrIsLeft(adjacentGridBoxes[i])) {
    portShields[portShieldsIndex] = adjacentGridBoxes[i];
    portShieldsIndex++;
}
if (scrIsRight(adjacentGridBoxes[i])) {
    starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
    starboardShieldsIndex++;
}
