extends Node2D

func _on_Start_pressed():
	get_tree().change_scene("res://jogoDINO/Game/Fase1.tscn")

func _on_Quit_pressed():
	get_tree().quit()

func _on_menuretorn_pressed():
	get_tree().change_scene("res://jogoDINO/background/Menu1.tscn")
