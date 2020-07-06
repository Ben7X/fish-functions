############################################
### functions
############################################
function perror --description "print error level"
    set_color  normal
    printf [ 
    set_color  red
    printf  ERR
    set_color  normal
    printf  "] $argv \n" 
end
