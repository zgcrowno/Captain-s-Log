if(object_index == objRiceCake || object_index == objPawn) {
    if(position_meeting(x, y, objGridBoxStatic)) {
        currentHP -= util.staticDamage
    }
}
