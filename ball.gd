extends CharacterBody2D

var initial_dir := Vector2(-1,0).normalized()

const INIT_SPEED = 350
var speed
var accel = 30
var dir

func _ready() -> void:
	reset_ball()


func _process(delta: float) -> void:
	var collision := move_and_collide(dir * speed * delta)
	
	if collision:
		var collider = collision.get_collider()
		if collider.is_in_group("Paddle"):
			dir = dir.bounce(collision.get_normal())
			
			speed += accel
			speed = clamp(speed,300 , 800)
		else:
			dir = dir.bounce(collision.get_normal())
			


func reset_ball():
	position = Vector2.ZERO
	speed = INIT_SPEED
	var dir_x = [1,-1].pick_random()
	var dir_y = randf_range(-1 , 1)
	
	dir = Vector2(dir_x , dir_y).normalized()
	
	
