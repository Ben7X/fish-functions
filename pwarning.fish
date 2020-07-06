############################################
### functions
############################################
function pwarning --description "print warning level"
    set_color  normal
    printf [ 
    set_color  yellow
    printf  WRN
    set_color  normal
    printf  "] $argv \n" 
end

