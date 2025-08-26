extends MeshInstance3D


# Test code for the test cube.
func _physics_process(delta: float) -> void:
    rotate_y(1 * delta)
