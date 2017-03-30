if (scrIsAbove(adjacentGridBoxes[i])) {
    portShields[portShieldsIndex] = adjacentGridBoxes[i];
    portShieldsIndex++;
}
if (scrIsBelow(adjacentGridBoxes[i])) {
    starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
    starboardShieldsIndex++;
}
if (scrIsLeft(adjacentGridBoxes[i])) {
    sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
    sternShieldsIndex++;
}
if (scrIsRight(adjacentGridBoxes[i])) {
    bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
    bowShieldsIndex++;
}
