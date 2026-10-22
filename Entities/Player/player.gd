class_name Player extends CharacterBody2D

@export_group("Movement")

##Indicates the player speed
@export_range(0, 300, 5)
var speed: float = 200

##Indicates the player acceleration when it starts to move and decceleration when it stops
@export_range(500,2000, 5, "or_greater") 
var acceleration: float = 1000


func _physics_process(delta: float) -> void:

	var input := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	velocity = velocity.move_toward(input * speed, acceleration * delta) 
	
	move_and_slide()
