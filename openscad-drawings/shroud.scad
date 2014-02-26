// Originally created by Jose Julio
// https://github.com/JJulio/b-robot

// Robot Body shell

LENGTH = 108;
WIDTH = 36;
WIDTH2 = 24;

module shroud()
{
  //translate([-LENGTH/2,0,0]) cube([LENGTH,WIDTH,1]);

  translate([0,0,WIDTH/2]) scale([1,0.30]) cylinder(r=LENGTH/2+0.8,h=WIDTH,$fn=30,center=true);
  translate([LENGTH/2,0,0]) cube([0.8,15,WIDTH]);
  translate([-LENGTH/2-0.8,0,0]) cube([0.8,15,WIDTH]);


}

module shroud_holes()
{
  translate([-LENGTH/2,0,-1]) cube([LENGTH,WIDTH,WIDTH+2]);
  translate([0,0.4,WIDTH/2]) scale([1,0.3]) cylinder(r=LENGTH/2,h=WIDTH+10,$fn=64,center=true);
  translate([-LENGTH/2,10,(WIDTH-31)/2]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);
  translate([-LENGTH/2,10,(WIDTH-31)/2+31]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);
  translate([LENGTH/2,10,(WIDTH-31)/2]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);
  translate([LENGTH/2,10,(WIDTH-31)/2+31]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);

  translate([-LENGTH/2,15,WIDTH/2]) rotate([0,90,0]) scale([1,1]) cylinder(r=10,h=10,center=true,$fn=12);
  translate([LENGTH/2,15,WIDTH/2])  rotate([0,90,0]) scale([1,1]) cylinder(r=10,h=10,center=true,$fn=12);
}

module shroud2()
{
  //translate([-LENGTH/2,0,0]) cube([LENGTH,WIDTH2,1]);

  translate([0,0,WIDTH2/2]) scale([1,0.30]) cylinder(r=LENGTH/2+0.8,h=WIDTH2,$fn=64,center=true);
  translate([LENGTH/2,0,0]) cube([0.8,15,WIDTH2]);
  translate([-LENGTH/2-0.8,0,0]) cube([0.8,15,WIDTH2]);


}

module shroud_holes2()
{
  translate([-LENGTH/2,0,-1]) cube([LENGTH,WIDTH2,WIDTH2+2]);
  translate([0,0.4,WIDTH2/2]) scale([1,0.3]) cylinder(r=LENGTH/2,h=WIDTH2+10,$fn=64,center=true);
  translate([-LENGTH/2,10,(WIDTH2-15)/2]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);
  translate([-LENGTH/2,10,(WIDTH2-15)/2+15]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);
  translate([LENGTH/2,10,(WIDTH2-15)/2]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);
  translate([LENGTH/2,10,(WIDTH2-15)/2+15]) rotate([0,90,0]) cylinder(r=1.7,h=10,center=true,$fn=8);

}

difference()
{
  shroud();
  shroud_holes();
}

translate([0,-30,0]) difference()
{
  shroud2();
  shroud_holes2();
}


