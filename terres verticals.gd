extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body:Node2D):
	if body.is_in_group('Personatge'):
		$ColorRect.color = Color(0, 1, 0)
