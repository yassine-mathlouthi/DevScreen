extends CharacterBody3D
const SPEED = 5.0
const ATTACK_RANGE =2.5

@onready var player: CharacterBody3D = $"../NavigationRegion3D/player"


@export var player_path : NodePath
@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var animation_tree: AnimationTree = $AnimationTree
var state_machine

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	state_machine = animation_tree.get("parameters/playback")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = Vector3.ZERO
	
	match state_machine.get_current_node():
		"Run_Forward":
			navigation_agent_3d.set_target_position(player.global_transform.origin)
			var next_nav_point = navigation_agent_3d.get_next_path_position()
			velocity = (next_nav_point - global_transform.origin).normalized() * SPEED
			look_at(Vector3(
				player.global_position.x - velocity.x ,
				global_position.y,player.
				global_position.z+ velocity.z),Vector3.UP)
		"jump":
			look_at(
				Vector3(
					player.global_position.x,global_position.y,
					player.global_position.z),
				Vector3.UP)

			
	
	
	
	
	look_at(Vector3(
		player.global_position.x,global_position.y,player.global_position.z),Vector3.UP)
	animation_tree.set("parameters/conditions/attack",_target_in_range())
	animation_tree.set("parameters/conditions/run",!_target_in_range())
	
	
	
	move_and_slide()
	
	
func _target_in_range():
	return global_position.distance_to(player.global_position) < ATTACK_RANGE


func _hit_finished():
	player.hit()
