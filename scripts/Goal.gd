extends Node

@export var goal_texture: Texture
@export var max_needed: int
@export var goal_string: String
var number_colected = 0
signal winner

func check_goal(goal_type):
	if goal_type == goal_string:
		update_goal()

func update_goal():
	if number_colected < max_needed:
		number_colected += 1
	if number_colected == max_needed:
		emit_signal("winner")
