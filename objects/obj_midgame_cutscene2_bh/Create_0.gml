//if not midgame cutscene
if (global.cutscene = 0) && (global.cutscene_presuit = 0) && (global.midgame = 0) && (global.corrupted = 0)
{
	instance_destroy();
	exit;
}

//if cutscene has already played before
if (global.cutsceneID[Cutscenes.midgameScientist] == 1)
{
	instance_destroy();
	exit;
}

instance_create_layer(650,536,layer_get_id("Inst_scrn"),obj_scrnDark_trueintro_fadeout)

image_speed = 0;
image_index = 0;

if (instance_exists(obj_bh))
{
	instance_destroy(obj_bh)
}

if (instance_exists(obj_player))
{
	instance_destroy(obj_player)
}

if (instance_exists(object_player2_0_sprites))
{
	instance_destroy(object_player2_0_sprites)
}

if (instance_exists(obj_camera))
{
	obj_camera.x = 644;
	obj_camera.y = 565;
}