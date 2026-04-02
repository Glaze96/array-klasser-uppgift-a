extends Node2D


# KLASSER------------
# 	Klasser är en sampling av variabler och funktioner
#	I detta exempel en bil
class Car:
	var engine_type: String
	var num_doors: float
	
	func start_car() -> void:
		pass
		
# Skapa objekt:
# 	var new_car: Car = Car.new()
#	new_car.engine_type = "BIG"
#	new_car.num_doors = 2
	
#-------------------



# ARRAYS--------------
#	Sparar variabler i en lista (array)
var arr: Array[int] = [1, 2, 3]
# Bra Funktioner
# 	arr.push_back(example_object) - för att lägga till ett objekt
#	arr.size() - längden av listan
#---------------------


# FUSK (A):
	#for tree in saved_trees:
	#	tree.tree_object.rotation = sin(tree.anim_value * PI) * 0.1
