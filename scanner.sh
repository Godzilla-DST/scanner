echo " _______________________________________"
echo "|                                       |"
echo "|    ______________   _______________   |"
echo "|   |              |D|              |   |"
echo "|   |  (a) (.com)  |S|  (b) (.org)  |   |"
echo "|   |______________|T|______________|   |"
echo "|   |______________|G|______________|   |"
echo "|   |              |O|              |   |"
echo "|   |  (c) (.net)  |D|  (d) (more)  |   |"
echo "|   |______________|Z|______________|   |"
echo "|   |______________|I|______________|   |"
echo "|   |              |L|              |   |"
echo "|   |  (e) ip scan |L|  (f) (exit)  |   |"
echo "|   |______________|A|______________|   |"
echo "|                                       |"
echo "|_______________________________________|"

w="www."
a=".com"
b=".org"
c=".net"

read -p "$(echo " TLD =====>>> ")" TLD

    if [ $TLD == a ]
        then
        read -p "$(echo " site name =====>>> ")" sn1
        host $w$sn1$a | grep "has address" | cut -d " " -f4
        x=host
        exit
    fi

    if [ $TLD == b ]
        then
        read -p "$(echo " site name =====>>> ")" sn2
        host $w$sn2$b | grep "has address" | cut -d " " -f4
        exit
    fi

    if [ $TLD == c ]
        then
        read -p "$(echo " site name =====>>> ")" sn3
        host $w$sn3$c | grep "has address" | cut -d " " -f4
        exit
    fi

    if [ $TLD == d ]
        then
        read -p "$(echo " site link =====>>> ")" sn4
        host $sn4 | grep "has address" | cut -d " " -f4
        exit
    fi

    if [ $TLD == e ]
        then
        read -p "$(echo " ip =====>>> ")" sn5
        nmap -Pn -sV -p- -T1 $sn5
        exit
    fi

    if [ $TLD ==  f ]
        then
        exit
    fi