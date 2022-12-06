extends Node2D

func _on_Node2D_body_entered(body):
	get_tree().change_scene("res://jogoDINO/Game/Menu1.tscn")
