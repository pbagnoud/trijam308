extends Area2D

@onready var sprite_2d: Sprite2D = $"../Sprite2D"
@onready var objet_disponible: bool = true
@onready var objet_à_portée : bool = false

	
func _on_body_entered(Body: CharacterBody2D) -> void:	
	objet_disponible = false
	objet_à_portée = true
	sprite_2d.modulate = Color(0,0,1)
	
	
func _on_body_exited(Body: CharacterBody2D) -> void:
	objet_à_portée = false
	sprite_2d.modulate = Color(1,1,1)
	


#var objet_disponible: bool = true:
	#set(value):
		#objet_disponible = value
		#sprite_2d.modulate = 666666
		
