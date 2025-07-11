/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_sprites_hellcannon_right)
inst = instance_place(x,y,obj_sprites_hellcannon_right)

facing = -1
hspd = -1
vspd = 0

run_now = 0;
prep_now = 0;
turning = 0;
knockback_now = 0;

grenadeTimer = 0;

inst_circle = collision_rectangle(x-280,y,x+280,y,obj_player,false,true)
inst_circle2 = -1;
inst_collision = ((place_meeting(x,y+1,obj_block)) && (position_meeting(x+(facing*8),bbox_bottom+(1),obj_block)) or (place_meeting(x,y+(1),obj_slope1_right)) or (place_meeting(x,y+(1),obj_slope1_left)))
inst_collision2 = ((place_meeting(x,y+1,obj_block)) && (!position_meeting(x+(facing*8),bbox_bottom+(1),obj_block)) && (!place_meeting(x,y+(1),obj_slope1_right)) && (!place_meeting(x,y+(1),obj_slope1_left)))
inst_blockfree = (place_meeting(x,y+1,obj_block)) && (!position_meeting(x+(facing*8),bbox_bottom+(1),obj_block)) && (!position_meeting(x+(facing*8),y,obj_block))
&& (!place_meeting(x,y+(1),obj_slope1_left)) && (!place_meeting(x,y+(1),obj_slope1_right))
&& (!place_meeting(x+hspd,y+1,obj_slope1_left)) && (!place_meeting(x+hspd,y+1,obj_slope1_right))

onSlope = 0;

blockInFront = (place_meeting(x+(hspd),y,obj_block))
slopeInFront = (!place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_slope1_right)) && (!place_meeting(x+hspd,y,obj_newslope_left)) && (!place_meeting(x+hspd,y,obj_newslope_right))

collision_othertoad = 0