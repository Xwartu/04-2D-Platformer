extends Control

onready var global = get_node("/root/Global")
onready var effect_explosion = get_node("/root/Game/Sound_Effects/Save")


func play_sound(sound):
	sound.play()

func _on_Area2D_body_entered(body):
	play_sound(effect_explosion)
	if body.name == "Player":
		if global.save == 1:
			pass 
		else:
			global.save = 1 
