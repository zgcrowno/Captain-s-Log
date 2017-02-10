adjacentGridBoxes = script_execute(scrGetAdjacentGridBoxes);
    
//Reset the shield blocks in case of movement
for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    adjacentGridBoxes[i].sprite_index = sprGridBox;
}
    
//Reset the shield array values
portShields = noone;
starboardShields = noone;
bowShields = noone;
sternShields = noone;
