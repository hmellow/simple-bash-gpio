# Make a GPIO pin available as either an input or an output
# Argument 1: Desired GPIO pin # (not physical pin #)
# Argument 2: "in" or "out"
function gpioDec() {
    local wdir=~/sys/class/gpio;
    echo $1 > wdir/export;
    echo $2 > wdir/gpio${$1}direction;
}

# Set an output GPIO pin to either HIGH or LOW
# Argument 1: Desired GPIO pin # (not physical pin #)
# Argument 2: "high" or "low"
function gpioSet() {
    local upperc=$2 | tr a-z A-Z;
    if [ $upperc -e "HIGH"  ];
    then
        local state=1;
    elif [ $upperc -e "LOW" ];
    then
        local state=0;
    fi;

    echo $2 > ~/sys/class/gpio/gpio${$1}/value;
}
