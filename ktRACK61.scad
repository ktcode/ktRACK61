//
// ktRACK61
//
//

gap1 = 0.002;
gap2 = 0.004;
th = 2;

H=53-9;


difference()
{
    union()
    {
        translate([0, 0, 0]) cube([100, 147, H]);
    }
    translate([5, 5, 0-gap1]) cube([100-5*2, 147-5*2, H+gap2]);
}
difference()
{
    union()
    {
        translate([100/2-5/2, 147-32-5/2, 0]) cube([5, 32, H]);
        translate([0, 147-32-5/2, 0]) cube([100, 5, H]);
        translate([0, 147-115-5/2, 0]) cube([100, 5, H]);
        translate([100/2-5/2, 0, 0]) cube([5, 32, H]);

        translate([100/2-4.5, 147-32-(4.5+10)/2, 0]) cube([4.5*2, (4.5+10), H+gap2]);

        translate([100/2-4.5, 147-32, 0]) cylinder(h=H, r=(4.5+10)/2, $fn=100);
        translate([100/2-4.5, 147-32-(4.5+10)/2, 0]) cube([4.5*2, (4.5+10), H]);
        translate([100/2+4.5, 147-32, 0]) cylinder(h=H, r=(4.5+10)/2, $fn=100);

        translate([100/2-4.5, 147-115, 0]) cylinder(h=H, r=(4.5+10)/2, $fn=100);
        translate([100/2-4.5, 147-115-(4.5+10)/2, 0]) cube([4.5*2, (4.5+10), H]);
        translate([100/2+4.5, 147-115, 0]) cylinder(h=H, r=(4.5+10)/2, $fn=100);

    }
    translate([100/2-4.5, 147-32, 0-gap1]) cylinder(h=H+gap2, r=4.5/2, $fn=100);
    translate([100/2-4.5, 147-32-4.5/2, 0-gap1]) cube([4.5*2, 4.5, H+gap2*2]);
    translate([100/2+4.5, 147-32, 0-gap1]) cylinder(h=H+gap2, r=4.5/2, $fn=100);

    translate([100/2-4.5, 147-115, 0-gap1]) cylinder(h=H+gap2, r=4.5/2, $fn=100);
    translate([100/2-4.5, 147-115-4.5/2, 0-gap1]) cube([4.5*2, 4.5, H+gap2]);
    translate([100/2+4.5, 147-115, 0-gap1]) cylinder(h=H+gap2, r=4.5/2, $fn=100);

}

