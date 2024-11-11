extends Area2D

signal bounce_the_ball
var paddle_speed: int = 300
@export var ball: Area2D
enum state {MOVING, STOPPED}
var game_state: state
var previous_position: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	game_state = state.STOPPED

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		position.x -= paddle_speed * delta
	if Input.is_action_pressed("right"):
		position.x += paddle_speed * delta


func _on_body_entered(body: Node2D) -> void:
	if body == ball:
		bounce_the_ball.emit()


func _on_area_entered(area: Area2D) -> void:
	if area == ball:
		bounce_the_ball.emit()
