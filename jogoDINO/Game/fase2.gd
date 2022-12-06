extends Node2D

var score = 0;
var life = 3;

func _ready():
	$HUD/Score.text = "Score: " + str(score)
	$HUD/life.animation = str(life)
	
func count_score(): 
	score += 1
	$HUD/Score.text = "Score: " + str(score)
#aonde devera ser contado?
	
func count_life():
	life -= 1
	$HUD/life.animation = str(life)
	
	if (life == 0):
		$Player.dead_player()
