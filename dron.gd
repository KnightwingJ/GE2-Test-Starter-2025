extends Node3D


func _process(delta: float) -> void:
	_input

func _input(event):
	if event is InputEvent and event.pressed:
		if event.key_code == KEY_P:
			position.y = global_position.y +10
