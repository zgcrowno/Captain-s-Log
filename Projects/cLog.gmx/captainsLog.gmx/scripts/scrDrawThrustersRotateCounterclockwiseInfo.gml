draw_healthbar(hud.thrustersLeftBound + 60, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2), 
               hud.thrustersLeftBound + 45, 
               hud.thrustersUpperBound + ((hud.thrustersLowerBound - hud.thrustersUpperBound) / 2) + 15, 
               (player.currentPPThrustersRotateCounterclockwise / player.requiredPPThrustersRotate) * 100, 
               c_black, 
               c_teal, 
               c_teal, 
               3, 
               false, 
               false);
draw_set_color(c_teal);
draw_line(hud.thrustersRotateCountPPLeftBound,
          hud.thrustersRotateCountPPUpperBound,
          hud.thrustersRotateCountPPLeftBound,
          hud.thrustersRotateCountPPLowerBound);
draw_line(hud.thrustersRotateCountPPRightBound,
          hud.thrustersRotateCountPPUpperBound,
          hud.thrustersRotateCountPPRightBound,
          hud.thrustersRotateCountPPLowerBound);
draw_line(hud.thrustersRotateCountPPLeftBound,
          hud.thrustersRotateCountPPUpperBound,
          hud.thrustersRotateCountPPRightBound,
          hud.thrustersRotateCountPPUpperBound);
draw_line(hud.thrustersRotateCountPPLeftBound,
          hud.thrustersRotateCountPPLowerBound,
          hud.thrustersRotateCountPPRightBound,
          hud.thrustersRotateCountPPLowerBound);
draw_set_color(c_white);
