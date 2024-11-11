extends Node2D

#onreadys
@onready var paddle: Area2D = $paddle
@onready var ball: Area2D = $ball
@onready var wall_top: Area2D = $wall_top
@onready var wall_left: Area2D = $wall_left
@onready var wall_right: Area2D = $wall_right
@onready var ball_direction_label: Label = $ball_direction_label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ball_direction_label.text = str(ball.direction)


func _on_paddle_bounce_the_ball() -> void:
	ball.direction.y *= -1
	if ball.direction.x > 0:
		ball.direction.x = randf_range(0, 1)
	if ball.direction.x < 0:
		ball.direction.x = randf_range(-1, 0)


func _on_wall_top_bounce_the_ball() -> void:
	pass # Replace with function body.


func _on_wall_left_bounce_the_ball() -> void:
	pass # Replace with function body.


func _on_wall_right_bounce_the_ball() -> void:
	pass # Replace with function body.
