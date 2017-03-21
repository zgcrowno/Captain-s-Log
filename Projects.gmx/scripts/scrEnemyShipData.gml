//The Captain's Name
designation = "";

//The Captain's Family Status
family = util.familyArray[random(array_length_1d(util.familyArray))];

//The Captain's Temperament
temper = util.temperArray[random(array_length_1d(util.temperArray))];

//The Captain's Age
age = irandom_range(util.minimumAge, util.maximumAge);

//The color of the enemy's target line
targetLineColor = irandom(1000000);

//The Player Instance
player = instance_find(objPlayerShip, 0);
