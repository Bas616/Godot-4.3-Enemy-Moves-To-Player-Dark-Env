extends Area3D

func _ready():
	pass



func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		$AudioStreamPlayer3D.play()


func _on_body_exited(body: Node3D) -> void:
	if body.is_in_group("player"):
		$AudioStreamPlayer3D.stop()
