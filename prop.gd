extends Marker3D

@export var propeller:PackedScene

func _ready() -> void:
	var prop=propeller.instantiate()
	add_child(prop)
