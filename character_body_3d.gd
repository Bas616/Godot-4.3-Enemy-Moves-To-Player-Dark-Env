extends CharacterBody3D

@export var speed = 2.0
@export var gravity = 9.8
@export var stop_distance = 3.0

@onready var player: Node3D = get_tree().get_first_node_in_group("player")

func _physics_process(delta):
	if not player:
		return
	
	# Apply gravity
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	# Calculate direction to player
	var direction = (player.global_position - global_position)
	direction.y = 0  # Remove vertical component to keep enemy on ground
	direction = direction.normalized()
	
	# Calculate distance to player
	var distance_to_player = global_position.distance_to(player.global_position)
	
	# Move towards player if not too close
	if distance_to_player > stop_distance:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = 0
		velocity.z = 0
	
	# Apply movement
	move_and_slide()
	
	# Make the enemy face the player only on the horizontal plane
	var look_at_point = player.global_position
	look_at_point.y = global_position.y  # Keep the same Y position as the enemy
	look_at(look_at_point, Vector3.UP)
