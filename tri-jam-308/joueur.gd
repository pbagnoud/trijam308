extends CharacterBody2D

const SPEED = 390.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var raycast_right: RayCast2D = $RayCast/raycastRight

func _physics_process(delta: float) -> void:
	#
	# Get the input direction: -1,0 or 1
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_vert := Input.get_axis("move_up", "move_down")
	var direction_hor := Input.get_axis("move_left", "move_right")
	var direction := Vector2(direction_hor,direction_vert).normalized()
		
	#Déplacement
	if direction_hor:
		velocity.x = direction[0] * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction_vert:
		velocity.y = direction[1] * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	#Play animations
	animated_sprite.flip_h = false
	if direction_vert == 0 and direction_hor == 0:
		animated_sprite.play("idle")
	elif direction_vert == 1:
		animated_sprite.play("walk_down")
	elif direction_vert == -1:
		animated_sprite.play("walk_up")

	elif direction_hor == 1:
		animated_sprite.play("walk_right")
		
	elif direction_hor == -1:
		animated_sprite.flip_h = true
		animated_sprite.play("walk_right")
		
		

		
		
	#Collision avec tentes
	if raycast_right.is_colliding():
		var collider := raycast_right.get_collider()
		if collider.has("objet_disponible"):
				if collider.objet_disponible == 1:
					collider.objet_disponible = 0
	
	#Température
		
	
	move_and_slide()
