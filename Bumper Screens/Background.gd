extends ColorRect

var c = 0
var colors = [
	Color8(43,138,62)			#Green 9 to Green 4 from Open Color
	,Color8(47, 158, 68)	
	,Color8(55,178,77)	
	,Color8(64,192,87)	
	,Color8(81,207,102)	
	,Color8(105,219,124)
	,Color8(81,207,102)	
	,Color8(64,192,87)
	,Color8(55,178,77)
	,Color8(47, 158, 68)
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
