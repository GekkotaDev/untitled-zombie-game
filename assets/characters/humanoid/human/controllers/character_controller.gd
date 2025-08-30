extends CharacterBody3D


# 
@export var SPEED = 1
#
@export var FALL_SPEED = 9.5


# TODO: Implement input processing
func process_input(delta: float):
    if Input.is_action_pressed("character_forward"):
        pass

    if Input.is_action_pressed("character_backward"):
        pass

    if Input.is_action_pressed("character_strafe_left"):
        pass

    if Input.is_action_pressed("character_strafe_right"):
        pass

    if Input.is_action_just_pressed("character_jump") and is_on_floor():
        velocity.y += 10

    move_and_slide() # Commit movement


func _physics_process(delta: float) -> void:
    process_input(delta)

    if not is_on_floor():
        velocity.y = - FALL_SPEED
