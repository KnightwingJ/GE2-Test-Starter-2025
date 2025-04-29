extends Node3D

@export var drone = "res://drone.gd"
var up_force=5
var relative:Vector2 = Vector2.ZERO
@export var speed:float = 10


func _process(delta):
	relative = Vector2.ZERO
	var v = Vector3.ZERO
	
	if Input.is_key_pressed(KEY_SPACE):
		drone.position.y=global_transform.basis.y * speed * delta
		print("KEY")
		print(global_position.y)
