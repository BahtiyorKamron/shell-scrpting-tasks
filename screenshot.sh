#! /bin/bash
#sleep 3
#$(gnome-screenshot) && time="$(date +%F)  $(date +%H)-$(date +%M)-$(date +%S)"
#echo ${time}
#echo "Son kiriting,keyin har shu vaqtda screenshot qiladi:"
#read answer
#while [${answer} -ne '0']
#do
#   sleep 3
#   $(gnome-screenshot) && time="$(date +%F)  $(date +%H)-$(date +%M)-$  (date +%S)"
#   echo "Son kiriting,keyin har shu vaqtda screenshot qiladi:"
#   read answer
#done


echo "Siz kiritgan son , minutlarni anglatadi , va shu vaqtdan boshlab ekranni screenshot qilishni boshlaydi , agar to'xtatishni xohlasangiz 0 kiritishingiz mumkin!"

counter=1
t=2
while [ $counter -ne $t ]
do
  read -p "son kiriting:(0 - chiqish) " i 
  if [ $i -eq 0 ]
  then 
     echo "siz dasturni tugatish commandini kiritdingiz"
     counter=2
  else
     sleep $i
     $(gnome-screenshot)
     time="$(date +%F) $(date +%H)-$(date +%M)-$(date +%S)"
     path="/home/x/Pictures/Screenshot from ${time}.png"
     whoami="$(whoami)"
 #    echo $path
 #    $(mv "/home/${whoami}/Pictures/Screenshot from ${time}.png"  /home/x/Documents/bash)
     if [ -d "/home/$(whoami)/Documents/$(date +%F)" ]
     then 
         $(mv "/home/${whoami}/Pictures/Screenshot from ${time}.png"  "/home/$(whoami)/Documents/$(date +%F)")
     else
     		 $(mkdir -p "/home/$(whoami)/Documents/screenshot data/$(date +%F)")
         $(mv "/home/${whoami}/Pictures/Screenshot from ${time}.png"  "/home/x/Documents/screenshot data/$(date +%F)")
     fi
 #    done
        
  fi
done

#Screenshot from 2022-04-18 21-20-12.png




































