extends Control

@onready var tuto: ColorRect = $tuto

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn") 


func _on_tutoriel_pressed() -> void:
	tuto.visible = true


func _on_close_pressed() -> void:
	tuto.visible = false
