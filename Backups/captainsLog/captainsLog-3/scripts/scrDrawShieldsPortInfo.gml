draw_healthbar(global.hud.shieldsPortHPLeftBound, 
               global.hud.shieldsPortHPUpperBound, 
               global.hud.shieldsPortHPRightBound, 
               global.hud.shieldsPortHPLowerBound, 
               (global.player.currentHPShieldsPort / global.player.maxHPShieldsPort) * 100, 
               c_black, 
               c_maroon, 
               c_maroon, 
               3, 
               false, 
               false);
draw_set_color(c_maroon);
draw_line(global.hud.shieldsPortHPLeftBound,
          global.hud.shieldsPortHPUpperBound,
          global.hud.shieldsPortHPLeftBound,
          global.hud.shieldsPortHPLowerBound);
draw_line(global.hud.shieldsPortHPRightBound,
          global.hud.shieldsPortHPUpperBound,
          global.hud.shieldsPortHPRightBound,
          global.hud.shieldsPortHPLowerBound);
draw_line(global.hud.shieldsPortHPLeftBound,
          global.hud.shieldsPortHPUpperBound,
          global.hud.shieldsPortHPRightBound,
          global.hud.shieldsPortHPUpperBound);
draw_line(global.hud.shieldsPortHPLeftBound,
          global.hud.shieldsPortHPLowerBound,
          global.hud.shieldsPortHPRightBound,
          global.hud.shieldsPortHPLowerBound);
draw_healthbar(global.hud.shieldsPortPPLeftBound, 
               global.hud.shieldsPortPPUpperBound, 
               global.hud.shieldsPortPPRightBound, 
               global.hud.shieldsPortPPLowerBound, 
               (global.player.currentPPShieldsPort / global.player.requiredPPShields) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_set_color(c_teal);
draw_line(global.hud.shieldsPortPPLeftBound,
          global.hud.shieldsPortPPUpperBound,
          global.hud.shieldsPortPPLeftBound,
          global.hud.shieldsPortPPLowerBound);
draw_line(global.hud.shieldsPortPPRightBound,
          global.hud.shieldsPortPPUpperBound,
          global.hud.shieldsPortPPRightBound,
          global.hud.shieldsPortPPLowerBound);
draw_line(global.hud.shieldsPortPPLeftBound,
          global.hud.shieldsPortPPUpperBound,
          global.hud.shieldsPortPPRightBound,
          global.hud.shieldsPortPPUpperBound);
draw_line(global.hud.shieldsPortPPLeftBound,
          global.hud.shieldsPortPPLowerBound,
          global.hud.shieldsPortPPRightBound,
          global.hud.shieldsPortPPLowerBound);
draw_set_color(c_white);
draw_line(global.hud.shieldsPortPPRightBound,
          global.hud.shieldsPortPPUpperBound,
          global.hud.shieldsLeftBound + ((global.hud.shieldsRightBound - global.hud.shieldsLeftBound) / 2) - (global.player.sprite_width / 2),
          global.hud.shieldsUpperBound + ((global.hud.shieldsLowerBound - global.hud.shieldsUpperBound) / 2));
