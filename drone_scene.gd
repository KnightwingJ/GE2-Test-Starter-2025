extends Marker3D

@export var drone_body:PackedScene

func _ready() -> void:
	var drone = drone_body.instantiate()
	add_child(drone)
