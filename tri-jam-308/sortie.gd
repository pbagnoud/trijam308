extends Node2D

@onready var fee_text: RichTextLabel = $FeeText

func _process(delta: float) -> void:
	pass
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('player'):
		if body.get_money() == 0:
			fee_text.visible = true
			

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group('player'):
		fee_text.visible = false
