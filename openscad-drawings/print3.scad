use <wheel.scad>;

//-- Wheel parameters
wheel_or_idiam = 90;                   //-- O-ring inner diameter
wheel_or_diam = 2;                     //-- O-ring section diameter
wheel_height = 3;
wheel_center_drill = 5.1;
wheel_hub_diam = 24;
wheel_hub_height = 10;

translate([55,0,0]) difference() {
  raw_wheel(or_idiam=wheel_or_idiam, or_diam=wheel_or_diam, h=wheel_height);

  //-- Inner drill
  cylinder(center=true, h=2*wheel_height + wheel_hub_height*2 +10, r=wheel_center_drill/2,$fn=16);
}

translate([-40,0,0]) difference() {
  raw_wheel(or_idiam=wheel_or_idiam, or_diam=wheel_or_diam, h=wheel_height);

  //-- Inner drill
  cylinder(center=true, h=2*wheel_height + wheel_hub_height*2 +10, r=wheel_center_drill/2,$fn=16);
}
