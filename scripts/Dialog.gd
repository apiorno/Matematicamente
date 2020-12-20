extends Sprite

func _ready():
	pass # Replace with function body.

func show_success():
	$Failure.hide()
	$Success.show()
	self.show()
	$Success/SuccessSound.play()
	$DialogTimer.start()

func show_failure():
	$Failure.show()
	$Success.hide()
	self.show()
	$Failure/FailureSound.play()
	$DialogTimer.start()

func _on_DialogTimer_timeout():
	$DialogTimer.stop()
	self.hide()
