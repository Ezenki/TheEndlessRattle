extends Node2D

export(NodePath) var Player

onready var sceneCamera=$Scene_camera
onready var playercamtrack:RemoteTransform2D=$Player/Cam_track
onready var worldGen=$WorldGenerator


func _ready():
	playercamtrack.remote_path=sceneCamera.get_path()
	pass 


func _process(delta):
	pass


