/// @description Create collision if required

mycol = instance_create_layer(x, y, "Main", obj_semisolid);
with (mycol)	
	image_xscale = other.image_xscale;