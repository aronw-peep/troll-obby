extends CharacterBody2D

const WALKSPEED = 300
var SPEED = WALKSPEED
const JUMP_VELOCITY = -550.0
var JUMP = JUMP_VELOCITY
var LEFT = "playerleft"
var RIGHT = "playerright"


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("playerup") and is_on_floor():
		velocity.y = JUMP

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis(LEFT, RIGHT)
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2_dlvl_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.SPEED *= 3.0# Replace with function body.

func _on_level_4_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.JUMP /= 2.0 # Replace with function body.


func _on_lvl_5_controls_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		LEFT = "playerright"
		RIGHT = "playerleft"
		body.JUMP /= 1.2
