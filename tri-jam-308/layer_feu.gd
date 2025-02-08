extends TileMapLayer

var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_burn(Position: Vector2i) :
	var my_random_number = rng.randf_range(0, 1)
	var x = Position[0]
	var y = Position[1]
	if get_cell_source_id(Vector2i(x+1,y)) == 1 or get_cell_source_id(Vector2i(x-1,y)) == 1 or get_cell_source_id(Vector2i(x,y+1)) == 1 or get_cell_source_id(Vector2i(x,y-1)) == 1 :
		if my_random_number < 0.2 :
			set_cell(Position, 1, Vector2i(0,0))


func _on_timer_propagation_timeout() -> void:
	for i in range(0,20) :
		for j in range(0,40) :
			update_burn(Vector2i(i,j))
				
