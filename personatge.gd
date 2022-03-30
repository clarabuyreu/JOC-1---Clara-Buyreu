extends KinematicBody2D


var velocitat_base = 200
var direccio = Vector2.DOWN

var velocitat = Vector2.ZERO
var gravetat = Vector2.DOWN * 980
var velocitat_salt = -400
var velocitat_ajupir = 400

var doble_salt = 2

func _physics_process(delta):
	velocitat.x = 0
	velocitat += gravetat*delta
	if is_on_floor():
		doble_salt = 2
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
		
	if Input.is_action_just_pressed("mou amunt") and doble_salt > 0:
		doble_salt -= 1
		velocitat.y = velocitat_salt
	if Input.is_action_just_pressed("mou avall"):
		velocitat.y = velocitat_ajupir
		
	velocitat = move_and_slide(velocitat, Vector2.UP)




func _on_Area2D_body_entered(body):
	if body.name == 'Jugador':
		get_tree().reload_current_scene()


func _on_RigidBody2D_body_entered(body):
	if body.name == 'Jugador':
		get_tree().reload_current_scene()


func _on_Area2D2_body_entered(body):
	if body.name == 'Jugador':
		get_tree().reload_current_scene()


func _on_RigidBody2D3_body_entered(body):
	if body.name == 'Jugador':
		get_tree().reload_current_scene()


func _on_RigidBody2D2_body_entered(body):
	if body.name == 'Jugador':
		get_tree().reload_current_scene()


func _on_Final_body_entered(body):
	get_tree().change_scene("res://escenes/pantalla2.tscn")
