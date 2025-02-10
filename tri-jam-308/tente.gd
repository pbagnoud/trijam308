extends Area2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var objet_disponible: bool = true

	
func _on_body_entered(body: CharacterBody2D) -> void:
	print("i'm in")
	objet_disponible = false
	#sprite_2d.modulate = 666666
	sprite_2d.modulate = Color(0,1,0)
	
	




#var objet_disponible: bool = true:
	#set(value):
		#objet_disponible = value
		#sprite_2d.modulate = 666666
		
		
