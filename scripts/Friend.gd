extends Node2D


func show_success():
	$Dialog/Failure.hide()
	$Dialog/Success.show()
	$Dialog.show()
	$Dialog/Success/SuccessSound.play()
	$Dialog/DialogTimer.start()

func show_failure():
	$Dialog/Failure.show()
	$Dialog/Success.hide()
	$Dialog.show()
	$Dialog/Failure/FailureSound.play()
	$Dialog/DialogTimer.start()

func _on_DialogTimer_timeout():
	$Dialog/DialogTimer.stop()
	$Dialog.hide()
