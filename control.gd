extends Control

#Pausa
func _on_pausa_pressed() -> void:
	get_tree().paused = true
	$"Pausa-ventana".show()

#Tutorial
func _on_tutorial_pressed() -> void:
	$"Tutorial2".show()
	get_tree().paused = true

#Jugar
func _on_jugar_item_selected(index: int) -> void:
	get_tree().change_scene_to_file("res://Scenes/levels/Main.tscn")

#Señal para manejar el cerrado de la ventana de pausa
func _on_pausaventana_close_requested() -> void:
	$"Pausa-ventana".hide()
	get_tree().paused = false

#Señal para manejar el cerrado de pausa
func _on_tutorial_2_close_requested() -> void:
	$"Tutorial2".hide()
	get_tree().paused = false

#creditos personas
func _on_creditospersonas_close_requested() -> void:
	$"Creditos-personas".hide()
	get_tree().paused = false


func _on_creditos_item_selected(index: int) -> void:
	if(index==0):
		$"Creditos-personas".show()
		get_tree().paused = true
	else:
		$"Creditos-recursos".show()
		get_tree().paused = true

#Cerrar ventana de creditos-recursos
func _on_creditosrecursos_close_requested() -> void:
	$"Creditos-recursos".hide()
	get_tree().paused = false

#Cerrar ventana de puntaje alto
func _on_highscore_close_requested() -> void:
	$"high-score".hide()
	get_tree().paused = false

#Abrir ventana de puntuacion
func _on_mejor_puntuacion_pressed() -> void:
	$"high-score".show()
	get_tree().paused = true
