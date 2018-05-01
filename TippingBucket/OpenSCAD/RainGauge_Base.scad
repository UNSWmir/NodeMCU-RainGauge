// ----- EXTERNAL FILES
include <raingauge_parameters.scad>
    x = 2.5;
    


difference(){
union(){
    translate([0, ramp_depth/2, base_height/2]){
    difference(){
        cube([base_width, base_depth, base_height], center=true);
        translate([0,0,thickness]){
        cube([base_width-2*thickness, base_depth-2*thickness, base_height], center=true);}
        rotate([0,90,0])
        translate([base_height/2,0,0]){
cylinder(h = base_width, r=ramp_depth/2, center=true);
}
}

}
translate([0, -thickness*2, 0]){
triangular_section(base_width/2, thickness*2, ramp_height*x*2);
}
translate([0, ramp_depth, 0]){
triangular_section(base_width/2, thickness*2, ramp_height*x*2);
}
difference(){
    triangular_section(base_width/2, ramp_depth, ramp_height*x);
    translate([-base_height/2,0,ramp_height]){
        cube([base_width, ramp_depth, ramp_height*x], center=false);
    } 
}
}
rotate([90,0,0]){
        translate([0,tip_height,0]){
cylinder(h = base_width, r=1, center=true);
}
translate([0,tip_height+tipper_arm-5,-30]){
translate([0,-tipper_arm,-20]){
    cube([6xxxxxx`, 2.5, base_width/3], center=true);
}    
translate([-hall_effect_holes/2,0,0]){
    cylinder(h = base_width, r=1.5, center=true);
}
translate([hall_effect_holes/2,0,0]){
    cylinder(h = base_width, r=1.5, center=true);
}
}}}
