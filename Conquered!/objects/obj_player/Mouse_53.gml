/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21BE1384
/// @DnDArgument : "var" "can_shoot"
/// @DnDArgument : "value" "1"
if(can_shoot == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 002DC59F
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "var" "mouse_x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "x"
	if(mouse_x < x)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 7931B559
		/// @DnDParent : 002DC59F
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6826236E
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "var" "mouse_x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "x"
	if(mouse_x > x)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 7323F172
		/// @DnDParent : 6826236E
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6D394749
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_cast"
	/// @DnDSaveInfo : "spriteind" "925d633c-f19b-490f-a58c-c420b26fc530"
	sprite_index = spr_player_cast;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 66F87134
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_bullet"
	/// @DnDSaveInfo : "objectid" "0cd111f1-47d0-4822-ac4a-f3e0e67ac4dc"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3082650C
	/// @DnDInput : 2
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "var" "can_shoot"
	/// @DnDArgument : "var_1" "sprite_lock"
	can_shoot = 0;
	sprite_lock = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 69C7C3CC
	/// @DnDInput : 2
	/// @DnDParent : 21BE1384
	/// @DnDArgument : "steps" "5"
	/// @DnDArgument : "steps_1" "10"
	/// @DnDArgument : "alarm_1" "2"
	alarm_set(0, 5);
	alarm_set(2, 10);
}