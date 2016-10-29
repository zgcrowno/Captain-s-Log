//Move the special object in the appropriate direction from the player
x -= player.specialSpeed * cos(degtorad(directionOffset + 90));
y += player.specialSpeed * sin(degtorad(directionOffset + 90));

//Destroy the object if it's out of bounds
if(x > hud.playAreaRightBound + (sprite_width / 2)
   || x < hud.playAreaLeftBound - (sprite_width / 2)
   || y > hud.playAreaLowerBound + (sprite_height / 2)
   || y < hud.playAreaUpperBound - (sprite_height / 2)) {
    instance_destroy();   
}

//Detect interaction with enemies
for(i = 0; i < array_length_1d(pawns); i++) {
    if(position_meeting(x, y, pawns[i])) {
        instance_create(x, y, objSpecialRiceCakeContact);
        instance_destroy();
    }
}


