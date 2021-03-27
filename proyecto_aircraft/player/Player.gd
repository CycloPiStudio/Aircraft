extends KinematicBody



var turn_speed = 30
var speed = 10

var rot_x = 0.0
var rot_y = 0.0
var rot_z = 0.0

func _physics_process(delta):
	get_input(delta)
	rotation_degrees.x = rot_x
	rotation_degrees.y = rot_y
	rotation_degrees.z = rot_z

#    $CameraRig.rotation_degrees.z = -rot_z

	move_and_collide(-transform.basis.z * speed * delta)

func get_input(delta):
	if Input.is_action_pressed("W"):
		rot_x += turn_speed * delta
	if Input.is_action_pressed("S"):
		rot_x += -turn_speed * delta
	if Input.is_action_pressed("D"):
		rot_y += -turn_speed * delta
	if Input.is_action_pressed("A"):
		rot_y += turn_speed * delta
	if Input.is_action_pressed("Q"):
		rot_z += turn_speed * delta
	if Input.is_action_pressed("E"):
		rot_z += -turn_speed * delta
