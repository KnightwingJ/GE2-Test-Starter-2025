extends RigidBody3D

func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_P):
		global_rotate(Vector3.UP,30)
	if Input.is_key_pressed(KEY_O):
		global_rotate(Vector3.UP,30)
