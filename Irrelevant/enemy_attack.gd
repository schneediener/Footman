extends AnimatedSprite


signal attack_hit(damage, bleeds)


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# connect("attack_hit", player, "_on_enemy_attack_attack_hit")
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_hit_timer_timeout():
	
	var damage = 10
	var bleeds = 1
	#connect("attack_hit", damage, bleeds)
	emit_signal("attack_hit", damage, bleeds)
	print (damage, bleeds)
	queue_free()
