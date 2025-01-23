extends Control
var possible_items = Item.all_items.duplicate()
var to_pull = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	to_pull = possible_items
	to_pull.shuffle()
	pull()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_keep_button_pressed() -> void:
	SignalBus.keep_item.emit()
	print("keep emitted")
	pull()


func _on_checklist_button_pressed() -> void:
	SignalBus.open_checklist.emit()
	print("checklist emitted")

func _on_discard_button_pressed() -> void:
	SignalBus.discard_item.emit()
	print("discard emitted")
	pull()

func pull():
	var random_item = to_pull.pop_front()
	print (random_item)
	return random_item
