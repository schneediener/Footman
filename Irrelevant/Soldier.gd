extends AnimatedSprite

onready var prompt = $word_incoming
onready var prompt_text = prompt.text

func _process(delta):
	global_position.x -= 5

func get_prompt() -> String:
	return prompt_text
