/// @desc shape_line_segment(ax,ay,bx,by);
/// @arg ax,ay,bx,by
var ax = argument0;
var ay = argument1;
var bx = argument2;
var by = argument3;

var shape = [];
shape[SHAPE_TYPE] = eShapeType.LineSegment;
shape[eShapeLineSegment.Point1] = vec2(ax,ay);
shape[eShapeLineSegment.Point2] = vec2(bx,by);
return shape;