extends Spatial

var escala = 10 
var tamano_circulo = Vector3(1,1,1) * escala

#onready var circulo = $MeshInstance
var reduccion = 0.01
# Called when the node enters the scene tree for the first time.
func _ready():
#	$CollisionShape
	pass # Replace with function body.



func _process(_delta):
	if tamano_circulo > Vector3(0.1,0.1,0.1):
		tamano_circulo-= Vector3(1,1,1)*reduccion
	scale = tamano_circulo
	

