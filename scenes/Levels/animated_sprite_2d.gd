extends CharacterBody2D

# 1. Get a reference to the AnimatedSprite2D node
@onready var sprite = $AnimatedSprite2D

func _physics_process(delta):
	# 2. Get the player's horizontal movement direction
	var direction = Input.get_axis("move_left", "move_right")
	
	# 3. Switch animations based on movement
	if direction != 0:
		sprite.play("walk")
		# Flip the sprite visually based on which way the player is moving
		sprite.flip_h = (direction < 0) 
	else:
		sprite.play("idle")
