extends Area2D

#var colors = [Color.blue,Color.orangered,Color.red,Color.yellow,Color.green]
var color
func _ready():
	#colors.shuffle()
	color = Color(randf(), randf(), randf())

func _draw():
	draw_circle($CollisionShape2D.position,$CollisionShape2D.shape.radius,color)
