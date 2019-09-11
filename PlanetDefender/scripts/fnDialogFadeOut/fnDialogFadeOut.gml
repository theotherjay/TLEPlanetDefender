/// @description fnDialogFadeOut(objectId, x, y)
//argument0 = dialog object id to create ( if chaining ) after this one is destroyed
//argument1 = x pos to place the next dialog
//argument2 = y pos to place the next dialog
image_alpha = clamp(image_alpha - 0.01, 0, 1);

if(image_alpha <= 0.0)
{
	instance_destroy(id);
	if(!is_undefined(argument0))
	{
		var xPos = is_undefined(argument1)? 0: argument1;
		var yPos = is_undefined(argument2)? 0: argument2;
		instance_create_layer(xPos,yPos,"Dialog",argument0);
	}
}
