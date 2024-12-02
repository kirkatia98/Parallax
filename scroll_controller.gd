extends Node2D

const SPEED = 120


func _process(delta: float) -> void:
	var axis = Input.get_axis("ui_left", "ui_right")

	position.x += axis * SPEED * delta

	if(Input.is_action_just_pressed("ui_cancel")):
		get_tree().quit()
