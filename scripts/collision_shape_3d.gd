extends CollisionShape3D

@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"

var body_in_area = false
var door_closed = true 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if body_in_area and Input.is_action_just_pressed("intreact") and !animation_player.is_playing() and door_closed:
		animation_player.play("open")
		door_closed=false
	elif body_in_area and Input.is_action_just_pressed("intreact") and !animation_player.is_playing() and !door_closed:
		animation_player.play("close")
		door_closed=true
		
		
@onready var label: Label = $"../../Label"


func _on_door_body_entered(body: Node3D) -> void:
	if body.name == "player":
		label.text = "Press [E] to intreact"
		body_in_area=true

func _on_door_body_exited(body: Node3D) -> void:
	if body.name == "player":
		label.text = ""
		body_in_area=false
