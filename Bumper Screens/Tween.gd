extends ColorRect

var c = 0
var colors = [  # Open Color Grey and Orange
	Color8(33, 37, 41)	
	,Color8(52, 58, 64)
	,Color8(73, 80, 87)	
	,Color8(134, 142, 150)	
	,Color8(173, 181, 189)		
	,Color8(206, 213, 218)	
	,Color8(255, 244, 230)
	,Color8(255, 232, 204)
	,Color8(255, 216, 168)
	,Color8(255, 192, 120)
	,Color8(255, 169, 77)
	,Color8(255, 146, 43)
	,Color8(253, 126, 20)
	,Color8(253, 126, 20)
	,Color8(255, 146, 43)
	,Color8(255, 169, 77)
	,Color8(255, 192, 120)
	,Color8(255, 216, 168)
	,Color8(255, 232, 204)
	,Color8(255, 244, 230)	
	,Color8(206, 213, 218)	
	,Color8(173, 181, 189)
	,Color8(134, 142, 150)
	,Color8(73, 80, 87)	
	,Color8(52, 58, 64)
	,Color8(33, 37, 41)
]

func _ready():
	update_color()
	
func update_color():
	$Tween.interpolate_property(self, "color", color, colors[c], $Timer.wait_time-0.01, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	$Tween.start()

func _on_Timer_timeout():
	c += 1
	c %= colors.size()
	update_color()
