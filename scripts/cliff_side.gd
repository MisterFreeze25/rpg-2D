extends Node2D

func _process(delta):
	change_scenes()

func _on_cliff_side_exit_point_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true

func change_scenes():
	if global.transition_scene == true:
		if global.current_scene == "cliff_side":
			get_tree().change_scene_to_file("res://scenes/world.tscn")
			global.finish_changescenes()
