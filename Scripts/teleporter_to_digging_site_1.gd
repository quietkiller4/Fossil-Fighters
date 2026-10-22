extends Area3D

var entered = false

func _on_body_entered(body: PhysicsBody3D) -> void:
	print("Player entered digging site")
	entered = true

func _process(delta) -> void:
	if entered == true:
		get_tree().change_scene_to_file("res://Fossil-Fighters/Scenes/digging_site.tscn")
