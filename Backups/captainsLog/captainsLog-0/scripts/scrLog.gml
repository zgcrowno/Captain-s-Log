if(object_is_ancestor(object_index, objPlayerShip)) {
    warning = argument0;
        
    ds_list_add(global.util.log, warning);
    if(ds_list_size(global.util.log) > 8) {
        ds_list_delete(global.util.log, ds_list_size(global.util.log) - 1);
    }
    
    audio_play_sound(fxError, 1, false);
}