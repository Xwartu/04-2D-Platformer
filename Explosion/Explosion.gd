extends Node2D

onready var NeedBool = true
onready var effect_explosion = get_node("/root/Game/Sound_Effects/Explosion")

func _ready():
	play_sound(effect_explosion)

func play_sound(sound):
	sound.play()


func _on_Animation_animation_finished():
	queue_free()
