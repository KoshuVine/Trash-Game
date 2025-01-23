
class_name AbstractTrash extends Node

@export var item_name: String
@export var texture: AnimatedSprite2D
@export var quality: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _to_string():
	print(item_name)
