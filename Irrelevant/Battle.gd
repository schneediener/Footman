extends Node2D

var active_command = null
var current_letter_index: int = -1

func _ready():
	OS.set_ime_active(true)
	if OS.set_ime_active(true):
		print ("howdy")
	
		
func find_new_active_command(typed_character: String):
	var prompt = $Soldier.get_prompt()
	if prompt.substr(0, 1) == typed_character:
		active_command == $Soldier
		print ("new enemy")


func _unhandled_input(event: InputEvent) -> void:

	if event is InputEventKey and not event.is_pressed():
		
		var typed_event = event as InputEventKey 
		var key_typed = PoolByteArray([typed_event]).get_string_from_utf8()
		var scancode = OS.get_scancode_string(typed_event.scancode)
		print (key_typed)
		print (typed_event)
		print (scancode)



