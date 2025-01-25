
class_name AbstractTrash extends Node

@export var trash_name: String
#@export var texture: AnimatedSprite2D
@export var quality: int
enum Cleanliness {
	NOT_APPLICABLE = 0,
	VERY_CLEAN = 1,
	CLEAN = 2,
	NEUTRAL = 3,
	DIRTY = 4,
	VERY_DIRTY = 5,
}
enum Nutrition {
	NOT_APPLICABLE = 0,
	VERY_NUTRITIOUS = 1,
	NUTRITIOUS = 2,
	NEUTRAL = 3,
	DANGEROUS = 4,
	POISONOUS = 5,
}
enum Safety {
	NOT_APPLICABLE = 0,
	VERY_HELPFUL = 1,
	HELPFUL = 2,
	NEUTRAL = 3,
	UNSAFE = 4,
	TOXIC = 5,
}
@export var cleanliness_value : Cleanliness
@export var nutrition_value : Nutrition
@export var safety_value : Safety

func _init(item_name:String = "Unnamed", item_quality = 0, cleanliness : Cleanliness = 0, nutrition : Nutrition = 0, safety : Safety = 0):
	#texture = item_texture
	quality = item_quality
	trash_name = item_name
	cleanliness_value = cleanliness
	nutrition_value = nutrition
	safety_value = safety

func _to_string():
	return ("\n Name: " + trash_name + "\n quality: " + str(quality) + "\n Cleanliness: " + Cleanliness.keys()[cleanliness_value] + "\n Nutrition: " + Nutrition.keys()[nutrition_value] + "\n Safety: " + Safety.keys()[safety_value] + "\n")
