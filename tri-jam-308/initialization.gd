extends Node

@export var tent_scene: PackedScene
@export var sortie_scene: PackedScene

func _ready():
	spawn_tent()
	spawn_sortie()

func spawn_tent():
	
	# Generate random coordinates within the viewport.
	var x = randi() % 30
	var y = randi() % 30
	var random_position = Vector2(x, y)
	print("tente ", random_position)

	# Instantiate the tent scene.
	var tent_instance = tent_scene.instantiate()

	# Set the position of the tent instance.
	tent_instance.position = random_position

	# Add the tent instance to the main scene.
	add_child(tent_instance)

func spawn_sortie():
	
	# Generate random coordinates within the viewport.
	var x = randi() % 30
	var random_position = Vector2(x, 60)
	print("sortie ", random_position)

	# Instantiate the tent scene.
	var sortie_instance = sortie_scene.instantiate()

	# Set the position of the tent instance.
	sortie_instance.position = random_position

	# Add the tent instance to the main scene.
	add_child(sortie_instance)
