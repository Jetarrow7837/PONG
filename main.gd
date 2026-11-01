extends Node2D

@onready var ball: CharacterBody2D = %ball

@onready var lab_p1: Label = $Score/LabP1
@onready var lab_p2: Label = $Score/LabP2

var score_1 :int = 0
var score_2 :int = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_score()


func _process(_delta: float) -> void:
	if score_1 == 10 or score_2 == 10:
		get_tree().reload_current_scene()

func update_score():
	lab_p1.text = "Left: " + str(score_1)
	lab_p2.text = "Right: " + str(score_2)
	
func _on_left_body_entered(_body: Node2D) -> void:
	ball.reset_ball()
	score_1 += 1
	update_score()

func _on_right_body_entered(_body: Node2D) -> void:
	ball.reset_ball()
	score_2 += 1
	update_score()
