draw_text(hud.thrustersPercentRightBound - string_width(string(player.percentPPThrusters)), 
          hud.thrustersPercentLowerBound - string_height("Something"), 
          player.percentPPThrusters);
draw_text(hud.shieldsPercentRightBound - string_width(string(player.percentPPShields)), 
          hud.shieldsPercentLowerBound - string_height("Something"), 
          player.percentPPShields);
draw_text(hud.gunsPercentRightBound - string_width(string(player.percentPPGuns)), 
          hud.gunsPercentLowerBound - string_height("Something"), 
          player.percentPPGuns);
draw_text(hud.cannonPercentRightBound - string_width(string(player.percentPPCannon)), 
          hud.cannonPercentLowerBound - string_height("Something"), 
          player.percentPPCannon);
draw_text(hud.activePercentRightBound - string_width(string(player.percentPPActive)), 
          hud.activePercentLowerBound - string_height("Something"), 
          player.percentPPActive);
draw_text(hud.passivePercentRightBound - string_width(string(player.percentPPPassive)), 
          hud.passivePercentLowerBound - string_height("Something"), 
          player.percentPPPassive);
