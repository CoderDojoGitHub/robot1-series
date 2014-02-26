// Originally created by Jose Julio
// https://github.com/JJulio/b-robot

include <dimensions.scad>;

module support()
{
  translate([-(SHARED_LENGTH)/2,0,0]) cube([SHARED_LENGTH,SHARED_WIDTH,5]);

}

module support_holes()
{
  // M3 lateral holes
  translate([(SHARED_LENGTH)/2,9.5,5/2]) rotate([0,90,0]) cylinder(r=1.68,h=40,$fn=8,center=true);
  translate([(SHARED_LENGTH)/2,9.5+31,5/2]) rotate([0,90,0]) cylinder(r=1.68,h=40,$fn=8,center=true);
  translate([-(SHARED_LENGTH)/2,9.5,5/2]) rotate([0,90,0]) cylinder(r=1.68,h=40,$fn=8,center=true);
  translate([-(SHARED_LENGTH)/2,9.5+31,5/2]) rotate([0,90,0]) cylinder(r=1.68,h=40,$fn=8,center=true);

  // M3 NUT holes
  translate([(SHARED_LENGTH)/2-(4+1.26),9-2.9,-1]) cube([2.6,5.9,7]);
  translate([(SHARED_LENGTH)/2-(4+1.26),9+31-2.9,-1]) cube([2.6,5.9,7]);
  translate([-(SHARED_LENGTH)/2+(4-1.26),9-2.9,-1]) cube([2.6,5.9,7]);
  translate([-(SHARED_LENGTH)/2+(4-1.26),9+31-2.9,-1]) cube([2.6,5.9,7]);

  // Board mount holes
  translate([45.5/2,SHARED_WIDTH/2+35/2]) cylinder(r=1.72,h=20,$fn=8,center=true);
  translate([45.5/2,SHARED_WIDTH/2-35/2]) cylinder(r=1.72,h=20,$fn=8,center=true);
  translate([-45.5/2,SHARED_WIDTH/2+35/2]) cylinder(r=1.72,h=20,$fn=8,center=true);
  translate([-45.5/2,SHARED_WIDTH/2-35/2]) cylinder(r=1.72,h=20,$fn=8,center=true);
  // Aditional holes
  translate([0,SHARED_WIDTH/2+35/2]) cylinder(r=1.72,h=20,$fn=8,center=true);
  translate([0,SHARED_WIDTH/2-35/2]) cylinder(r=1.72,h=20,$fn=8,center=true);

  // Light holes
  translate([0,SHARED_WIDTH/2,0]) cylinder(r=14,h=20,$fn=24,center=true);
  translate([-32,SHARED_WIDTH/2,0]) cylinder(r=10,h=20,$fn=24,center=true);
  translate([32,SHARED_WIDTH/2,0]) cylinder(r=10,h=20,$fn=24,center=true);
}

difference()
{
support();
support_holes();
}
