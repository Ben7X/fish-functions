############################################
### Shows different emoji depending on the path
############################################
function prompt_emoji --description "promps different emojis depending on the path you are in"
    # defaut emojis
    set emoji \uf312      # logo manjaro par defaut
	set currentPath (pwd)
    # check paths
    switch $currentPath
        case (string match -i /home/(whoami) $currentPath)
            set emoji \uf312      # logo manjaro par defaut
        case (string match -ie /www $currentPath)
            set emoji \uf81e
        case (string match -ie /c++ $currentPath) (string match -ie /C++ $currentPath)
            set emoji \ue70c # visual studio
        case (string match -ie /fish $currentPath) (string match -ie /bash $currentPath)
            set emoji \uf489
        case (string match -ie /etc $currentPath)
             set emoji 
        case (string match -ie /Pictures $currentPath)
            set emoji \ue60d
    end
    echo -n -s (set_color yellow)  " $emoji "
end
