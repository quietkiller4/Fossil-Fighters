extends Area3D

var entered = false

func _on_body_entered(body: PhysicsBody3D) -> void:
	var entered = true
	
func _process(delta) -> void:
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://Fossil-Fighters/Scenes/world.tscn")
