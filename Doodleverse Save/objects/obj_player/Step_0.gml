right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

//get speed
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//pause
if instance_exists(obj_pauser)
	{
	xspd = 0;
	yspd = 0;
	}

//set sprite
mask_index = sprite[DOWN]
if yspd == 0 
	{
	if xspd > 0 {face=RIGHT}
	if xspd < 0 {face=LEFT}
	}
if xspd > 0 && face == LEFT {face=RIGHT}
if xspd < 0 && face == RIGHT {face=LEFT}
if xspd == 0
	{
	if yspd > 0 {face=DOWN}
	if yspd < 0 {face=UP}
	}
if yspd > 0 && face == UP {face=DOWN}
if yspd < 0 && face == DOWN {face=UP}

//the collisions
if place_meeting(x + xspd, y, obj_wall) == true
	{
	xspd = 0
	}
if place_meeting(x, y + yspd, obj_wall) == true
	{
	yspd = 0
	}

x += xspd;
y += yspd;

sprite_index = sprite[face];

if xspd == 0 && yspd == 0
	{
	image_index = 0	
	}
	
//depth
depth = -bbox_bottom - 1

// update recording
if (x != xprevious || x != yprevious)
	{
	for(var i = array_size-1; i >= 1; i--)
	{
	pos_x[i] = pos_x[i-1];
	pos_y[i] = pos_y[i-1];
	
	toRecordSprite[i] = toRecordSprite[i-1];
	}
	pos_x[0] = x;
	pos_y[0] = y;
	
	toRecordSprite[0] = sprite_index;
	}
	
