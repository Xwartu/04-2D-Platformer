extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD/HUD")

export var speed = 2
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO
var velocity2 = Vector2(65,0)
var y = 0

func _physics_process(_delta):
	move_and_slide(velocity2)




func _on_Area2D_body_entered(body):
	if body.name == "Wall2":
		velocity2.x = -65
		$Sprite.flip_h = true
	if body.name == "Wall1":
		velocity2.x = 65
		$Sprite.flip_h = false
	#if velocity.x !=0 and body.name == "Blocks":
		#velocity.x = 0
		#direction *= -1
	if body.name == "Player":
		HUD.update_lives(-1)
		body.queue_free()
