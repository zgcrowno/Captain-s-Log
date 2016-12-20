if(script_execute(scrIsTouchingTimeline) && !touchedTimeline) {
    script_execute(scrResetNonShield);
    script_execute(scrMovement);
    script_execute(scrSetShields);
    script_execute(scrResetActionMap);
    script_execute(scrShieldManagement);
    touchedTimeline = true;
}
