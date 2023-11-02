extends Node

var coins = 0

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
		
func addCoins(c):
	coins += c
	var HUD = get_node_or_null("/root/Game/UI/HUD/Coins")
	if HUD != null:
		HUD.text = "Coins: " + str(coins)
