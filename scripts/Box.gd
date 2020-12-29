extends Node2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
	
func _spawnModul():
	
	var newLamp = Global.LAMPSCENE.instance()
	get_parent().get_node("ModulesInPlace")._addModule(newLamp)
