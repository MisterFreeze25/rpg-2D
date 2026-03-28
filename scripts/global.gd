extends Node

var player_current_attack = false

var current_scene = "world" #world cliff_side
var transition_scene = false

var player_exit_cliff_side_posx = 329.0
var player_exit_cliff_side_posy = 24.0
var player_start_posx = 16.0
var player_start_posy = 63.0

var game_first_loadin = true

func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "cliff_side"
		else:
			current_scene = "world"
