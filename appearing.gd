extends Area2D

@onready var sprite = $Sprite2D
@onready var timer2 = $Timer2


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		sprite.modulate.a=1 # Replace with function body.
