extends Node2D

var player_one_score = 0
var player_two_score = 0

signal _reset_ball

func _on_bounds_update_player_one_score():
	player_one_score += 1
#	print("Player 1: " + str(player_one_score) + " points")
	_reset_ball.emit(Vector2.LEFT)
	$Score.set_text(str(player_one_score, "  ", player_two_score))
	$ScoreSFX.play()

func _on_bounds_update_player_two_score():
	player_two_score += 1
#	print("Player 2: " + str(player_two_score) + " points")
	_reset_ball.emit(Vector2.RIGHT)
	$Score.set_text(str(player_one_score, "  ", player_two_score))
	$ScoreSFX.play()

#SOURCES
#Separator Sprite and paddle direction code provided by https://godotengine.org/asset-library/asset/121
#Pong sound effects provided by https://www.youtube.com/watch?v=qhaS2uMNTjI
