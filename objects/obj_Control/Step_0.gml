/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button(mb_left) && (alarm[0] < 0))
    {
    instance_create_layer(mouse_x, mouse_y, layer, obj_Ball);
    alarm[0] = 5;
    }

if mouse_check_button(mb_right)
    {
    // Have each dynamic instance run the following code
    with (obj_DynamicParent)
        {
        // Find the direction from the mouse pointer to the instance
        var dir = point_direction(mouse_x, mouse_y, x, y);
        // Apply the impulse to the position the dynamic instance occupies, using the previously calculated direction to set the force part of the vector
        physics_apply_impulse(x, y, lengthdir_x(10, dir), lengthdir_y(10, dir));
        }
    }