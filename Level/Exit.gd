extends Area2D

onready var global = get_node("/root/Global")

func _on_Exit_body_entered(body):
	if global.score == 100:
		if body.name == "Player":
			get_tree().change_scene("res://Level/Level2.tscn")


