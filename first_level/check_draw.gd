extends Button
@onready var draw_zone = %drawing_zone
@onready var first_level = get_parent()
@onready var correct_or_mine: Button = $"../correct or mine"
@onready var start_test: Button = $"../отступ_на_1_пиксель_от_границы/VBoxContainer/TabContainer/description/Start test"
@onready var lock: Sprite2D = $"../отступ_на_1_пиксель_от_границы/VBoxContainer/TabContainer/description/lock"

var attempts_counter = 0
var flag = true

func _pressed():
	for elem in draw_zone.c_pos:
		if elem.distance_to(draw_zone.answer) < 16 or elem.distance_to(draw_zone.answer) > 70:
			flag = false
	if flag and not draw_zone.c_pos.is_empty():
		first_level.show_message("Верно!")
		flag = true
		start_test.visible = true
		lock.visible = false
	else:
		attempts_counter += 1
		first_level.show_message("Неверно!")
		flag = true
	if attempts_counter == 3:
		correct_or_mine.visible = true
		
		
'''@onready var first_level = get_parent()
var distances = []
var median_distance = -1
var sum = 0
var m1:bool=false;var m2:bool=false;var m3:bool=false;var m4:bool=false
func _pressed() -> void:
	distances.clear()
	median_distance = calculate_average(check_result(draw_zone.c_pos))
	first_level.show_message(str(median_distance))
	if m1==true&&m2==true&&m3==true&&m4==true:
		if median_distance>60&&median_distance<150:
			first_level.show_message("Верно!")
		else:
			first_level.show_message("Нужно поточнее.")
			draw_zone.c_pos.clear()
			draw_zone.queue_redraw()
	else:
		first_level.show_message("Неверно!")
		draw_zone.c_pos.clear()
		draw_zone.queue_redraw()


func check_result(c_pos : Array):
	m1=false
	m2=false
	m3=false
	m4=false
	if c_pos.is_empty() == true:
		return [-1]
	else:
		for elem in c_pos:
			if elem.x<1500:
				m1=true
			if elem.x>1580:
				m2=true
			if elem.y<260:
				m3=true
			if elem.y>340:
				m4=true
			distances.append(elem.distance_to(draw_zone.answer))
	return distances

func calculate_average(point_distances: Array) -> float:
	if point_distances[0] == -1:
		return -1
	else:
		sum = 0.0
	for num in point_distances:
		sum += num
	return sum / point_distances.size()'''
