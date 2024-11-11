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

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("refresh"):
		get_tree().reload_current_scene()

func _on_paddle_bounce_the_ball() -> void:
	ball.direction.y *= -1
	if ball.direction.x > 0 and paddle.velocity.x < 0:
		ball.direction.x = randf_range(0, 1)
	if ball.direction.x < 0 and paddle.velocity.x > 0:
		ball.direction.x = randf_range(-1, 0)
	if ball.direction.x > 0 and paddle.velocity.x > 0:
		var randomizer = randf()
		if randomizer > 0.9:
			ball.direction.x = randf_range(0, 1)
		else:
			ball.direction.x = randf_range(-1.4, 0)
	if ball.direction.x < 0 and paddle.velocity.x < 0:
		var randomizer = randf()
		if randomizer > 0.9:
			ball.direction.x = randf_range(-1, 0)
		else:
			ball.direction.x = randf_range(0.4, 1)

func _on_wall_top_bounce_the_ball() -> void:
	ball.direction.y *= -1


func _on_wall_left_bounce_the_ball() -> void:
	ball.direction.x *= -1


func _on_wall_right_bounce_the_ball() -> void:
	ball.direction.x *= -1


func _on_top_area_bounce_the_ball() -> void:
	ball.direction.y *= -1


func _on_bottom_area_bounce_the_ball() -> void:
	ball.direction.y *= -1


func _on_right_area_bounce_the_ball() -> void:
	ball.direction.x *= -1


func _on_left_area_bounce_the_ball() -> void:
	ball.direction.x *= -1
