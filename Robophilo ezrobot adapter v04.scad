
// Plate
plateX = 76;
plateY = 54;
plateZThickness = 2.7;

plateXZero = 38;
plateYZero = 28.5;


//RoboPhilo mount variables
//Screw Hole size is to allow screws to pass through without biting
rpScrewHoleSize = 1.5; //really radius

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
ezrOffset = 17.5 + 2.55; //2.55 is the center of the hole on the ezbv4
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

//Supports
//Left and Right
color([1,1,1])
translate([0,0,plateZThickness])
cube([6,plateY,ezrScrewMountZ]);

color([1,1,1])
translate([plateX-6,0,plateZThickness])
cube([6,plateY,ezrScrewMountZ]);

//lower left
color([1,1,1])
translate([plateXZero-ezrOffset,plateYZero-ezrOffset+2.25,plateZThickness])
rotate([0,0,-77])
cube([4.5,9,ezrScrewMountZ]);

color([1,1,1])
translate([3.8,4,plateZThickness])
rotate([0,0,-62])
cube([4.5,15,ezrScrewMountZ]);

//lower right
color([1,1,1])
translate([plateXZero+ezrOffset,plateYZero-ezrOffset-2.25,plateZThickness])
rotate([0,0,77])
cube([4.5,9,ezrScrewMountZ]);

color([1,1,1])
translate([plateX+4-6-4,0,plateZThickness])
rotate([0,0,62])
cube([4.5,15,ezrScrewMountZ]);

//upper left
color([1,1,1])
translate([plateXZero-ezrOffset+2.25,plateYZero+ezrOffset+1,plateZThickness])
rotate([0,0,225])
cube([4.5,12,ezrScrewMountZ]);

color([1,1,1])
translate([6,plateY,plateZThickness])
rotate([0,0,-104])
cube([4.5,12,ezrScrewMountZ]);

//upper right
color([1,1,1])
translate([plateXZero+ezrOffset+1,plateYZero+ezrOffset-2.25,plateZThickness])
rotate([0,0,135])
cube([4.5,12,ezrScrewMountZ]);

color([1,1,1])
translate([plateX-4.5,plateY-4.25,plateZThickness])
rotate([0,0,104])
cube([4.5,12,ezrScrewMountZ]);

// 



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

//top Robophilo cutoff
color([1,1,0])
translate([0,plateY-13,plateZThickness+ezrScrewMountZ])
cube([plateX,3,10]);

//bottom Robophilo cutoff
color([1,1,0])
translate([0,4.5,plateZThickness+ezrScrewMountZ])
cube([plateX,4,10]);

//power cutoff
color([1,1,0])
translate([plateX/2-3.5,plateY-10,-1])
cube([7,11,plateZThickness+2]);

color([1,1,1])
translate([plateX/2-3.5,plateY-2,-1])
rotate ([0,0,30])
cylinder(4,8,8,$fn=3);

color([1,1,1])
translate([plateX/2+3.5,plateY-2,-1])
rotate ([0,0,30])
cylinder(4,8,8,$fn=3);

//side holes
//left side
color([0,0,1])
translate([3.5,3.5, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

color([0,0,1])
translate([3.5,plateY/3, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

color([0,0,1])
translate([3.5,plateY*2/3, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

color([0,0,1])
translate([3.5,plateY-3.5, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

//right side
color([0,0,1])
translate([plateX-3.5,3.5, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

color([0,0,1])
translate([plateX-3.5,plateY/3, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

color([0,0,1])
translate([plateX-3.5,plateY*2/3, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);

color([0,0,1])
translate([plateX-3.5,plateY-3.5, -1])
cylinder(10,ezrScrewHoleSize,ezrScrewHoleSize);



} // end difference()





