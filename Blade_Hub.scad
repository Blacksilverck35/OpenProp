// ##################################################
// VARS
// ##################################################


// Blade Mount
$fn=80;
delta = 0.01;
Gear_Diameter = 3.87;
// press
fitGear_Height = 5;
Blade_Hub_Diameter=22;
Blade_Hub_Height=Gear_Height/2+1;
Screw_Diameter=2.5;


// ##################################################
// DO STUFF
// ##################################################


difference() {
  union() {
    cylinder(d=Blade_Hub_Diameter, h=Blade_Hub_Height);
    cylinder(d=Blade_Hub_Diameter/2, h=2*Blade_Hub_Height);
  }
  // a hole to press-fit the gear
  translate([0,0,-delta])
    cylinder(d=Gear_Diameter, h=Gear_Height);
  // 3 holes for the screws
  rotate([0,0,0])
    translate([0,2*Blade_Hub_Diameter/5,-Blade_Hub_Height/2])
      cylinder(d=Screw_Diameter, h=2*Blade_Hub_Height);
  rotate([0,0,120])
    translate([0,2*Blade_Hub_Diameter/5,-Blade_Hub_Height/2])
      cylinder(d=Screw_Diameter, h=2*Blade_Hub_Height);
  rotate([0,0,-120])
    translate([0,2*Blade_Hub_Diameter/5,-Blade_Hub_Height/2])
      cylinder(d=Screw_Diameter, h=2*Blade_Hub_Height);
}
