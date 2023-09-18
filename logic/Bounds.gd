extends Node2D
signal update_player_one_score
signal update_player_two_score


func _on_right_area_entered(area):
#	print("OUT OF BOUNDS RIGHT")
	update_player_one_score.emit()

func _on_left_area_entered(area):
#	print("OUT OF BOUNDS LEFT")
	update_player_two_score.emit()
