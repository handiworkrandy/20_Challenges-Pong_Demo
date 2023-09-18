extends Area2D

@export
var speed = 950
var direction = Vector2.LEFT
var directionReset = Vector2.LEFT
var soundCycle = 0
const INITIAL_POSITION = Vector2(573, 321)

func _process(delta):
	position += speed * delta * direction
	if Input.is_action_just_pressed("Reset_ball"):
		print("reseting...")
		_on_ball_reset_timer_timeout()
	
func _on_game_reset_ball(newDirection):
	directionReset = newDirection
	$BallResetTimer.start()
	

func _on_area_entered(area):
	if area.name == "Walls":
		$WallHit.play()
	else:
		if soundCycle %2 == 0:
			$PaddleHit.play()
		else:
			$PaddleHit2.play()
		soundCycle += 1

func _on_ball_reset_timer_timeout():
	position = INITIAL_POSITION
	direction = directionReset
