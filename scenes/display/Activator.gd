extends Node3D

@export var input_key : Key
@export var particles : Array[GPUParticles3D]


var pressed : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey:
		var current_key = event.pressed
		if event.pressed and pressed != current_key and event.keycode == input_key:
			print ("activating effects")
			if particles.size() <= 1:
				for i in particles:
					i.restart()
			if $AnimationPlayer != null:
				$AnimationPlayer.play("effect")
