extends Node

var happiness = 100
var hunger = 100
var hygiene = 100
var wealth = 100


func calculate_sanity():
	var sanity = (happiness + hunger + hygiene + wealth) / 4
	return sanity
