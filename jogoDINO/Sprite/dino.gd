extends Node2D


var game
#var flip = true
#var posicao_inicial
#var posicao_final
#var velocidade = 0.3

func _ready():
	#$Sprite.play("walk")
	#posicao_inicial = $".".position.x
	#posicao_final = posicao_inicial + 100
	game = get_tree().current_scene
	
func _on_DanoPlayer_body_entered(body):
	
	if (body.name == "Player"):
		game.count_life()

func _on_DeadDino_body_entered(body):
	if (body.name == "Player"):
		$AnimatedSprite.animation = "dead"

func _on_AnimatedSprite_animation_finished():
	if ($AnimatedSprite.animation == "dead"):
		queue_free()

#func _process(delta):
#	if(posicao_inicial <= posicao_final and flip):
#		$".".position.x += velocidade
#		$Sprite.flip_h = false
#		if($".".position.x >= posicao_final):
#			flip = false
	
