extends Label

func _ready():
	var global = get_node("/root/Globals")
	if get_parent().name == "GlobalScore":
		text = global._global_score_text()
	else:
		text = global._score_text() 
