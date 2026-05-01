extends Area2D

@export var speed = 200
@export var direction = Vector2.LEFT

@onready var sprite =$Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * speed * delta
	
	# Rotate the sprite visually so it looks like it's rolling
	# 2 * PI is a full rotation
	sprite.rotation -= 5* delta



func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene() # Replace with function body.



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		speed =300
		sprite.modulate.a=1 # Replace with function body.


func _on_level_6_saw_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		speed =0
		sprite.modulate.a=0 # Replace with function body.
