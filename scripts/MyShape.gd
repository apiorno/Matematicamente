extends Area2D

func _ready():
	var random_number = RandomNumberGenerator.new().randf_range(0.0,20626.5)
	$Polygon2D.color = Color(randf(), randf(), randf())
	rotate(rad2deg(random_number))
