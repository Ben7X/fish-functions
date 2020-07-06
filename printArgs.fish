############################################
### functions
############################################
function printArgs --description "prints the amount of args and the args if debug level is set"
    # show input
    pdebug (count $argv) "Arguments: $argv"
end


