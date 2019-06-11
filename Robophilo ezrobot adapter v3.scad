
// Plate
plateX = 76;
plateY = 54;
plateZThickness = 1.5;

plateXZero = 38;
plateYZero = 28.5;


//RoboPhilo mount variables
//Screw Hole size is to allow screws to pass through without biting
rpScrewHoleSize = 1.2; //really radius

rpXLeft = 26 + 1.1;
rpXRight = 48.1 + 1.1;
rpXMidSpace = 20;

rpYBottom = 9.3 + 1.1;
rpYTop = 38.3 + 1.1;
rpYMidSpace = 27;

rpScrewMountZ = 5;
rpScrewmountDiameter = 2.5;  //really radius

//ezRobot mount variables
//Screw hole size here is to allow #4 screws to bite into it
//You can change the screwhole size and the hole will stay in the same position
ezrScrewHoleSize = 1.5; //really radius
ezrOffset = 17.5 + 2.55; //2.55 is the center of the hole on teh ezbv4
ezrScrewMountZ = 3;
ezrScrewMountDiameter = 3; //really radius

difference(){
union(){
// Plate
cube([plateX,plateY,plateZThickness]);

//RoboPhilo screw mounts
//fixed position based on the actual plate
//lower left
color([1,0,0])
translate([rpXLeft,rpYBottom,plateZThickness])
cylinder(rpScrewMountZ,rpScrewmountDiameter,rpScrewmountDiameter);

//lower right
color([1,0,0])
translate([rpXRight,rpYBottom,plateZThickness])
cylinder(rpScrewMountZ,rpScrewmountDiameter,rpScrewmountDiameter);

//upper left
color([1,0,0])
translate([rpXLeft,rpYTop,plateZThickness])
cylinder(rpScrewMountZ,rpScrewmountDiameter,rpScrewmountDiameter);

//upper right
color([1,0,0])
translate([rpXRight,rpYTop,plateZThickness])
cylinder(rpScrewMountZ,rpScrewmountDiameter,rpScrewmountDiameter);

//EZ Robot Screw mounts
//calculated based on the center coordinates of the plate
//lower left
color([0,1,0])
translate([plateXZero-ezrOffset,plateYZero-ezrOffset,plateZThickness])
cylinder(ezrScrewMountZ,ezrScrewMountDiameter,ezrScrewMountDiameter);

//lower right
color([0,1,0])
translate([plateXZero+ezrOffset,plateYZero-ezrOffset,plateZThickness])
cylinder(ezrScrewMountZ,ezrScrewMountDiameter,ezrScrewMountDiameter);

//upper left
color([0,1,0])
translate([plateXZero-ezrOffset,plateYZero+ezrOffset,plateZThickness])
cylinder(ezrScrewMountZ,ezrScrewMountDiameter,ezrScrewMountDiameter);

//upper right
color([0,1,0])
translate([plateXZero+ezrOffset,plateYZero+ezrOffset,plateZThickness])
cylinder(ezrScrewMountZ,ezrScrewMountDiameter,ezrScrewMountDiameter);

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

//top cutoff
color([1,1,0])
translate([0,plateY-13,plateZThickness])
cube([plateX,3,10]);

//bottom cutoff
color([1,1,0])
translate([0,4.5,plateZThickness+ezrScrewMountZ])
cube([plateX,4,10]);

} // end difference()


