extends Area2D

var direction: Vector2
const BALL_SPEED: int = 150

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction.y = 1
	direction.x = randf_range(-1, 1)
	print(direction)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * BALL_SPEED * delta
