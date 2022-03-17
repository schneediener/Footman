extends AnimatedSprite

onready var blood = 100
onready var pain = 0
onready var bleeds = 2
#onready var maths = 5 * 4

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#print(maths)
	
	pass # Replace with function body.

func new_turn():
	bleeding()
	pain()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func bleeding():
	var lost_blood
	
	lost_blood = bleeds * 5
	blood = blood - lost_blood
	bleeds = bleeds - 1
	
#	print (blood)
#	print (bleeds)

func pain():
	if bleeds > 0:
		pain = pain + (bleeds * 5)
	else:
		if pain >= 10:
			pain = pain - 10
		else:
			pain = 0
