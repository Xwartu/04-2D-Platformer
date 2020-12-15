extends Control

onready var global = get_node("/root/Global")
onready var SaveSystem = get_node("/root/SaveSystem")
onready var effect_explosion = get_node("/root/Game/Sound_Effects/Save")

func _process(delta):
	global.save = SaveSystem.DisplayValue
	SaveSystem.loadValue("Values", "ValueOne")

func SubtractPressed():
	SaveSystem.DisplayValue -= 1

func AddPressed():
	SaveSystem.DisplayValue += 1


func play_sound(sound):
	sound.play()

func _on_Area2D_body_entered(body):
	play_sound(effect_explosion)
	if body.name == "Player":
		if global.save == 0:
			AddPressed()
			SaveSystem.saveValue("Values", "ValueOne")
		if global.save == 2:
			SubtractPressed()
			SaveSystem.saveValue("Values", "ValueOne")
		else:
			global.save = 1
			SaveSystem.saveValue("Values", "ValueOne")
