extends AnimatableBody2D
var speed : float = 300
@onready var color_rect: ColorRect = %ColorRect


#var win_h
#var player_h
func _ready() -> void:
	pass
	#win_h = get_viewport_rect().size.y
	#player_h = color_rect.get_size().y
func _physics_process(delta: float) -> void:
	
	if Input.is_action_pressed("P2up") and position.y > -268:
		position.y -= speed * delta
	elif Input.is_action_pressed("P2down") and position.y < 268:
		position.y += speed * delta
	
	#if position.y > 268 or position.y < -268:
		#position.y = clamp(position.y , -268 , 268)
		
