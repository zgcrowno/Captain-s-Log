adjacentGridBoxes = scrGetAdjacentGridBoxes();
portShieldsIndex = 0;
starboardShieldsIndex = 0;
bowShieldsIndex = 0;
sternShieldsIndex = 0;
    
//Set the shield blocks
for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if(scrIsFacingUp(self)) {
        if(scrIsAbove(adjacentGridBoxes[i])) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        } 
        if(scrIsBelow(adjacentGridBoxes[i])) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        } 
        if(scrIsLeft(adjacentGridBoxes[i])) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
        if(scrIsRight(adjacentGridBoxes[i])) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        }
    } else if(scrIsFacingRight(self)) {
        if(scrIsAbove(adjacentGridBoxes[i])) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        } 
        if(scrIsBelow(adjacentGridBoxes[i])) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        } 
        if(scrIsLeft(adjacentGridBoxes[i])) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
        if(scrIsRight(adjacentGridBoxes[i])) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        }
    } else if(scrIsFacingDown(self)) {
        if(scrIsAbove(adjacentGridBoxes[i])) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
        if(scrIsBelow(adjacentGridBoxes[i])) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        } 
        if(scrIsLeft(adjacentGridBoxes[i])) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
        }
        if(scrIsRight(adjacentGridBoxes[i])) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
    } else if(scrIsFacingLeft(self)) {
        if(scrIsAbove(adjacentGridBoxes[i])) {
            starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
            starboardShieldsIndex++;
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        }
        if(scrIsBelow(adjacentGridBoxes[i])) {
            portShields[portShieldsIndex] = adjacentGridBoxes[i];
            portShieldsIndex++;
        } 
        if(scrIsLeft(adjacentGridBoxes[i])) {
            bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
            bowShieldsIndex++;
        }
        if(scrIsRight(adjacentGridBoxes[i])) {
            sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
            sternShieldsIndex++;
        }
    }
}
