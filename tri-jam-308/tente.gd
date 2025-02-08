extends Node2D
@onready var sprite_2d: Sprite2D = $Sprite2D

var objet_disponible: bool = true:
	set(value):
		objet_disponible = value
		sprite_2d.modulate = 666666
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
