extends Area2D

var game

func _ready():
	game = get_tree().current_scene
	

func _on_Node2D_body_entered(body):
	if (body.name == "Player"): #quem encostou no item? se foi o player, some.
		queue_free()
		game.count_score()
