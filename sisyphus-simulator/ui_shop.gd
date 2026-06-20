extends Control



func _ready() -> void:
	var button = Button.new()
	button.text = "Shop (for testing ui stuff)"
	button.pressed.connect(_button_pressed)
	add_child(button)
	
func _button_pressed() -> void:
	#create shop ui
		var shop_ui := PanelContainer.new()
		var shop_ui_close := Button.new()
		shop_ui_close.custom_minimum_size = Vector2(30, 30)
		shop_ui_close.global_position = Vector2(500, 200)
		shop_ui.custom_minimum_size = Vector2(200, 100)
		shop_ui.global_position = Vector2(300, 200)
		#close button
		shop_ui_close.text = "X"
		shop_ui_close.pressed.connect(_close_pressed)
		add_child(shop_ui)
		add_child(shop_ui_close)

func _close_pressed() -> void:
	print ("placeholder")
