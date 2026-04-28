extends Area2D
@onready var timer = $Timer

const PATHBEGIN = "res://levels/level"


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		timer.start()

func _on_timer_timeout() -> void:
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int()+1
	var next_level_path = PATHBEGIN + str(next_level_number)+".tscn"
	get_tree().change_scene_to_file(next_level_path)
