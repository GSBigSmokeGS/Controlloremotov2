#last_user_info=$(last | head -n 1 | cut -d ' ' -f 3)
#echo $last_user_info

#last_user_info_and_username=$(last -n 1 | head -n 1 | cut -d ' ' -f 1,3)
#echo $last_user_info_and_username

tempo_attuale=$(date)
user_me=$(whoami)
ora_attuale=$(date -d "$tempo_attuale" +"%H")
if [ $ora_attuale -ge 5 ] && [ $ora_attuale -lt 12 ]; then
    saluto="Buongiorno"
elif [ $ora_attuale -ge 12 ] && [ $ora_attuale -lt 18 ]; then
    saluto="Buon pomeriggio"
else
    saluto="Buonasera"
fi
echo "$saluto $user_me"