/// @ship movement script

if (keyboard_check(vk_left) )
{
	image_angle = image_angle + 5;
}

if (keyboard_check(vk_right) )
{
	image_angle = image_angle - 5;	
}

if (keyboard_check(vk_up) )
{
	motion_add(image_angle, .5);	
}

if (speed > 0)
{
	speed = speed - .2;
}

speed = clamp(speed, 0, 7);

if (keyboard_check_pressed(vk_space) )
{
	bullet = instance_create_depth(x, y, 0, oBullet);	
	bullet.direction = image_angle;
	bullet.speed = 10;
}

move_wrap(true, true, 20);