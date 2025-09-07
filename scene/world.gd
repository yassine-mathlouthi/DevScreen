extends Node3D

@onready var color_rect: ColorRect = $Control/ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_hit_signal() -> void:
	color_rect.visible = true
	await get_tree().create_timer(0.2).timeout
	color_rect.visible=false
