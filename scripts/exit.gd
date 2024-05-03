extends Area2D
class_name Exit

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func animate():
	animated_sprite.play("default")
