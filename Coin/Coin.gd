extends Node2D

onready var HUD = get_node("/root/Game/HUD/HUD")
onready var player = get_node("/root/Game/PlayerInstance/Player")
onready var score = get_node("res://Camera.tscn/Camera/Control/Score")
onready var global = "/root/Global"

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		HUD.update_score(int(100))
		queue_free()
