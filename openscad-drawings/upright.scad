// Originally created by Jose Julio
// https://github.com/JJulio/b-robot

include <dimensions.scad>;

module upright()
{
  translate([-(SHARED_HEIGHT)/2,0,0]) cube([SHARED_HEIGHT,SHARED_WIDTH,3]);
  translate([(SHARED_HEIGHT/2),SHARED_WIDTH/2,1.5]) cylinder(r=SHARED_WIDTH/2,h=3,$fn=32,center=true);
}

module upright_holes()
{
  // Motor shaft hole
  translate([-SHARED_HEIGHT/2,SHARED_WIDTH/2,0]) cylinder(r=12,h=10,$fn=24,center=true);
  // Motor mount holes
  translate([-(SHARED_HEIGHT-20)/2,9.5,0]) cylinder(r=1.68,h=10,$fn=8,center=true);
  translate([-(SHARED_HEIGHT-20)/2,9.5+31,0]) cylinder(r=1.68,h=10,$fn=8,center=true);

  //Holes
  for ( i = [0 : 8] ){
    translate([-(SHARED_HEIGHT-45-i*30)/2,9.5,0]) cylinder(r=1.7,h=10,$fn=8,center=true);
    translate([-(SHARED_HEIGHT-45-i*30)/2,9.5+31,0]) cylinder(r=1.7,h=10,$fn=8,center=true);
  }

  // Light holes
  for ( i = [0 : 8] ){
    translate([(SHARED_HEIGHT/2)-i*28,SHARED_WIDTH/2,0]) cylinder(r=7,h=8,$fn=24,center=true);
  }
}

difference()
{
upright();
upright_holes();
}
