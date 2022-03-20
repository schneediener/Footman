extends Node2D
#
var enemy_attack = preload("res://enemy_attack.tscn")
onready var spawn_container = $InScope/spawn_container

func _ready() -> void:
	randomize()
#var Enemy = preload ("res://Soldier.tscn")
#
#onready var enemy_container = $SoldierContainer
#onready var spawner = $Spawner
#onready var spawn_timer = $SpawnTimer
#
#var active_command = nullS
#var current_letter_index: int = -1
#
#
#
#func _ready():
#	randomize()
#	spawn_enemy()
#	spawn_timer.start()
#
#func find_new_active_command(typed_character: String):
#	for Soldier in enemy_container.get_children():
#		var prompt = $SoldierContainer/Soldier.get_prompt()
#		if prompt.substr(0, 1) == typed_character:
#			active_command = $SoldierContainer/Soldier
#			current_letter_index = 1
#
#
#func _unhandled_input(event: InputEvent) -> void:
#
#	if event is InputEventKey and event.is_pressed() and not event.is_echo():
#
#		var typed_event = event as InputEventKey 
#		var key_typed = PoolByteArray([typed_event.unicode]).get_string_from_utf8()
#		print (key_typed)
#
#		if active_command == null:
#			find_new_active_command(key_typed)
#			print ("new")
#		else:
#			var prompt = active_command.get_prompt()
#			var next_character = prompt.substr(current_letter_index, 1)
#			if key_typed == next_character:
#				print("success")
#				current_letter_index += 1
#				if current_letter_index == prompt.length():
#					print ("Finished!")
#					active_command.queue_free()
#					active_command = null
#
#func _on_SpawnTimer_timeout() -> void:
#	spawn_enemy()
#
#func spawn_enemy():
#	var enemy_instance = Enemy.instance()
#	var spawns = spawner.get_children()
#	var index = randi() % spawns.size()
#	enemy_container.add_child(enemy_instance)
#	enemy_instance.global_position = spawns[index].global_position


func _on_spawn_timer_timeout() -> void:
	spawn_enemy_attack()
	
func spawn_enemy_attack() -> void:
	var enemy_attack_instance = enemy_attack.instance() 
	var enemy_attack_container = $enemy_attack_container
	var positions = spawn_container.get_children()
	var index = randi() % positions.size()
	
	enemy_attack_container.add_child(enemy_attack_instance)
	enemy_attack_instance.global_position = positions[index].global_position
