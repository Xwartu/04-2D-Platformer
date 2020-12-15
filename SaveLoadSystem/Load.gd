extends Control

onready var global = get_node("/root/Global")
onready var effect_explosion = get_node("/root/Game/Sound_Effects/Load")

func play_sound(sound):
	sound.play()


func _on_Area2D_body_entered(body):
	play_sound(effect_explosion)
	if body.name == "Player":
		if global.save == 1:
			get_tree().change_scene("res://Game.tscn")
	if body.name == "Player":
		if global.save == 2:
			get_tree().change_scene("res://Level/Level2.tscn")
