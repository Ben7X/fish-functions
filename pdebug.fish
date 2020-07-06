############################################
### functions
############################################
function pdebug --description "print debug level according to MSG_LVL env"
    # check env variable
    if ! [ -z $MSG_LVL ] && [ $MSG_LVL -ge 3 ]
        set_color  normal
        printf [ 
        set_color  magenta
        printf  DGB
        set_color  normal
        printf  "] $argv \n" 
    end
end

