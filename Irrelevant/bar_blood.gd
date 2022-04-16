extends TextureProgress
#var player = preload("res://Player.gd")
onready var player = get_node("..")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#
## Called when the node enters the scene tree for the first time.
func _ready():
	#print(current_blood)
	self.value = player.current_blood


# Called every frame. 'delta' is the elapsed time since the previous frame.
func update_bar(value):
	self.value = value
	
#	pass
