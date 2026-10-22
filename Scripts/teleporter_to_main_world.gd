extends Area3D

var entered = false

func _on_body_entered(body: CharacterBody3D) -> void:
	print("player teleported to main world")
	var entered = true
	
func _process(delta: float) -> void:
	if entered == true:
		get_tree().change_scene_to_file("res://Fossil-Fighters/Scenes/world.tscn")
