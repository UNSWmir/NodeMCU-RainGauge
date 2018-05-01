$fn = 50;
thickness = 1;
magnet_diameter = 14;
magnet_thickness = 4.5;
tipper_width = 55;
tipper_depth = 24;
tipper_height =15;
tipper_arm = 40;
tipper_arm_width = magnet_diameter+2*thickness;

// Base Parameters

ramp_height = 10;
ramp_depth = tipper_depth+2;
base_width = 80;
base_depth = base_width*0.7;
base_height = base_width*1.25;

tip_height = 30;

hall_effect_holes = 12;


module triangular_section(l,w,h){
    polyhedron(
    points=[[-l,0,0], [l,0,0], [l,w,0], [-l,w,0], [0,0,h], [0,w,h]],
    faces=[[5,4,0,3],[1,2,3,0],[5,2,1,4],[5,3,2],[1,0,4]]
          );
}

module triangular_section2(l,w,h){
    polyhedron(
    points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [l,0,h], [l,w,h]],
    faces=[[5,4,0,3],[1,2,3,0],[5,2,1,4],[5,3,2],[1,0,4]]
          );
}

module pyramid(l,w,h){
 polyhedron(
  points=[ [l,w,0],[l,-w,0],[-l,-w,0],[-l,w,0], // the four points at base
           [0,0,h]  ],                                 // the apex point 
  faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 );
}