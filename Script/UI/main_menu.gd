extends Control

#func _on_play_button_pressed():
#	get_tree().change_scene_to_file("res://Scenes/UI/how_to_play.tscn")

func _on_exit_button_pressed():
	get_tree().quit()


#func _on_control_button_pressed():

#	print("Mostrar pantalla de controles.")
#	get_tree().change_scene_to_file("res://Scenes/UI/how_to_play.tscn")


#func _on_credits_pressed() -> void:
#	get_tree().change_scene_to_file("res://Scenes/UI/creditos.tscn")


func _on_jugar_item_selected(index: int) -> void:
#	get_tree().change_scene_to_file("res://Scenes/UI/how_to_play.tscn")
	pass

func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UI/how_to_play.tscn")
