extends KinematicBody2D

#constant vars
const Up=Vector2.UP
const GRAVITY=300
const maxFallspeed=3000
const ACCELERATION=50
const DOWN=Vector2.DOWN
const SNAP_LENGTH=120.0

var Velocity=Vector2()
var snap_vector=SNAP_LENGTH*DOWN

var MAX_SPEED=800

#exports
export(int) var Health
export(int) var moveSpeed
export(int) var JUMP_HEIGHT

onready var animationTree=$AnimationTree
onready var stateMachine=$StateMachinePlayer
onready var animPlayer=$AnimationPlayer
onready var sprite=$AnimatedSprite
onready var animationState=animationTree.get("parameters/playback")

func _ready():
	pass

func _process(delta):
	pass

