class_name Player extends CharacterBody2D

##Indicates the player speed
@export_range(0, 300, 5) var speed: float
##Indicates the player acceleration when it starts to move and deccleration when it stops
@export_range(0,50, 1)   var acceleration: float


func _physics_process(delta: float) -> void:

	var direction := Input.get_axis("ui_left", "ui_right")
	var direction_vertical := Input.get_axis("ui_up", "ui_down")
	
	if direction or direction_vertical:
		velocity.x = direction * speed
		velocity.y = direction_vertical * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.y = move_toward(velocity.y, 0, speed)
		
	move_and_slide()
