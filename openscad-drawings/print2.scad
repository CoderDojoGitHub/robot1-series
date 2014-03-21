use <upright.scad>;
use <support_plate.scad>;

translate([15,0,0]) difference()
{
upright();
upright_holes();
}

translate([0,-55,0]) difference()
{
support();
support_holes();
}
