    adjacentGridBoxes = script_execute(scrGetAdjacentGridBoxes);
    portShieldsIndex = 0;
    starboardShieldsIndex = 0;
    bowShieldsIndex = 0;
    sternShieldsIndex = 0;
    
    //Set the shield blocks
    for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
        if(image_angle % 360 == 0) {
            if(adjacentGridBoxes[i].y < (y - (sprite_height / 2) - sprite_get_width(sprGridBox))) {
                bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
                bowShieldsIndex++;
            } 
            if(adjacentGridBoxes[i].y > y) {
                sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
                sternShieldsIndex++;
            } 
            if(adjacentGridBoxes[i].x < (x - (sprite_width / 2) - sprite_get_width(sprGridBox))) {
                portShields[portShieldsIndex] = adjacentGridBoxes[i];
                portShieldsIndex++;
            }
            if(adjacentGridBoxes[i].x > x) {
                starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
                starboardShieldsIndex++;
            }
        } else if(abs(image_angle % 360) == 90) {
            if(adjacentGridBoxes[i].y < (y - (sprite_height / 2) - sprite_get_width(sprGridBox))) {
                portShields[portShieldsIndex] = adjacentGridBoxes[i];
                portShieldsIndex++;
            } 
            if(adjacentGridBoxes[i].y > y) {
                starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
                starboardShieldsIndex++;
            } 
            if(adjacentGridBoxes[i].x < (x - (sprite_width / 2) - sprite_get_width(sprGridBox))) {
                sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
                sternShieldsIndex++;
            }
            if(adjacentGridBoxes[i].x > x) {
                bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
                bowShieldsIndex++;
            }
        } else if(abs(image_angle % 360) == 180) {
            if(adjacentGridBoxes[i].y < (y - (sprite_height / 2) - sprite_get_width(sprGridBox))) {
                sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
                sternShieldsIndex++;
            }
            if(adjacentGridBoxes[i].y > y) {
                bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
                bowShieldsIndex++;
            } 
            if(adjacentGridBoxes[i].x < (x - (sprite_width / 2) - sprite_get_width(sprGridBox))) {
                starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
                starboardShieldsIndex++;
            }
            if(adjacentGridBoxes[i].x > x) {
                portShields[portShieldsIndex] = adjacentGridBoxes[i];
                portShieldsIndex++;
            }
        } else if(abs(image_angle % 360) == 270) {
            if(adjacentGridBoxes[i].y < (y - (sprite_height / 2) - sprite_get_width(sprGridBox))) {
                starboardShields[starboardShieldsIndex] = adjacentGridBoxes[i];
                starboardShieldsIndex++;
                portShields[portShieldsIndex] = adjacentGridBoxes[i];
                portShieldsIndex++;
            }
            if(adjacentGridBoxes[i].y > y) {
                portShields[portShieldsIndex] = adjacentGridBoxes[i];
                portShieldsIndex++;
            } 
            if(adjacentGridBoxes[i].x < (x - (sprite_width / 2) - sprite_get_width(sprGridBox))) {
                bowShields[bowShieldsIndex] = adjacentGridBoxes[i];
                bowShieldsIndex++;
            }
            if(adjacentGridBoxes[i].x > x) {
                sternShields[sternShieldsIndex] = adjacentGridBoxes[i];
                sternShieldsIndex++;
            }
        }
    }
