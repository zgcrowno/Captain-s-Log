    if(object_index == objRiceCake) {
        scrRicecakeActiveFire();
    } else if(object_index == objSidecar) {
        scrSidecarActiveFire();
    } else if(object_index == objFlasher) {
        scrFlasherActiveFire();
    } else if(object_index == objHalitosis) {
        scrHalitosisActiveFire();
    } else if(object_index == objPincer) {
        scrPincerActiveFire();
    } else if(object_index == objMezzanine) {
        scrMezzanineActiveFire();
    } else if(object_index == objNomad) {
        scrNomadActiveFire();
    }
    if(object_is_ancestor(object_index, objPlayerShip)) {
        scrSetState(global.util.initState);
    }
