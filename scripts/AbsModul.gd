extends Node2D
class_name AbsModul

func _ready():
	pass


var onOff = false

func set_Modul_Graphic(type):
	if type == Global.MODULTYPES.LAMP:
		$ModulSprite.region_rect.position.x = 192
		$ModulSprite.region_rect.position.y = 48
	if type == Global.MODULTYPES.AMO:
		$ModulSprite.region_rect.position.x = 96
		$ModulSprite.region_rect.position.y = 48
	if type == Global.MODULTYPES.VOLT:
		$ModulSprite.region_rect.position.x = 144
		$ModulSprite.region_rect.position.y = 48
	if type == Global.MODULTYPES.RESIST:
		$ModulSprite.region_rect.position.x = 144
		$ModulSprite.region_rect.position.y = 0


func togglePower(bol, obj):
	onOff = bol
	if obj.has_method("_togglePower"):
		obj._togglePower()
	
func set_modul_pos(x,y):
	self.position.x = x
	self.position.y = y
	
