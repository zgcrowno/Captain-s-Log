turnTime--;
if(turnTime < 0) {
    turnTime = difficultyModifier * room_speed;
}
