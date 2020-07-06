############################################
### functions
############################################
function printLevel --description "set printlevel"
    set -x levels Error Warning Info Debug
    set -x levelsValue 0 1 2 3
    # no input return current level
    if [ (count $argv) -eq 0 ]
        [ -z "$MSG_LVL" ] && set -g MSG_LVL 0
        print_lvl "$MSG_LVL"
        return 0
    end
    # check input
    set isNumber (isNumber $argv)
    if [ ! -z "$isNumber" ]
        # number
        print_lvl $isNumber[1]
    else
        # try levels
        print_lvl_value $argv[1]
    end
end
############################################
### helper functions
############################################
function print_lvl
    set index (contains -i $argv[1] $levelsValue)
    # does not exist
    [ -z "$index" ] && perror "$argv[1] is not a valid level" && return
    # does exist
    set l $levels[$index]
    # set
    setLevel $argv[1] $l
end

function print_lvl_value
    set value (closest_hit $argv[1] $levels)
    set index (contains -i $value $levels)
    # does not exist
    [ -z "$index" ] && perror "$argv[1] is not a valid level" && return
    # does exist
    set l $levelsValue[$index]
    # set the level
    setLevel $l $value
end


function setLevel
    set levelValue $argv[1]
    set level $argv[2]
     # set the level
    set -U MSG_LVL $levelValue
    # info
    pinfo "Print level $MSG_LVL: $level"
end


