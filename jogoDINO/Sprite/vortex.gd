extends Area2D

func _on_vortex_body_entered(body):
	get_tree().change_scene("res://jogoDINO/Game/fase2.tscn")
