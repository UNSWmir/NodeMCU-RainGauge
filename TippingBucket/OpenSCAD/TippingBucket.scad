// ----- EXTERNAL FILES
include <raingauge_parameters.scad>


difference(){
union(){
    cube([tipper_width,tipper_depth,thickness], center=true); // base plate
    translate([0,0,thickness/2]){
       translate([0,-tipper_depth/2,0]){
           triangular_section(tipper_width/2, thickness, tipper_height);
           triangular_section(tipper_width/10, tipper_depth, tipper_height/2);
       }; 
       translate([0,tipper_depth/2-thickness,0]){
            triangular_section(tipper_width/2, thickness, tipper_height);
            translate([-tipper_arm_width/2,0,0]){
                cube([tipper_arm_width,thickness,tipper_arm], center=false);
                translate([0,-magnet_thickness-thickness,tipper_arm-tipper_arm_width]){
            difference(){
            cube([tipper_arm_width, magnet_thickness+thickness, tipper_arm_width], center=false);
            translate([thickness,thickness,thickness]){
                cube([magnet_diameter, magnet_thickness, magnet_diameter+thickness], center=false);
        }}}}};
    }
    translate([0,0,tipper_height/2]){
        cube([thickness,tipper_depth,tipper_height], center=true);
    }
}
    rotate([90, 0, 0])
    translate([0, 2, 0]){
        cylinder(h = 50, r=1, center=true);
    }
}
translate([0, 2, 20])
rotate([90, 90, 0])
    {
triangular_section(tipper_width/10, tipper_depth, tipper_height/2);
    }







