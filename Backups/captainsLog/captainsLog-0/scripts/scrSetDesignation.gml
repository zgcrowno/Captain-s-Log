while(designation == "") {
    designation = util.designationArray[random(array_length_1d(util.designationArray))];
}
for(i = 0; i < array_length_1d(util.designationArray); i++) {
    if(util.designationArray[i] == designation) {
        util.designationArray[i] = "";
        break;
    }
}
