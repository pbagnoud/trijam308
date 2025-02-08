extends TileMapLayer

func _ready():
	generate_tents(5)
	generate_sortie()
	
var coords = Vector2i(0, 0) # Créez un Vector2i pour les coordonnées

func generate_tents(number_of_tents):
	for i in range(number_of_tents):
		var x = randi() % 60 # Génère une coordonnée X aléatoire
		var y = (randi() % 30) + 30  # Génère une coordonnée Y aléatoire entre la hauteur max et 30
		var coords = Vector2i(x, y) # Créez un Vector2i pour les coordonnées
		set_cell(coords, 3)  # La tente possède id = 3

func generate_sortie():
	var x = randi() % 60  # Génère une coordonnée X aléatoire
	var coords = Vector2i(x, 0) # Créez un Vector2i pour les coordonnées
	set_cell(coords, 2)  # La sortie possède id = 2
