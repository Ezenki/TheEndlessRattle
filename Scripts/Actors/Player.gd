extends "res://Scripts/BaseClasses/Character_BaseClass.gd"

func _ready():
	pass

func _physics_process(delta):
	#print(Velocity)
	input()
	pass

func input():
	Velocity.y+=GRAVITY
	if Velocity.y>maxFallspeed:
		Velocity.y=maxFallspeed
	if Input.is_action_pressed("right_move"): #&& Isattacking==false:
		Velocity.x=min(Velocity.x+ACCELERATION,MAX_SPEED)
		sprite.flip_h=false
	elif Input.is_action_pressed("left_move"):# && Isattacking==false:
		Velocity.x=max(Velocity.x-ACCELERATION,-MAX_SPEED)
		sprite.flip_h=true
	else:
		Velocity.x=0
		#animPlayer.play("Idle")
	stateMachine.set_param("Velocity", Velocity.x)
	if is_on_floor():
#		if Input.is_action_just_pressed("jump"):
#			Velocity.y+=JUMP_HEIGHT
		stateMachine.set_param("is_on_floor", is_on_floor())
	else:
		stateMachine.set_param("is_on_floor", is_on_floor())
			#animPlayer.play("Jump")
			#Velocity.x=lerp(Velocity.x,0,0.2)
	stateMachine()
	Velocity=move_and_slide(Velocity, Up, true)

func _input(event):
	if Input.is_action_just_pressed("jump"):
		stateMachine.set_trigger("Jump")
		pass

func stateMachine():
	match stateMachine.get_current():
		"Idle":
			animationState.travel("Idle")
			pass
		"Run":
			animationState.travel("Run")
			pass
		"Attack":
			pass
		"Jump":
			Velocity.y+=JUMP_HEIGHT
			animationState.travel("Jump")
			pass
		"Slide":
			pass
		"Dash":
			pass
	pass # Replace with function body.

func _on_StateMachinePlayer_transited(from, to):
	print(from,">", to)
	pass
