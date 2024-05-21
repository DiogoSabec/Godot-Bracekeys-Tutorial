extends Node2D

const  SPEED = 60

var DIRECTION = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += DIRECTION * SPEED * delta
	
	if ray_cast_right.is_colliding():
		DIRECTION = -1 
		animated_sprite.flip_h = true
		
	if ray_cast_left.is_colliding():
			DIRECTION = 1
			animated_sprite.flip_h = false
			
	
