extends KinematicBody2D

onready var HUD = get_node("/root/Game/HUD/HUD")
onready var Explosion = load("res://Explosion/Explosion.tscn")

export var speed = 2
export var damage = 10
var direction = 1
var velocity = Vector2.ZERO
var velocity2 = Vector2(75,0)
var y = 0

func _physics_process(_delta):
	move_and_slide(velocity2)




func _on_Area2D_body_entered(body):
	if body.name == "Wall2":
		velocity2.x = -75
		$Sprite.flip_h = true
	if body.name == "Wall1":
		velocity2.x = 75
		$Sprite.flip_h = false
	#if velocity.x !=0 and body.name == "Blocks":
		#velocity.x = 0
		#direction *= -1
	if body.name == "Player":
		var explosion = Explosion.instance()
		explosion.position = position
		get_node("/root/Game/Explosions").add_child(explosion)
		explosion.get_node("Animation").play()
		HUD.update_lives(-1)
		body.queue_free()
