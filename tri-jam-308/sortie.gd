extends Node2D

@onready var fee_text: RichTextLabel = $FeeText

var body_proximal = 'no'

func distance_to_proximity(distance: float) -> float:
	var max_distance = 100.0
	var min_distance = 10.0

	if distance <= min_distance:
		return 1
	elif distance >= max_distance:
		return 0.0
	else:
		var x = (distance - min_distance) / (max_distance - min_distance)
		var proximity = 1 / (1.0 + exp((x - 0.5) * 10.0))
		return proximity


func _process(delta: float) -> void:
	if body_proximal == 'no':
		pass
	else:
		var distance = position.distance_to(body_proximal.position)
		fee_text.modulate = Color(distance_to_proximity(distance),0,0,1)

	

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('player'):
		if body.get_money() == 0:
			fee_text.visible = true
			

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group('player'):
		fee_text.visible = false
		body_proximal = 'no'
