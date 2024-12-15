extends CanvasLayer

@export var label:Label

enum LOG_LEVEL{
    NONE,
    INFO

    }


var log_level:LOG_LEVEL = LOG_LEVEL.NONE
var log_formart = "\n{lvl}: {title} => {msg}"
var _text = ""

var _show = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    if !label:
        print("Label is not connected")

    print("Log has started")
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
    label.text = "Press F3 to log\n\n" + _text
    _text = ""
    if Input.is_action_just_pressed("F3"):
        _show = !_show
        pass

    visible = _show


func add_log(lvl:LOG_LEVEL, title:String,msg:String):
    _text += log_formart.format({"lvl":LOG_LEVEL.keys()[lvl],"title":title,"msg":msg})

