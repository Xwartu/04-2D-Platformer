extends Node2D

onready var HUD = get_node("/root/Game/HUD/HUD")
onready var global = "/root/Global"
onready var effect_explosion = get_node("/root/Game/Sound_Effects/Coin")

func play_sound(sound):
	sound.play()


func _on_Area2D_body_entered(body):
	play_sound(effect_explosion)
	if body.name == "Player":
		HUD.update_score(int(100))
		queue_free()
