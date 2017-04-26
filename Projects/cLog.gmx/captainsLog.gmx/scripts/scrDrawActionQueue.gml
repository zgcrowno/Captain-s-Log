param = argument0;

for(i = 0; i < ds_list_size(param.actionQueue); i++) {
    if(param == player) {
        draw_text(hud.aqOneLeftBound, 
                  hud.aqOneUpperBound - ((ds_list_size(param.actionQueue) - (i + 1)) * hud.aqDistance), 
                  ds_list_find_value(param.actionQueue, i));
    } else {
        draw_text(hud.targetAQOneLeftBound, 
                  hud.targetAQOneUpperBound - ((ds_list_size(param.actionQueue) - (i + 1)) * hud.aqDistance), 
                  ds_list_find_value(param.actionQueue, i));
    }
}
