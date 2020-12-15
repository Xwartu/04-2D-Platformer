extends ColorRect

var c = 0
var colors = [  # Open Color Blue
	Color8(24, 100, 171)	
	,Color8(25, 113, 194)
	,Color8(28, 126, 214)	
	,Color8(34, 139, 230)	
	,Color8(51, 154, 240)		
	,Color8(77, 171, 247)	
	,Color8(116, 192, 252)	
	,Color8(77, 171, 247)	 
	,Color8(51, 154, 240) 
	,Color8(34, 139, 230) 
	,Color8(28, 126, 214)
	,Color8(25, 113, 194)
	,Color8(24, 100, 171)
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
