use <shroud.scad>;
use <base_plate.scad>;

translate([0,-30,0]) difference()
{
  shroud2();
  shroud_holes2();
}

rotate([0,0,180]) translate([-10,20,0]) difference()
{
  shroud2();
  shroud_holes2();
}

rotate([0,0,90]) translate([0,-60,0]) difference()
{
  shroud();
  shroud_holes();
}

translate([0,0,0]) difference()
{
base_plate();
base_plate_holes();
}
