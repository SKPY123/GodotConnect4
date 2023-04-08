extends Node2D


# Declare member variables here. Examples:
onready var GameBoard = get_node("Board")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func turn():
	# Handle the current turn
	pass


func next_turn():
	# Handle the process to change the turn
	pass



func _on_Board_Win(player):
	$UI_Layer/Win.show()
	$UI_Layer/Win/Panel/Panel2/VBoxContainer/PlayerWinLable.text = str("Player ", player, " wins!")


func _on_PlayAgain_pressed():
	get_tree().reload_current_scene()


func _on_Board_Stalemate():
	$UI_Layer/Stalemate.show()


func _on_Board_PlayerChange(player):
	$UI_Layer/UI/VBoxContainer/Player_Turn.text = str(player)
