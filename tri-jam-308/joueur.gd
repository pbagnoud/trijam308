extends CharacterBody2D

const SPEED = 130.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:

	# Get the input direction: -1,0 or 1
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_vert := Input.get_axis("move_up", "move_right")
	var direction_hor := Input.get_axis("move_left", "move_right")
		
	if direction_hor:
		velocity.x = direction_vert * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction_vert:
		velocity.y = direction_vert * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		

	move_and_slide()
