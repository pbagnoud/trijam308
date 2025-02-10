extends Node

@onready var liste_objets = ["bouteille", "bouteille", "pièce", "bouteille", "bouteille", "bouteille", "bouteille"]
@onready var objets_dans_inventaire = {"bouteille":0, "pièce":0}
@onready var n = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# If has_activated_tent do :
#	objets_dans_inventaire[liste_objets[n]] += 1
#	n += 1
