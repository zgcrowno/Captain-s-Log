var destination = irandom(array_length_1d(global.allGridBoxes) - 1);
while(!scrGridBoxIsTeleportable(global.allGridBoxes[destination])) {
    destination = irandom(array_length_1d(global.allGridBoxes) - 1);
}
x = global.allGridBoxes[destination].x + (sprite_get_width(sprGridBox) / 2);
y = global.allGridBoxes[destination].y + (sprite_get_width(sprGridBox) / 2);
currentPPActive = requiredPPActive;
