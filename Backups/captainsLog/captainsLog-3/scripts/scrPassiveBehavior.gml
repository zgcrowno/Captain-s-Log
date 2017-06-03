if(object_index == objEpitaph) {
    if(target != noone) {
        if(actionMap[? global.util.actionMapPassiveString] == inactive) {
            scrPassiveDivertPower();
        }
    } else {
        if(actionMap[? global.util.actionMapPassiveString] == active) {
            scrCutPassive();
        }
    }
}
