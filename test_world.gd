extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer2D.stream.loop = true
	$AudioStreamPlayer2D.play()
	$AudioStreamPlayer2D2.stream.loop = true
	$AudioStreamPlayer2D2.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
