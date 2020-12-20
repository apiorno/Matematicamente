extends Control

var global

func _ready():
	global = get_node("/root/Globals")

func _on_Exit_pressed():
	get_tree().quit()

func _on_PlayAgain_pressed():
	global._reset()
	get_tree().change_scene(global.current_scene)

func _on_Next_pressed():
	get_tree().change_scene(global.next_scene)
