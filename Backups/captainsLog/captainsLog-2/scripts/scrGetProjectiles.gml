//Reset the array
projectileArray = 0;

//Assign the array values
for(var i = 0; i < instance_number(objProjectile); i++) {
    projectileArray[i] = instance_find(objProjectile, i);
}

return projectileArray;
