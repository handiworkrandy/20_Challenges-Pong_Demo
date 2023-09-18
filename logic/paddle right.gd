extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("Player_two_up") && position.y >= 20:
		position.y -= 5
	if Input.is_action_pressed("Player_two_down") && position.y <= 500:
		position.y += 5

func _on_area_entered(area):
	if area.name == "Ball":
		area.direction = Vector2(-1, randf() * 2 - 1).normalized()
