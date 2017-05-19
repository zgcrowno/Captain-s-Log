var ship = argument0;

for(var i = 0; i < ds_list_size(ship.actionQueue); i++) {
    if(ship == global.player) {
        draw_text(global.hud.aqOneLeftBound, 
                  global.hud.aqOneUpperBound - ((ds_list_size(ship.actionQueue) - (i + 1)) * global.hud.aqDistance), 
                  ds_list_find_value(ship.actionQueue, i));
    } else {
        draw_text(global.hud.targetAQOneLeftBound, 
                  global.hud.targetAQOneUpperBound - ((ds_list_size(ship.actionQueue) - (i + 1)) * global.hud.aqDistance), 
                  ds_list_find_value(ship.actionQueue, i));
    }
}
