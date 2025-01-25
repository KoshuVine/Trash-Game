extends Node

var MAX_HAPPINESS = 100
var MAX_HUNGER = 100
var MAX_HYGIENE = 100
var MAX_SANITY = 100


func _ready() -> void:
	if !SignalBus.is_connected("update", calculate_stats()):
		SignalBus.update.connect(calculate_stats())
		
func calculate_stats():
	var sanity = (MAX_HAPPINESS + MAX_HUNGER + MAX_HYGIENE) / 3
	return sanity

	
	
