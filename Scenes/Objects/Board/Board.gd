extends Node2D

signal Win(player)
signal PlayerChange(player)
signal Stalemate



# Declare member variables here. Examples:
onready var Columns_node = get_node("Columns")
onready var grid = get_node("Grid")

onready var P1P = preload("res://Scenes/Objects/Board/Player_1_Circle.tscn")
onready var P2P = preload("res://Scenes/Objects/Board/Player_2_Circle.tscn")

var player_turn = 1

var Column_1 = [0,0,0,0,0,0]
var Column_2 = [0,0,0,0,0,0]
var Column_3 = [0,0,0,0,0,0]
var Column_4 = [0,0,0,0,0,0]
var Column_5 = [0,0,0,0,0,0]
var Column_6 = [0,0,0,0,0,0]
var Column_7 = [0,0,0,0,0,0]

var Columns = [Column_1, Column_2, Column_3, Column_4, Column_5, Column_6, Column_7]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func place_puck(Column):
	if player_turn == 1:
		fill_spot(Column, 1)
	else:
		fill_spot(Column, 2)


func fill_spot(Column, Puck):
	
	match Column:
		1:
			for i in range(Column_1.size()):
				if Column_1[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_1/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_1[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing
		2:
			for i in range(Column_2.size()):
				if Column_2[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_2/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_2[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing
		3:
			for i in range(Column_3.size()):
				if Column_3[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_3/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_3[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing
		4:
			for i in range(Column_4.size()):
				if Column_4[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_4/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_4[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing
		5:
			for i in range(Column_5.size()):
				if Column_5[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_5/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_5[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing
		6:
			for i in range(Column_6.size()):
				if Column_6[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_6/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_6[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing
		7:
			for i in range(Column_7.size()):
				if Column_7[i] == 0:
					match i:
						0:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_1.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						1:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_2.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						2:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_3.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						3:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_4.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						4:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_5.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
						5:
							if Puck == 1:
								var PuckInst = P1P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
							else:
								var PuckInst = P2P.instance()
								PuckInst.global_position = $Grid/Grid_Row_7/Slot_6.global_position
								get_tree().root.get_node("Game").add_child(PuckInst)
					Column_7[i] = Puck
					check_neighbors()
					change_player()
					return
			# If no 0s are found, do nothing




func check_neighbors():
	#print(range(6, 2, -1))
	var board = []
	
	for i in Columns:
		board.append(i)
	
	
	
	var zeros_in_board
	
	zeros_in_board = 7
	
	
	for i in range(7):
		if board[i].count(0) == 0:
			zeros_in_board -= 1
	
	
	
	if zeros_in_board == 0:
		stalemate()
	
	
	# Check for vertical win
	for col in Columns:
		for i in range(5, 2, -1):
			if col[i] != 0:
				if col[i] == col[i-1]:
					if col[i-1] == col[i-2]:
						if col[i-2] == col[i-3]:
							win()
							return
	
	# Check for horizontal win
	for col in Columns:
		for i in range(5, -1, -1):
			for j in range(6, 2, -1):
				if Columns[j][i] != 0 and Columns[j][i] == Columns[j-1][i]:
					if Columns[j-1][i] == Columns[j-2][i]:
						if Columns[j-2][i] == Columns[j-3][i]:
							win()
							return
	
	# Check for diagonal win (top-right to bottom-left)
	for col in Columns:
		for i in range(5, 2, -1):
			for j in range(6, 2, -1):
				if Columns[j][i] != 0 and Columns[j][i] == Columns[j-1][i-1]:
					if Columns[j-1][i-1] == Columns[j-2][i-2]:
							if Columns[j-2][i-2] == Columns[j-3][i-3]:
								win()
								return
	
	# Check for diagonal win (bottom-right to top-left)
	for col in Columns:
		for i in range(3):
			for j in range(6, 2, -1):
				if Columns[j][i] != 0 and Columns[j][i] == Columns[j-1][i+1]:
					if Columns[j-1][i+1] == Columns[j-2][i+2]:
						if Columns[j-2][i+2] == Columns[j-3][i+3]:
							win()
							return


func win():
	emit_signal("Win", player_turn)
	print("Player ",player_turn , " is the WINNER!" )


func stalemate():
	emit_signal("Stalemate")
	print("Stalemate!")



func change_player():
	if player_turn == 1:
		player_turn = 2
	else:
		player_turn = 1
	emit_signal("PlayerChange", player_turn)




func _on_Column_1_pressed():
	place_puck(1)


func _on_Column_2_pressed():
	place_puck(2)


func _on_Column_3_pressed():
	place_puck(3)



func _on_Column_4_pressed():
	place_puck(4)



func _on_Column_5_pressed():
	place_puck(5)



func _on_Column_6_pressed():
	place_puck(6)



func _on_Column_7_pressed():
	place_puck(7)

