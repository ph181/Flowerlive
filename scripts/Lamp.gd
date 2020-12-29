extends "res://scripts/AbsModul.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	.set_Modul_Graphic(Global.MODULTYPES.LAMP)

func _process(delta):
	pass
	
func _togglePower():
	
	if onOff:
		$ModulSprite.region_rect.position.x += 48
	else:
		$ModulSprite.region_rect.position.x -= 48
