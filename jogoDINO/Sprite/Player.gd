extends KinematicBody2D

const MOVE_SPEED = 500
const JUMP_FORCE = 1500
const GRAVITY = 100
const MAX_FALL_SPEED = 500

var y_velo = 0
var isDead = false

func _physics_process(delta):
	
	if !(isDead): 
		var move_dir = 0
		var grounded = is_on_floor()
		var no_chao = $RayL.is_colliding() or $RayR.is_colliding()
		
		
		if Input.is_action_pressed("ui_right"):
			move_dir += 1
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.animation = "walk" 
			
		elif Input.is_action_pressed("ui_left"):
			move_dir -= 1
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.animation = "walk"
			
		else:
			$AnimatedSprite.animation = "idle"
			
		if grounded and Input.is_action_pressed("jump"):
			y_velo = -JUMP_FORCE
		
		if grounded and Input.is_action_pressed("atack"):
			$AnimatedSprite.animation = "atack"

		move_and_slide(Vector2(move_dir * MOVE_SPEED, y_velo), Vector2(0,-1))
		
		y_velo += GRAVITY
		
		if grounded and y_velo >=0:
			y_velo = 5 

		if y_velo > MAX_FALL_SPEED:
			y_velo = MAX_FALL_SPEED
			
		
func dead_player():
	$AnimatedSprite.animation = "dead"
	isDead = true


func _on_AnimatedSprite_animation_finished():
	if ($AnimatedSprite.animation == "dead"):
		get_tree().change_scene("res://jogoDINO/background/GameOver.tscn")
