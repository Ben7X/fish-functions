############################################
### functions
############################################
function isNumber --description "check if input is a number"
    string match -r "^[0-9]+\$" $argv
end


