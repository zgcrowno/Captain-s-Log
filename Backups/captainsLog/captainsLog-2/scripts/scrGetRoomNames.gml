//Reset the array
var roomArray = 0;

var roomIndex = room;
var index = 1;

roomArray[0] = room_get_name(room);

//Assign the array values
while(room_next(roomIndex) != -1) {
    roomArray[index] = room_get_name(room_next(roomIndex));
    roomIndex = room_next(roomIndex);
    index++;
}

return roomArray;
