extends Node


var modulesInPlace = 0

func _ready():
	pass # Replace with function body.


func _addModule(newModul : AbsModul ):
	
	modulesInPlace = get_child_count()
	if modulesInPlace >= 10:
		return
	else:
		add_child(newModul)
		var counted = get_child_count() 
		var freeSpace = 960 - 96
		
		var offset = freeSpace / (counted+1)
		
		for i in range(counted):
			var module : AbsModul
			module = get_child(i)
			module.set_modul_pos( 96+ (i+1)* offset,270)
			
		
		
