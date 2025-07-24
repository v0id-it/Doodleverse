right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

switch(obj_player.toRecordSprite[record])
//switch(obj_player.sprite_index)
{
    case spr_player_left: sprite_index = spr_support_left; break;
    case spr_player_right: sprite_index = spr_support_right; break;
    case spr_player_up: sprite_index = spr_support_up; break;
    case spr_player_down: sprite_index = spr_support_down; break;
    default:
        show_debug_message("ERROR: Invalid sprite in toRecordSprite[" + string(record) + "]");
        sprite_index = spr_support_down; // Assign a fallback sprite
}

//the collisions
if place_meeting(x + xspd, y, obj_wall) == true
	{
	xspd = 0
	}
if place_meeting(x, y + yspd, obj_wall) == true
	{
	yspd = 0
	}
	

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if xspd == 0 && yspd == 0
	{
	image_index = 0	
	}

//depth
depth = -bbox_bottom

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];

image_speed = obj_player.image_speed;

