extends CharacterBody2D

@export var speed = 500

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	return input_direction
	
func _physics_process(delta):
	var id=get_input()
	if Input.is_key_pressed(KEY_LEFT):
		var image = Image.load_from_file("res://door_right.png")
		var texture = ImageTexture.create_from_image(image)
		$DoorRight.texture = texture
		$DoorRight.flip_h=true
	if Input.is_key_pressed(KEY_RIGHT):
		var image = Image.load_from_file("res://door_right.png")
		var texture = ImageTexture.create_from_image(image)
		$DoorRight.texture = texture
		$DoorRight.flip_h=false
	if Input.is_key_pressed(KEY_DOWN):
		var image = Image.load_from_file("res://door_down.png")
		var texture = ImageTexture.create_from_image(image)
		$DoorRight.texture = texture
	if Input.is_key_pressed(KEY_UP):
		var image = Image.load_from_file("res://door_up.png")
		var texture = ImageTexture.create_from_image(image)
		$DoorRight.texture = texture

	#if id.x:
#		$DoorRight.flip_h=false
	#if !id.x:
#		$DoorRight.flip_h=true
	move_and_slide()
	
