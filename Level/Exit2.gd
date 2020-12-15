extends Area2D

onready var global = get_node("/root/Global")
onready var effect_explosion = get_node("/root/Game/Sound_Effects/Exit")

func play_sound(sound):
	sound.play()




func _on_Exit_body_entered(body):
	play_sound(effect_explosion)
	if global.score == 300:
		if body.name == "Player":
			get_tree().change_scene("res://Bumper Screens/Victory.tscn")


