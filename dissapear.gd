extends Area2D
@onready var sprite = $Sprite2D

func _on_body_entered(body: Node2D) -> void:
	self.collision_layer=0
	sprite.modulate.a=0
