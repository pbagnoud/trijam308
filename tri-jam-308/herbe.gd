extends Node2D

@onready var aire_herbe: Area2D = $AireHerbe

var est_enfeu: bool = false

var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var random_number = rng.randf_range(0, 1)
	var chance_de_prendre_feu: float = 0 
	for body in aire_herbe.get_overlapping_bodies():
		if "est_enfeu" in body :
			if body.est_enfeu :
				chance_de_prendre_feu += 0.1
		else :
			continue
	if random_number > chance_de_prendre_feu :
		est_enfeu = true
	
