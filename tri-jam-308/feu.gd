extends TileMapLayer

@onready var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_propagation_timer_timeout() -> void:
	for i in range(0,20) :
		for j in range(0,60) : 
			var my_random_number = rng.randf_range(0, 1)
			var chance: float = 0
			if get_cell_source_id(Vector2i(i+1,j)) == 3 :
				chance += 0.2
			if get_cell_source_id(Vector2i(i-1,j)) == 3 :
				chance += 0.2
			if get_cell_source_id(Vector2i(i,j+1)) == 3 :
				chance += 0.2
			if get_cell_source_id(Vector2i(i,j-1)) == 3 :
				chance += 0.2
			if my_random_number < chance :
				set_cell(Vector2i(i,j),3, Vector2i(0,0),0)
