extends Label


onready var global = get_node("/root/Globals")
var end_level = false

func _ready():
	text = global._score_text()

func _process(_delta):
	_ready()
	if not end_level && global._is_max_score():
		end_level = true
		$ScoreTimer.start()

func _on_Timer_timeout():
	$ScoreTimer.stop()
	global.accumulate_score()
	get_tree().change_scene("res://scenes/WinScreen.tscn")
