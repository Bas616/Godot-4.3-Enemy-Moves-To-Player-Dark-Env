extends TouchScreenButton

@onready var spotlight = $"../../Character/Head/Camera/SpotLight3D"
var is_spotlight_visible = false

func _ready():
	# Ensure the spotlight is initially hidden
	spotlight.visible = false
	
	# Connect the pressed signal to the _on_btn_4_pressed function
	pressed.connect(_on_btn_4_pressed)

func _on_btn_4_pressed():
	$"../../Character/AudioStreamPlayer2D".play()
	# Toggle the spotlight visibility
	is_spotlight_visible = !is_spotlight_visible
	spotlight.visible = is_spotlight_visible
