extends Node2D

#à changer : 1 node area2D pour la température
# 1 node texte pour la "barre de vie"
#hitbox_temp1 attention quel physics layer
@onready var hitbox_temp_1: Area2D = $hitboxTemp1
@onready var progress_bar: ProgressBar = $ProgressBar
@onready var collision_shape_2d: CollisionShape2D = $hitboxTemp1/CollisionShape2D

const FRAICHEUR = 0.2
const UN_PEU_CHAUD = 2
const TRES_CHAUD = 3

var current_temp = 0
var modificateur_temp = FRAICHEUR


#température
func _physics_process(delta: float) -> void:
	current_temp = modificateur_temp*delta
	progress_bar.value=current_temp

	#if area_entered(hitbox_temp_1): #avec du feu
		#modificateur_temp= UN_PEU_CHAUD

		
		
