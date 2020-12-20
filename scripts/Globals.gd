extends Node

var score = 0
var global_score = 0 
var MAX_SCORE = 0
var next_scene
var current_scene
const MAX_SCORE_DOMINOE = 8
const MAX_SCORE_MEMO = 10
const MAX_SCORE_INTRUDER = 5

func _reset_score():
	score = 0
	
func _reset():
	global_score = global_score - MAX_SCORE
	_reset_score()

func _increment_score():
	score = score + 1

func accumulate_score():
	global_score = global_score + score

func _score_text():
	return str(score)

func _global_score_text():
	return str(global_score)

func _is_max_score():
	return score == MAX_SCORE

func _start_dominoe():
	MAX_SCORE = MAX_SCORE_DOMINOE
	current_scene = "res://scenes/Game.tscn"
	next_scene = "res://scenes/MemoTest.tscn"
	_reset_score()

func _start_memo():
	MAX_SCORE = MAX_SCORE_MEMO
	current_scene = "res://scenes/MemoTest.tscn"
	next_scene = "res://scenes/Intruder.tscn"
	_reset_score()
	
func _start_intruder():
	MAX_SCORE = MAX_SCORE_INTRUDER
	current_scene = "res://scenes/Intruder.tscn"
	next_scene = "res://scenes/FirstScreen.tscn"
	_reset_score()
