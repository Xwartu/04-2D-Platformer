extends Node2D

onready var player = get_node("/root/Game/PlayerInstance/Player")
onready var score = get_node("res://Camera.tscn/Camera/Control/Score")
onready var global = "/root/Global"

func _score_add(s):
	global.score += s
	#score.text = "Score: " + str(global.score)

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		_score_add(int(100))
		queue_free()
