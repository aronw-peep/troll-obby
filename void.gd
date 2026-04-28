extends Area2D

@onready var sprite = $Sprite2D
@onready var timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		sprite.modulate.a=1
		timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene() # Replace with function body.
