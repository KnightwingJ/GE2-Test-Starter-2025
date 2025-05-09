extends Node3D

func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_P):
		position=position + global_transform.basis.y * 0.003
	if Input.is_key_pressed(KEY_W):
		position=position-global_transform.basis.z *0.003
	if Input.is_key_pressed(KEY_S):
		position=position+global_transform.basis.z *0.003
	if Input.is_key_pressed(KEY_A):
		global_rotate(Vector3.UP,0.05)
	if Input.is_key_pressed(KEY_D):
		global_rotate(Vector3.DOWN,0.05)
	if Input.is_action_just_released("up"):
		position=position - global_transform.basis.y * 0.003
	if Input.is_key_pressed(KEY_O):
		position=position - global_transform.basis.y * 0.003
	position=position
