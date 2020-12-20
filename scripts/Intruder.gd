extends Node2D

var current_level
onready var global = get_node("/root/Globals")

func _ready():
	global._start_intruder()
	current_level = 1


func _on_asserted_pressed(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		$BaseScene.show_success()
		global._increment_score()
		$Timer.start()

func _on_non_asserted_pressed(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		$BaseScene.show_failure()

func next_level():
	match current_level:
		1:
			$Level1.hide()
			current_level = 2
			$Level2.show()
		2:
			$Level2.hide()
			current_level = 3
			$Level3.show()
		3:
			$Level3.hide()
			current_level = 4
			$Level4.show()
		4:
			$Level4.hide()
			current_level = 5
			$Level5.show()
		5:
			#$Level5.hide()
			current_level = 6
			#$Level6.show()
			
func _on_Timer_timeout():
	$Timer.stop()
	next_level()
