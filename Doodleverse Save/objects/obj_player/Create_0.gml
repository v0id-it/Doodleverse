xspd = 0;
yspd = 0;
move_spd = 1;

sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;

face = DOWN

//follower
array_size = 50;

for(var i = array_size-1; i >= 1; i--)
	{
	pos_x[i] = x;
	pos_y[i] = y;
	
	toRecordSprite[i] = spr_player_down
	}
	
var support_1 = instance_create_layer(x,y, "instances", obj_support);
support_1.record = 10;