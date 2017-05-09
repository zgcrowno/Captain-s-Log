draw_healthbar(global.hud.thrustersLeftBound + 60, 
               global.hud.thrustersUpperBound + ((global.hud.thrustersLowerBound - global.hud.thrustersUpperBound) / 2), 
               global.hud.thrustersLeftBound + 45, 
               global.hud.thrustersUpperBound + ((global.hud.thrustersLowerBound - global.hud.thrustersUpperBound) / 2) + 15, 
               (global.player.currentPPThrustersRotateCounterclockwise / global.player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_set_color(c_teal);
draw_line(global.hud.thrustersRotateCountPPLeftBound,
          global.hud.thrustersRotateCountPPUpperBound,
          global.hud.thrustersRotateCountPPLeftBound,
          global.hud.thrustersRotateCountPPLowerBound);
draw_line(global.hud.thrustersRotateCountPPRightBound,
          global.hud.thrustersRotateCountPPUpperBound,
          global.hud.thrustersRotateCountPPRightBound,
          global.hud.thrustersRotateCountPPLowerBound);
draw_line(global.hud.thrustersRotateCountPPLeftBound,
          global.hud.thrustersRotateCountPPUpperBound,
          global.hud.thrustersRotateCountPPRightBound,
          global.hud.thrustersRotateCountPPUpperBound);
draw_line(global.hud.thrustersRotateCountPPLeftBound,
          global.hud.thrustersRotateCountPPLowerBound,
          global.hud.thrustersRotateCountPPRightBound,
          global.hud.thrustersRotateCountPPLowerBound);
draw_set_color(c_white);
