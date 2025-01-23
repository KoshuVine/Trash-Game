
class_name AbstractTrash extends Node

@export var trash_name: String
#@export var texture: AnimatedSprite2D
@export var quality: int
func _init(item_name:String = "Unnamed", item_quality = 0):
	#texture = item_texture
	quality = item_quality
	trash_name = item_name
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _to_string():
	print(str(trash_name))
