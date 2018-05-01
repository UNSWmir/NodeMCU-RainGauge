// ----- EXTERNAL FILES
include <raingauge_parameters.scad>
funnel_height = 30;

difference(){
union(){
difference(){
    union(){
        difference(){
            cube([base_width+thickness+2,base_depth+thickness+2,5], center=true); // base
            translate([0,0,-thickness]){
                cube([base_width,base_depth,5-thickness], center=true);
        }}
    rotate([0,180,0]){
        pyramid((base_width-thickness)/2,(base_depth-thickness)/2,funnel_height);
    }}
    translate([0,0,3])
    rotate([0,180,0]){
        pyramid((base_width-thickness)/2,(base_depth-thickness)/2,funnel_height);
    }
}
translate([0,0,-funnel_height+thickness]){
cylinder(h = 3, r=2.5, center=true);
}}
cylinder(h = 1000, r=1.5, center=true);
}
