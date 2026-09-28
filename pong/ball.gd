extends CharacterBody2D

var speed: float = 350.0
var direction: Vector2 = Vector2(-1, 0.5).normalized()

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())
