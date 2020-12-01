extends Area2D

func _on_Exit_body_entered(body):
	if body.name == "Player":
		if name == "Exit":
			var _target = get_tree().change_scene("res://Level/Level2.tscn")


func _on_CollisionShape2D_tree_entered():
	pass # Replace with function body.
