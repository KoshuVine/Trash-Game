extends Node
var inventory_base = []

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
	print("Item Kept")

func discard() -> void:
	print("Item Discarded")
