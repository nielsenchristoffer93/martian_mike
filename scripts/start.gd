extends StaticBody2D
class_name Start

@onready var spawn_position: Marker2D = $SpawnPosition

func get_spawn_pos():
	return spawn_position.global_position
