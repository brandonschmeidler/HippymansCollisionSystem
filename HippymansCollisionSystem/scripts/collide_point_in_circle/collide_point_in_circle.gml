/// @desc collide_point_in_circle(vec2,circle);
/// @arg vec2,circle
var p = argument0;
var c = argument1;
var cinst = c[SHAPE_INSTANCE];
var ccenter = c[eShapeCircle.Center];
if (instance_exists(cinst)) {
	//ccenter[0] += cinst.x;
	//ccenter[1] += cinst.y;
	var len = point_distance(0,0,ccenter[0],ccenter[1]);
	var dir = point_direction(0,0,ccenter[0],ccenter[1]) + cinst.image_angle;
	ccenter[0] = cinst.x + lengthdir_x(len,dir);
	ccenter[1] = cinst.y + lengthdir_y(len,dir);
}
var dist = vec2_subtract(ccenter, p);
return vec2_length(dist) <= c[eShapeCircle.Radius];