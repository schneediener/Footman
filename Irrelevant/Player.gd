extends AnimatedSprite

var current_blood = 50
var current_pain = 0
var bleeds = 2
#onready var maths = 5 * 4

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#	#print(maths)
#
#	pass # Replace with function body.

func new_turn():
	bleeding()
	pain()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
#	pass

func bleeding():
	var lost_blood
	
	lost_blood = bleeds * 5
	current_blood = current_blood - lost_blood
	bleeds = bleeds - 1
	
#	print (blood)
#	print (bleeds)

func pain():
	if bleeds > 0:
		current_pain = current_pain + (bleeds * 5)
	else:
		if current_pain >= 10:
			current_pain = current_pain - 10
		else:
			current_pain = 0
