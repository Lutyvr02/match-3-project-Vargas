extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func slide_in():
	$AnimationPlayer.play("new_animation")
	
func slide_out():
	$AnimationPlayer.play_backwards("new_animation")

func _on_quitbutton_pressed():
	get_tree().quit()


func _on_restart_buttom_pressed():
	var tree = get_tree()
	tree.change_scene_to_file("res://scenes/game.tscn")


func _on_grid_finalwin():
	slide_in()
