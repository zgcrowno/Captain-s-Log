if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrCutShieldsPort();
scrCutShieldsStarboard();
scrCutShieldsBow();
scrCutShieldsStern();
