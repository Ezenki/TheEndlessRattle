extends Position2D

export(PackedScene) var groundChunk

func _ready():
	pass

func spawn_ground(pos:Vector2)->void :
	var groundInstance=groundChunk.instance()
	groundInstance.global_position=pos
	add_child(groundInstance)
	pass
