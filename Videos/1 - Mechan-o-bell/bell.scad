bell_width = 66.5;
bell_height = 31;

//body();
//shadow();
klapper();

module shadow(){
   //Bell
    translate([39+(bell_width/2)+8,0,0]) circle(bell_width/2);
    
    //klapper
    translate([0,-10,0]) square([39,20]);
}

module body(){
    //bell
    difference(){
        translate([39+(bell_width/2)+8,0,0]) cylinder(bell_height+15,7,7);
        translate([39+(bell_width/2)+8,0,30]) cylinder(bell_height+15,2,2);    
    }
    
    
   // translate([0,-15,0]) linear_extrude(3) square([110,30]);
}

module klapper(){
    difference(){
        
        linear_extrude(5) translate([0,-10,0]) square([39,20]);
        translate([3.85+3.25/2,15.5+3.25/2-10,0]) cylinder(8,3.5/2,3.5/2);
        translate([25.9+3.25/2,1.4+3.25/2-10,0]) cylinder(8,3.5/2,3.5/2);
        
        translate([3.85+3.25/2,15.5+3.25/2-10,0]) cylinder(1.5,3,3);
        translate([25.9+3.25/2,1.4+3.25/2-10,0]) cylinder(1.5,3,3);
    }
        difference(){
        translate([39+(bell_width/2)+8,0,0]) cylinder(bell_height+15,7,7);
        translate([39+(bell_width/2)+8,0,30]) cylinder(bell_height+15,2,2);    
    }
    difference(){
    translate([0,-15,0]) linear_extrude(3) square([110,30]);
linear_extrude(5) translate([0,-10,0]) square([39,20]);
    }
}