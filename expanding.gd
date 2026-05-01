extends Area2D

@onready var sprite =$Sprite2D
@onready var saw =$Node2D2

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		trigger_spike()
	
func trigger_spike():
	var tween = create_tween()

	tween.tween_property(sprite, "scale", Vector2(2, 2), 0.15)\
		.set_trans(Tween.TRANS_BACK)\
		.set_ease(Tween.EASE_OUT)
