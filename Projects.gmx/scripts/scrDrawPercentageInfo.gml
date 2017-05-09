draw_text(global.hud.thrustersPercentRightBound - string_width(string(global.player.percentPPThrusters)), 
          global.hud.thrustersPercentLowerBound - string_height("Something"), 
          global.player.percentPPThrusters);
draw_text(global.hud.shieldsPercentRightBound - string_width(string(global.player.percentPPShields)), 
          global.hud.shieldsPercentLowerBound - string_height("Something"), 
          global.player.percentPPShields);
draw_text(global.hud.gunsPercentRightBound - string_width(string(global.player.percentPPGuns)), 
          global.hud.gunsPercentLowerBound - string_height("Something"), 
          global.player.percentPPGuns);
draw_text(global.hud.cannonPercentRightBound - string_width(string(global.player.percentPPCannon)), 
          global.hud.cannonPercentLowerBound - string_height("Something"), 
          global.player.percentPPCannon);
draw_text(global.hud.activePercentRightBound - string_width(string(global.player.percentPPActive)), 
          global.hud.activePercentLowerBound - string_height("Something"), 
          global.player.percentPPActive);
draw_text(global.hud.passivePercentRightBound - string_width(string(global.player.percentPPPassive)), 
          global.hud.passivePercentLowerBound - string_height("Something"), 
          global.player.percentPPPassive);
