// Originally created by Jose Julio
// https://github.com/JJulio/b-robot

include <dimensions.scad>;

module base_plate()
{
  translate([-(SHARED_LENGTH+4)/2,0,0]) cube([SHARED_LENGTH+4,SHARED_WIDTH,3]);
  translate([-(SHARED_LENGTH+4)/2,0,0]) cube([2,SHARED_WIDTH,3+10]);
  translate([(SHARED_LENGTH+4)/2-2,0,0]) cube([2,SHARED_WIDTH,3+10]);

  translate([(SHARED_LENGTH+4)/2-8,0,0]) cube([8,2,8]);
  translate([(SHARED_LENGTH+4)/2-8,SHARED_WIDTH-2,0]) cube([8,2,8]);
  translate([-(SHARED_LENGTH+4)/2,0,0]) cube([8,2,8]);
  translate([-(SHARED_LENGTH+4)/2,SHARED_WIDTH-2,0]) cube([8,2,8]);

  translate([-8,(SHARED_WIDTH/2)-11,0]) cube([16,22,15]);

}

module base_plate_holes()
{
  // Motor shaft hole
  translate([SHARED_LENGTH/2,SHARED_WIDTH/2,24]) rotate([0,90,0]) cylinder(r=14,h=10,$fn=32,center=true);
  translate([-SHARED_LENGTH/2,SHARED_WIDTH/2,24]) rotate([0,90,0]) cylinder(r=14,h=10,$fn=32,center=true);

  // Motor mount holes
  translate([-(SHARED_LENGTH+4)/2,9.5,5.5+3]) rotate([0,90,0]) cylinder(r=1.64,h=10,$fn=8,center=true);
  translate([-(SHARED_LENGTH+4)/2,9.5+31,5.5+3]) rotate([0,90,0]) cylinder(r=1.64,h=10,$fn=8,center=true);
  translate([(SHARED_LENGTH+4)/2,9.5,5.5+3]) rotate([0,90,0]) cylinder(r=1.64,h=10,$fn=8,center=true);
  translate([(SHARED_LENGTH+4)/2,9.5+31,5.5+3]) rotate([0,90,0]) cylinder(r=1.64,h=10,$fn=8,center=true);

  //translate([0,SHARED_WIDTH/2,0]) cylinder(r=12,h=10,$fn=24,center=true);
  translate([-30,SHARED_WIDTH/2,0]) cylinder(r=14,h=10,$fn=24,center=true);
  translate([30,SHARED_WIDTH/2,0]) cylinder(r=14,h=10,$fn=24,center=true);
}


difference()
{
base_plate();
base_plate_holes();
}
