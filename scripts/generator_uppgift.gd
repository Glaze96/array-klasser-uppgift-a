extends Node2D

@export var tree_scene_object: PackedScene

# En klass för att spara en samlad information om ett träd
#	TIPS: Gå till help.gd och checka sektionen om KLASSER 
class TreeClass:
	# TODO: Definera en variabel så man kan spara träd-noden (type: Node2D)
	#	TIPS: Namnge variabeln 'tree_object' 
	# Kod här -v
	
	# TODO: Definiera en variabel för att kunna animera objektet (type: float)
	#	TIPS: Namnge variabeln 'anim_value'
	# Kod här -v
	
	# Gratis funktion, varsågod ;)
	func progress_animation(delta: float) -> void:
		anim_value += delta

# TODO: Definera en Array av klassen TreeClass
#	TIPS: https://docs.godotengine.org/en/stable/classes/class_array.html
#	TIPS: använd 'type casting' -> : Array[TreeClass]
#	TIPS: Namnge den 'saved_trees'
# Kod här -v

func _ready() -> void:
	
	## A. Skapar ett träd
	A_generate_one_tree()
	
	## B. Kalla på en funktion som skapar träd i en linje
	# B_generate_line()
	
	## EXTRA: Skapa en mer skogig skog
	# EXTRA_generate_random()

## UPPGIFT A
# Skapar ett träd
func A_generate_one_tree() -> void:
	# Skapa en instans av scenen
	var new_tree: Node2D = tree_scene_object.instantiate()
	
	# TODO: Flytta på trädet (ex. x: 250, y:250) genom att modifiera new_tree.position
	# Kod här -v
	
	# TODO: Skapa ett 'objekt' av klassen TreeClass
	# TIPS: kod-> var new_tree_object: TreeClass = TreeClass.new()
	#	Fyll på värden:
	#		new_tree_object.tree_object = det nya objektet som skapats (new_tree)
	#		new_tree_object.anim_value = ett 'random' värde mellan 0-1 - TIPS: randf() 
	# Kod här -v
	
	# TODO: Spara träd-objektet i din definerade array ('saved_trees')
	#	TIPS: push_back() - https://docs.godotengine.org/en/stable/classes/class_array.html#class-array-method-push-back
	# Kod här -v
	
	# Lägg till i scenen
	add_child(new_tree)
	

## UPPGIFT B
# Skapar en rad av träd
func B_generate_line() -> void:
	
	# Flytta bas-objektet så att man kan se träden bättre
	position.x = 256
	position.y = 256
	
	# TIPS: Använd dessa variabler i loopen
	var num_to_generate: int = 8 # Antal träd att generera
	var offset_between_trees: int = 128 # Distansen mellan träden
	
	# TODO: Generera träd i en linje med hjälp av en 'loop'
	#	TIPS: 	https://gdscript.com/tutorials/looping/
	# 	TIPS: 	Använd er av koden ni skrev i generate_one_tree..
	#				.. ni får copy-pasta (denna gång iaf hehe)
	#	TIPS: 	I loopen ska ni använda iterator-numbret 'i' för att modifiera position.x
	# Kod här -v
	
	
## UPPGIFT EXTRA
# Skapar en skog genom att placera träd slumpmässigt på skärmen
func EXTRA_generate_random() -> void:
	
	# Använd er av dessa variabler i loopen
	var num_to_generate: int = 20 # Antal träd att generera
	var width: int = 1280 # Skärmens bredd
	var height: int = 720 # Skärmens höjd
	
	# TODO: Generera träd som är slumpmässigt utspridda med hjälp av en loop
	#	TIPS: Återanvänd mestadels av koden från generate_line()
	#	TIPS: använd er av randf(): https://docs.godotengine.org/en/latest/tutorials/math/random_number_generation.html
	# Kod här -v

# En funktion som svajar träden fram och tillbaka
func sway_trees(delta: float) -> void:
	
	# TODO: Gå igenom träden i 'saved_trees' (i en loop) och manipulera de så de svajar
	#	TIPS: Fuska genom att gå till help.gd - FUSK (A)
	# Kod här -v
	
	pass





## PLZ IGNORE
func _process(delta: float) -> void:
	# Updatera trädens objekt
	for tree in saved_trees:
		tree.progress_animation(delta)
	
	# Få träden att svaja (förhoppningsvis, det kan gå galet till ibland)
	sway_trees(delta)
