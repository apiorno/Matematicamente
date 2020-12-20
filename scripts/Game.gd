extends Node2D

var selected
var global

# Called when the node enters the scene tree for the first time.
func _ready():
	global = get_node("/root/Globals")
	global._start_dominoe()

func incrementScore():
	global._increment_score()

func play_success_sound():
	$SuccessSound.play()

func play_failure_sound():
	$FailureSound.play()

func _on_Pieza5_Area2_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza5/Sprite2.visible:
			if(selected=="dice3"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza5/Sprite.hide()
				$Piezas/Pieza5/Sprite2.show()
			else:
				play_failure_sound()
				$Piezas/Pieza5/Area2/Wrong/Timer.start()
				$Piezas/Pieza5/Area2/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza6_Area1_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza6/Label.visible:
			if(selected=="3"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza6/Label.show()
			else:
				play_failure_sound()
				$Piezas/Pieza6/Area1/Wrong/Timer2.start()
				$Piezas/Pieza6/Area1/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza6_Area8_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza6/Sprite2.visible:
			if(selected=="dice5"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza6/Sprite.hide()
				$Piezas/Pieza6/Sprite2.show()
			else:
				play_failure_sound()
				$Piezas/Pieza6/Area2/Wrong/Timer3.start()
				$Piezas/Pieza6/Area2/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza8_Area1_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza8/Sprite2.visible:
			if(selected=="dice4"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza8/Sprite.hide()
				$Piezas/Pieza8/Sprite2.show()
			else:
				play_failure_sound()
				$Piezas/Pieza8/Area1/Wrong/Timer4.start()
				$Piezas/Pieza8/Area1/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza8_Area2_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza8/Label.visible:
			if(selected=="5"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza8/Label.show()
			else:
				play_failure_sound()
				$Piezas/Pieza8/Area2/Wrong/Timer5.start()
				$Piezas/Pieza8/Area2/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza10_Area1_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza10/Sprite2.visible:
			if(selected=="dice2"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza10/Sprite.hide()
				$Piezas/Pieza10/Sprite2.show()
			else:
				play_failure_sound()
				$Piezas/Pieza10/Area1/Wrong/Timer6.start()
				$Piezas/Pieza10/Area1/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza11_Area1_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza11/Label.visible:
			if(selected=="4"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza11/Label.show()
			else:
				play_failure_sound()
				$Piezas/Pieza11/Area1/Wrong/Timer7.start()
				$Piezas/Pieza11/Area1/Wrong/AnimationPlayer.play("wrong-animation")

func _on_Pieza11_Area2_input_event(_viewport, event, _shape_idx):
	if event.is_action_released("left_click"):
		_hide_all_selection()
		if not $Piezas/Pieza11/Sprite2.visible:
			if(selected=="dice6"):
				play_success_sound()
				incrementScore()
				$Piezas/Pieza11/Sprite.hide()
				$Piezas/Pieza11/Sprite2.show()
		else:
			play_failure_sound()
			$Piezas/Pieza11/Area2/Wrong/Timer8.start()
			$Piezas/Pieza11/Area2/Wrong/AnimationPlayer.play("wrong-animation")

func _hide_all_selection():
	
	#Numbers
	$Numbers/One/Selection.hide()
	$Numbers/Two/Selection.hide()
	$Numbers/Three/Selection.hide()
	$Numbers/Four/Selection.hide()
	$Numbers/Five/Selection.hide()
	$Numbers/Six/Selection.hide()
	#Dices
	$Dices/Dice1/DiceSelection.hide()
	$Dices/Dice2/DiceSelection.hide()
	$Dices/Dice3/DiceSelection.hide()
	$Dices/Dice4/DiceSelection.hide()
	$Dices/Dice5/DiceSelection.hide()
	$Dices/Dice6/DiceSelection.hide()
	
func _on_Button1_pressed():
	selected = "1"
	var visibility = $Numbers/One/Selection.visible
	_hide_all_selection()
	$Numbers/One/Selection.visible = not visibility
	
func _on_Button2_pressed():
	selected = "2"
	var visibility = $Numbers/Two/Selection.visible
	_hide_all_selection()
	$Numbers/Two/Selection.visible = not visibility

func _on_Button3_pressed():
	selected = "3"
	var visibility = $Numbers/Three/Selection.visible
	_hide_all_selection()
	$Numbers/Three/Selection.visible = not visibility

func _on_Button4_pressed():
	selected = "4"
	var visibility = $Numbers/Four/Selection.visible
	_hide_all_selection()
	$Numbers/Four/Selection.visible = not visibility

func _on_Button5_pressed():
	selected = "5"
	var visibility = $Numbers/Five/Selection.visible
	_hide_all_selection()
	$Numbers/Five/Selection.visible = not visibility

func _on_Button6_pressed():
	selected = "6"
	var visibility = $Numbers/Six/Selection.visible
	_hide_all_selection()
	$Numbers/Six/Selection.visible = not visibility

func _on_DiceButton1_pressed():
	selected = "dice1"
	var visibility = $Dices/Dice1/DiceSelection.visible
	_hide_all_selection()
	$Dices/Dice1/DiceSelection.visible = not visibility

func _on_DiceButton2_pressed():
	selected = "dice2"
	var visibility = $Dices/Dice2/DiceSelection.visible
	_hide_all_selection()
	$Dices/Dice2/DiceSelection.visible = not visibility

func _on_DiceButton3_pressed():
	selected = "dice3"
	var visibility = $Dices/Dice3/DiceSelection.visible
	_hide_all_selection()
	$Dices/Dice3/DiceSelection.visible = not visibility

func _on_DiceButton4_pressed():
	selected = "dice4"
	var visibility = $Dices/Dice4/DiceSelection.visible
	_hide_all_selection()
	$Dices/Dice4/DiceSelection.visible = not visibility

func _on_DiceButton5_pressed():
	selected = "dice5"
	var visibility = $Dices/Dice5/DiceSelection.visible
	_hide_all_selection()
	$Dices/Dice5/DiceSelection.visible = not visibility

func _on_DiceButton6_pressed():
	selected = "dice6"
	var visibility = $Dices/Dice6/DiceSelection.visible
	_hide_all_selection()
	$Dices/Dice6/DiceSelection.visible = not visibility

func _on_Timer_timeout():
	$Piezas/Pieza5/Area2/Wrong/Timer.stop()
	$Piezas/Pieza5/Area2/Wrong/Sprite.hide()

func _on_Timer2_timeout():
	$Piezas/Pieza6/Area1/Wrong/Timer2.stop()
	$Piezas/Pieza6/Area1/Wrong/Sprite.hide()

func _on_Timer3_timeout():
	$Piezas/Pieza6/Area2/Wrong/Timer3.stop()
	$Piezas/Pieza6/Area2/Wrong/Sprite.hide()

func _on_Timer4_timeout():
	$Piezas/Pieza8/Area1/Wrong/Timer4.stop()
	$Piezas/Pieza8/Area1/Wrong/Sprite.hide()

func _on_Timer5_timeout():
	$Piezas/Pieza8/Area2/Wrong/Timer5.stop()
	$Piezas/Pieza8/Area2/Wrong/Sprite.hide()

func _on_Timer6_timeout():
	$Piezas/Pieza10/Area1/Wrong/Timer6.stop()
	$Piezas/Pieza10/Area1/Wrong/Sprite.hide()

func _on_Timer7_timeout():
	$Piezas/Pieza11/Area1/Wrong/Timer7.stop()
	$Piezas/Pieza11/Area1/Wrong/Sprite.hide()

func _on_Timer8_timeout():
	$Piezas/Pieza11/Area2/Wrong/Timer8.stop()
	$Piezas/Pieza11/Area2/Wrong/Sprite.hide()
