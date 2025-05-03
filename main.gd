extends Control

var puntos := 0

@onready var label_puntos = $LabelPuntos
@onready var boton_cubo = $BotonCubo

func _ready():
	boton_cubo.pressed.connect(_on_boton_cubo_pressed)

func _on_boton_cubo_pressed():
	puntos += 1
	label_puntos.text = "Puntos: %d" % puntos
