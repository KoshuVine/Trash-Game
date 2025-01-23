extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_keep_button_pressed() -> void:
	SignalBus.keep_item.emit()
	print("keep emitted")


func _on_checklist_button_pressed() -> void:
	SignalBus.open_checklist.emit()
	print("checklist emitted")

func _on_discard_button_pressed() -> void:
	SignalBus.discard_item.emit()
	print("discard emitted")
