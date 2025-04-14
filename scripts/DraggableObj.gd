extends Control

var dragging = false
var offset = Vector2(0, 0)

func _process(delta: float) -> void:
	if dragging:
		global_position = get_global_mouse_position() - offset


func _on_button_down() -> void:
	dragging = true
	offset = get_global_mouse_position() - global_position


func _on_button_up() -> void:
	dragging = false
