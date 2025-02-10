extends Node2D

@export var tent_scene: PackedScene
@export var sortie_scene: PackedScene
@onready var main: Node2D = $".."

func _ready():
	spawn_tent(5)
	spawn_sortie()

func spawn_tent(number_of_tents):
	
	for i in number_of_tents:
		
		# Generate random coordinates within the viewport.
		var x = randi() % 20 
		var y = randi() % 20 + 1
		var random_position = Vector2(64*x, 64*y)
		print("tente ", random_position)

		# Instantiate the tent scene.
		var tent_instance = tent_scene.instantiate()

		# Set the position of the tent instance.
		tent_instance.position = random_position

		# Add the tent instance to the main scene.
		add_child(tent_instance)


func spawn_sortie():
	
	# Generate random coordinates within the viewport.
	var x = randi() % 20
	var random_position = Vector2(64*x, 64*60)
	print("sortie ", random_position)

	# Instantiate the tent scene.
	var sortie_instance = sortie_scene.instantiate()

	# Set the position of the tent instance.
	sortie_instance.position = random_position

	# Add the tent instance to the main scene.
	add_child(sortie_instance)
