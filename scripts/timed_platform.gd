extends StaticBody2D

@onready var timer = $Timer	
@onready var collision_shape = $Area2D/CollisionShape2D
	
func _on_timer_timeout():
	queue_free() # Remove a plataforma quando o temporizador expirar

func _on_area_2d_body_entered(body):
	timer.start() # Inicia o temporizador quando o jogador entra na plataforma
