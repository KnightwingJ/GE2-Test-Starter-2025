extends Node3D

var up_force=5
var relative:Vector2 = Vector2.ZERO
@export var speed:float = 10


func _process(delta):
	relative = Vector2.ZERO
	var v = Vector3.ZERO
		
	var mult = 1
	if Input.is_key_pressed(KEY_SHIFT):
		mult = 3
		
	var turn = Input.get_axis("left", "right") - v.x	
	if abs(turn) > 0:   
		position = position + global_transform.basis.x * speed * turn * mult * delta
			# global_translate(global_transform.basis.x * speed * turn * mult * delta)
		
	var movef = Input.get_axis("forward", "back")
	if abs(movef) > 0:     
		global_translate(global_transform.basis.z * speed * movef * mult * delta)
		
	var upanddown = Input.is_action_just_pressed("up")
	global_translate(- global_transform.basis.y * speed * mult * delta)
