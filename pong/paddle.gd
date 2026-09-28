extends CharacterBody2D

func _physics_process(_delta: float) -> void:
	var mouse_y = get_viewport().get_mouse_position().y
	position.y = clampf(mouse_y, -8.0, 550.0)
