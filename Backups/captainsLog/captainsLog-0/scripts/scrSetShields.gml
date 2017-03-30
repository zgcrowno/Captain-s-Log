adjacentGridBoxes = scrGetAdjacentGridBoxes();
portShieldsIndex = 0;
starboardShieldsIndex = 0;
bowShieldsIndex = 0;
sternShieldsIndex = 0;
    
//Set the shield blocks
for(i = 0; i < array_length_1d(adjacentGridBoxes); i++) {
    if(scrIsFacingUp(self)) {
        scrSetShieldsSelfIsFacingUp();
    } else if(scrIsFacingRight(self)) {
        scrSetShieldsSelfIsFacingRight();
    } else if(scrIsFacingDown(self)) {
        scrSetShieldsSelfIsFacingDown();
    } else if(scrIsFacingLeft(self)) {
        scrSetShieldsSelfIsFacingLeft();
    }
}
