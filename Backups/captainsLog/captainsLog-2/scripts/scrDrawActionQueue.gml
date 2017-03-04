if(!ds_list_empty(player.actionQueue)) {
    for(i = 0; i < ds_list_size(player.actionQueue); i++) {
        draw_text(hud.aqOneLeftBound, hud.aqOneUpperBound - ((ds_list_size(player.actionQueue) - (i + 1)) * 57), ds_list_find_value(player.actionQueue, i));
    }
}
