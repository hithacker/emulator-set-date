H=$(gdate "+%H")
M=$(gdate "+%M")
S=$(gdate "+%S")

futureDate=$(gdate -d "$1" "+%m%d$H$M%Y.$S")
result=$(adb -s 192.168.57.101:5555 shell "su 0 toybox date $futureDate")
echo $result
