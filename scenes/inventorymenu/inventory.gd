extends Node
var inventory = []
var i = 0
var j = 0
var inventory_size = 0
var SIZE = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !SignalBus.is_connected("keep_item", keep):
		SignalBus.keep_item.connect(keep)
	if !SignalBus.is_connected("discard_item", discard):
		SignalBus.discard_item.connect(discard)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func keep() -> void:
	if inventory_size < SIZE:
		
		inventory.append(SortingMenu.pull())
		print(str(inventory[j]) + "added to Inventory")
		i = i + 1
		j = j + 1
		inventory_size = inventory_size + 1
		
func discard() -> void:
	if SortingMenu.to_pull.size() > i:
		
		i = i + 1
		print(str(SortingMenu.to_pull[i]) + "not added to Inventory")
