extends Area2D

var velocitat = Vector2.ZERO
var gravetat  = Vector2.DOWN * 250

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat += gravetat * delta
	position += velocitat * delta

