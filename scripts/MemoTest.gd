extends Node2D

var number
var items
var global

func init_values():
	number = 0
	items = 0
	
func _ready():
	global = get_node("/root/Globals")
	global._start_memo()
	init_values()

func unselect_all():
	#Numbers
	if number != 0:
		number_node_by(number).get_node("Selection").hide()
	#Items
	if items != 0:
		item_node_by(items).get_node("Selection").hide()

func number_node_by(aNumber):
	var node
	match aNumber:
		1:
			node = $OneNumber
		2:
			node = $TwoNumber
		3:
			node = $ThreeNumber
		4:
			node = $FourNumber
		5:
			node = $FiveNumber
		6:
			node = $SixNumber
		7:
			node = $SevenNumber
		8:
			node = $EightNumber
		9:
			node = $NineNumber
		10:
			node = $TenNumber
	return node
	
func item_node_by(aNumber):
	var node
	match aNumber:
		1:
			node = $OneItem
		2:
			node = $TwoItem
		3:
			node = $ThreeItem
		4:
			node = $FourItem
		5:
			node = $FiveItem
		6:
			node = $SixItem
		7:
			node = $SevenItem
		8:
			node = $EightItem
		9:
			node = $NineItem
		10:
			node = $TenItem
	return node
func selectNumber(aNumber):
	number_node_by(aNumber).get_node("Selection").show()

func selectItem(aNumber):
	item_node_by(aNumber).get_node("Selection").show()

func checkCoincidense():
	if(number != 0 && items != 0):
		if(number == items):
			$BaseScene.show_success()
			remove_child(item_node_by(items))
			remove_child(number_node_by(number))
			init_values()
			global._increment_score()
		else:
			$BaseScene.show_failure()
		unselect_all()
		init_values()
	else:
		print("One selection left")

func pressed_items(event,aNumber):
	if event.is_action_released("left_click"):
		if items == 0:
			items = aNumber
		if items == aNumber:
			selectItem(items)
			checkCoincidense()
		else:
			$BaseScene.show_failure()
			unselect_all()
			init_values()

func pressed_number(event,aNumber):
	if event.is_action_released("left_click"):
		if number == 0:
			number = aNumber
		if number == aNumber:
			selectNumber(number)
			checkCoincidense()
		else:
			$BaseScene.show_failure()
			unselect_all()
			init_values()

func _on_One_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,1)

func _on_Two_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,2)

func _on_Three_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,3)

func _on_Four_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,4)

func _on_Five_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,5)

func _on_Six_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,6)

func _on_Seven_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,7)

func _on_Eight_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,8)

func _on_Nine_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,9)

func _on_Ten_Number_pressed(_viewport, event, _shape_idx):
	pressed_number(event,10)

func _on_One_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,1)

func _on_Two_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,2)

func _on_Three_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,3)

func _on_Four_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,4)

func _on_Five_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,5)

func _on_Six_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,6)

func _on_Seven_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,7)

func _on_Eight_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,8)

func _on_Nine_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,9)

func _on_Ten_Item_pressed(_viewport, event, _shape_idx):
	pressed_items(event,10)
