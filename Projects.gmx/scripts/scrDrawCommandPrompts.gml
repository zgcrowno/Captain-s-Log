if(global.util.currentState == global.util.initState) {
    scrDrawInitStateCommandPrompts();
} else if(global.util.currentState == global.util.thrusterState) {
    scrDrawThrusterStateCommandPrompts();
} else if(global.util.currentState == global.util.shieldState) {
    scrDrawShieldStateCommandPrompts();
} else if(global.util.currentState == global.util.targetState) {
    scrDrawTargetStateCommandPrompts();
} else if(global.util.currentState == global.util.gunState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.fireString), 
              global.hud.commandsUpperBound, 
              global.util.fireString);
} else if(global.util.currentState == global.util.cannonState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.fireString), 
              global.hud.commandsUpperBound, 
              global.util.fireString);
} else if(global.util.currentState == global.util.cutState) {
    scrDrawCutStateCommandPrompts();
} else if(global.util.currentState == global.util.thrusterPortState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.util.currentState == global.util.thrusterStarboardState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.util.currentState == global.util.thrusterBowState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.util.currentState == global.util.thrusterSternState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.util.currentState == global.util.thrusterRotateState) {
    scrDrawThrusterRotateStateCommandPrompts();
} else if(global.util.currentState == global.util.thrusterRotateDegreesClockwiseState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.util.currentState == global.util.thrusterRotateDegreesCounterclockwiseState) {
    draw_text(global.hud.commandsRightBound - string_width(global.util.poundString), 
              global.hud.commandsUpperBound, 
              global.util.poundString);
} else if(global.util.currentState == global.util.activeState) {
    scrDrawActiveStateCommandPrompts();
} else if(global.util.currentState == global.util.cutThrustersState) {
    scrDrawCutThrustersStateCommandPrompts();
} else if(global.util.currentState == global.util.cutThrustersRotateState) {
    scrDrawCutThrustersRotateStateCommandPrompts();
} else if(global.util.currentState == global.util.cutShieldsState) {
    scrDrawCutShieldsStateCommandPrompts();
} else if(global.util.currentState == global.util.menuInitState) {
    scrDrawMenuInitStateCommandPrompts();
}
