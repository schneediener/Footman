extends AnimatedSprite

onready var prompt = $word_incoming
onready var prompt_text = prompt.text

func get_prompt() -> String:
	return prompt_text
