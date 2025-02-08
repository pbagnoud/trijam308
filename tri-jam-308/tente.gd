extends CollisionShape2D

@onready var sprite_2d: Sprite2D = $"../Sprite2D"

var objet_disponible: bool = true:
	set(value):
		objet_disponible = value
		sprite_2d.modulate = 666666
	
