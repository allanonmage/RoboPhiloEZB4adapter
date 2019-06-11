
// Plate
plateX = 76;
plateY = 57;
plateZThickness = 2;

plateXZero = 38;
plateYZero = 28.5;


//RoboPhilo mount variables
//Screw Hole size is to allow screws to pass through without biting
rpScrewHoleSize = 2.2;

rpXLeft = 26 + rpScrewHoleSize/2;
rpXRight = 48.1 + rpScrewHoleSize/2;
rpXMidSpace = 20;

rpYBottom = 9.3 + rpScrewHoleSize/2;
rpYTop = 38.3 + rpScrewHoleSize/2;
rpYMidSpace = 27;

//ezRobot mount variables
//Screw hole size here is to allow #4 screws to bite into it
//You can change the screwhole size and the hole will stay in the same position
ezrScrewHoleSize = 2;
ezrOffset = 17.5 + 2.55; //2.55 is the center of the hole on teh ezbv4

difference(){
union(){
// Plate
cube([plateX,plateY,plateZThickness]);

//RoboPhilo screw mounts
//fixed position based on the actual plate
//lower left
color([1,0,0])
translate([rpXLeft,rpYBottom,plateZThickness])
cylinder(5,4,4);

//lower right
color([1,0,0])
translate([rpXRight,rpYBottom,plateZThickness])
cylinder(5,4,4);

//upper left
color([1,0,0])
translate([rpXLeft,rpYTop,plateZThickness])
cylinder(5,4,4);

//upper right
color([1,0,0])
translate([rpXRight,rpYTop,plateZThickness])
cylinder(5,4,4);

//EZ Robot Screw mounts
//calculated based on the center coordinates of the plate
//lower left
color([0,1,0])
translate([plateXZero-ezrOffset,plateYZero-ezrOffset,plateZThickness])
cylinder(5,6,6);

//lower right
color([0,1,0])
translate([plateXZero+ezrOffset,plateYZero-ezrOffset,plateZThickness])
cylinder(5,6,6);

//upper left
color([0,1,0])
translate([plateXZero-ezrOffset,plateYZero+ezrOffset,plateZThickness])
cylinder(5,6,6);

//upper right
color([0,1,0])
translate([plateXZero+ezrOffset,plateYZero+ezrOffset,plateZThickness])
cylinder(5,6,6);

} //end union() of plate



//mount holes to mount to RoboPhilo
//lower left
color([0,0,1])
translate([rpXLeft,rpYBottom,-1])
cylinder(10,rpScrewHoleSize,rpScrewHoleSize);

//lower right
color([0,0,1])
translate([rpXRight,rpYBottom,-1])
cylinder(10,rpScrewHoleSize,rpScrewHoleSize);

//upper left
color([0,0,1])
translate([rpXLeft,rpYTop,-1])
cylinder(10,rpScrewHoleSize,rpScrewHoleSize);

//upper right
color([0,0,1])
translate([rpXRight,rpYTop,-1])
cylinder(10,rpScrewHoleSize,rpScrewHoleSize);

//EZ Robot Screw holes
//lower left
color([0,0,1])
translate([plateXZero-ezrOffset,plateYZero-ezrOffset, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

//lower right
color([0,0,1])
translate([plateXZero+ezrOffset,plateYZero-ezrOffset, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

//upper left
color([0,0,1])
translate([plateXZero-ezrOffset,plateYZero+ezrOffset, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

//upper right
color([0,0,1])
translate([plateXZero+ezrOffset,plateYZero+ezrOffset, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

} // end difference()


