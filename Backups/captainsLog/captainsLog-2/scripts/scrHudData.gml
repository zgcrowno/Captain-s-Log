depth = 0;

playAreaLeftBound = 640;
playAreaRightBound = 1300;
playAreaUpperBound = 40;
playAreaLowerBound = 1040;

thrustersLeftBound = 57;
thrustersRightBound = 566;
thrustersUpperBound = 271;
thrustersLowerBound = 478;

shieldsLeftBound = 58;
shieldsRightBound = 568;
shieldsUpperBound = 571;
shieldsLowerBound = 767;

consoleLeftBound = 65;
consoleRightBound = 277;
consoleUpperBound = 863;
consoleLowerBound = 1028;

commandsLeftBound = 355;
commandsRightBound = 567;
commandsUpperBound = 864;
commandsLowerBound = 1029;

targetLeftBound = 1387;
targetRightBound = 1886;
targetUpperBound = 268;
targetLowerBound = 474;

gunsAndCannonLeftBound = 1381;
gunsAndCannonRightBound = 1886;
gunsAndCannonUpperBound = 564;
gunsAndCannonLowerBound = 633;

gunsLeftBound = gunsAndCannonLeftBound;
gunsRightBound = gunsAndCannonRightBound;
gunsUpperBound = gunsAndCannonUpperBound;
gunsLowerBound = gunsAndCannonUpperBound + ((gunsAndCannonLowerBound - gunsAndCannonUpperBound) / 2);

cannonLeftBound = gunsAndCannonLeftBound;
cannonRightBound = gunsAndCannonRightBound;
cannonUpperBound = gunsAndCannonUpperBound + (gunsAndCannonLowerBound - gunsAndCannonUpperBound) / 2;
cannonLowerBound = gunsAndCannonLowerBound;

activeAndPassiveLeftBound = 1381;
activeAndPassiveRightBound = 1886;
activeAndPassiveUpperBound = 710;
activeAndPassiveLowerBound = 779;

activeLeftBound = activeAndPassiveLeftBound;
activeRightBound = activeAndPassiveRightBound;
activeUpperBound = activeAndPassiveUpperBound;
activeLowerBound = activeAndPassiveUpperBound + (activeAndPassiveLowerBound - activeAndPassiveUpperBound) / 2;

passiveLeftBound = activeAndPassiveLeftBound;
passiveRightBound = activeAndPassiveRightBound;
passiveUpperBound = activeAndPassiveUpperBound + (activeAndPassiveLowerBound - activeAndPassiveUpperBound) / 2;
passiveLowerBound = activeAndPassiveLowerBound;

aggregateLeftBound = 1385;
aggregateRightBound = 1884;
aggregateUpperBound = 860;
aggregateLowerBound = 1038;
