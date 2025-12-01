extends CanvasLayer
var score: int = 0
var high_score: int = 0

func _ready() -> void:
	load_high_score()
	update_high_score(high_score)


func load_high_score():
	if FileAccess.file_exists("user://savegame.dat"):
		var file = FileAccess.open("user://savegame.dat", FileAccess.READ)
		high_score = file.get_var()
	else:
		high_score = 0

func update_high_score(new_high_score):
	$"HighScoreLabel".text = "Mejor Puntuación: %s" % new_high_score
