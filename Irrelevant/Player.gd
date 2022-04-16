extends AnimatedSprite

var current_blood = 100 setget update_current_blood
var current_pain = 0
var current_bleeds = 2
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
	
	lost_blood = current_bleeds * 5
	current_blood = current_blood - lost_blood
	current_bleeds = current_bleeds - 1
	
#	print (blood)
#	print (bleeds)

func pain():
	if current_bleeds > 0:
		current_pain = current_pain + (current_bleeds * 5)
	else:
		if current_pain >= 10:
			current_pain = current_pain - 10
		else:
			current_pain = 0


func _on_enemy_attack_attack_hit(damage, bleeds):
	#self.current_blood = current_blood - damage
	update_current_blood(current_blood - damage)
	current_bleeds = current_bleeds +- bleeds
	#$bar_blood.update_bar()
	
func update_current_blood(new_current_blood: int) -> void:
	current_blood = new_current_blood
	$bar_blood.value = current_blood
