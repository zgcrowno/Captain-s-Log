scrCutThrustersPort();
scrCutThrustersStarboard();
scrCutThrustersBow();
scrCutThrustersStern();
scrCutThrustersRotateClockwise();
scrCutThrustersRotateCounterclockwise();
scrCutShieldsPort();
scrCutShieldsStarboard();
scrCutShieldsBow();
scrCutShieldsStern();
scrCutGuns();
scrCutCannon();
scrCutPassive();
scrCutTarget();

if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}
