extends Marker3D

@export var drone_body:PackedScene
var drone
var camera


func _ready() -> void:
	drone = drone_body.instantiate()
	add_child(drone)
	camera=$"../Camera3D"
