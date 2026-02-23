extends CharacterBody2D

@export var speed = 200
@export var health = 50

# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	elif Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	elif Input.is_action_pressed("move_up"):
		direction.y -= 1
	
	velocity = direction * speed
	move_and_slide()
