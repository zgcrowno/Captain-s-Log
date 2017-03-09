param = argument0;

if(param == player) {
    if(!ds_list_empty(player.actionQueue)) {
        for(i = 0; i < ds_list_size(player.actionQueue); i++) {
            draw_text(hud.aqOneLeftBound, hud.aqOneUpperBound - ((ds_list_size(player.actionQueue) - (i + 1)) * hud.aqDistance), ds_list_find_value(player.actionQueue, i));
        }
    }
} else {
    if(player.target != noone) {
        if(!ds_list_empty(player.target.actionQueue)) {
            for(i = 0; i < ds_list_size(player.target.actionQueue); i++) {
                draw_text(hud.targetAQOneLeftBound, hud.targetAQOneUpperBound - ((ds_list_size(player.target.actionQueue) - (i + 1)) * hud.aqDistance), ds_list_find_value(player.target.actionQueue, i));
            }
        }
    }
}
