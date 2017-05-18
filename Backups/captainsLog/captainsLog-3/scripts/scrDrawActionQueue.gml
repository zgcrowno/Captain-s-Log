var param = argument0;

for(var i = 0; i < ds_list_size(param.actionQueue); i++) {
    if(param == global.player) {
        draw_text(global.hud.aqOneLeftBound, 
                  global.hud.aqOneUpperBound - ((ds_list_size(param.actionQueue) - (i + 1)) * global.hud.aqDistance), 
                  ds_list_find_value(param.actionQueue, i));
    } else {
        draw_text(global.hud.targetAQOneLeftBound, 
                  global.hud.targetAQOneUpperBound - ((ds_list_size(param.actionQueue) - (i + 1)) * global.hud.aqDistance), 
                  ds_list_find_value(param.actionQueue, i));
    }
}
