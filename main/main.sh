# Make a GPIO pin available as either an input or an output
# Argument 1: "in" or "out"
# Argument 2: Desired GPIO pin #  (not physical #)
function gpioSet() {
    local wdir =  ~/sys/class/gpio
    echo $2 > wdir/export
    echo $1 > wdir/direction
}

