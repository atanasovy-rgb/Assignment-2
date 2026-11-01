extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -280.0
var jumps_left = 2
@onready var animated_sprite = $AnimatedSprite2D
@onready var collision_shape = $CollisionShape2D


func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		jumps_left = 2 
		
	if position.y > 300:
		get_tree().reload_current_scene()
		move_and_slide()

	
	if Input.is_action_just_pressed("ui_accept") and jumps_left > 0:
		velocity.y = JUMP_VELOCITY
		jumps_left -= 1


	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true

	if Input.is_action_pressed("ui_down"):
		collision_shape.scale.y = 0.5
		if direction == 0:
			animated_sprite.play("crouch")
		else:
			animated_sprite.play("roll")
	else:
		collision_shape.scale.y = 1.0
		animated_sprite.play("idle") 

	move_and_slide()
