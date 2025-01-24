extends Node
var inventory = []
var i = 0
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
	inventory.append(SortingMenu.pull())
	print(str(inventory[i]) + "added to Inventory")
	i = i+1
func discard() -> void:

	print(str(SortingMenu.to_pull[i]) + "not added to Inventory")
