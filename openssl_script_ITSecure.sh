#!bin/bash 

#SCRIPT CREATE BY MESSoPOTEMiA!
#ES SHARP 8 
#LINUX NEWBIE 
#BRRRR ON IT!

clear
echo " "
echo " "
echo "██╗████████╗    ███████╗███████╗ ██████╗██╗   ██╗██████╗ ██╗████████╗██╗   ██╗
██║╚══██╔══╝    ██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝
██║   ██║       ███████╗█████╗  ██║     ██║   ██║██████╔╝██║   ██║    ╚████╔╝ 
██║   ██║       ╚════██║██╔══╝  ██║     ██║   ██║██╔══██╗██║   ██║     ╚██╔╝  
██║   ██║       ███████║███████╗╚██████╗╚██████╔╝██║  ██║██║   ██║      ██║   
╚═╝   ╚═╝       ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝   
                                                                              
 ██████╗ ██████╗ ███████╗███╗   ██╗███████╗███████╗██╗                        
██╔═══██╗██╔══██╗██╔════╝████╗  ██║██╔════╝██╔════╝██║                        
██║   ██║██████╔╝█████╗  ██╔██╗ ██║███████╗███████╗██║                        
██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║╚════██║╚════██║██║                        
╚██████╔╝██║     ███████╗██║ ╚████║███████║███████║███████╗                   
 ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚══════╝                   
                                                                              
██╗  ██╗ ██████╗ ███╗   ███╗███████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗       
██║  ██║██╔═══██╗████╗ ████║██╔════╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝       
███████║██║   ██║██╔████╔██║█████╗  ██║ █╗ ██║██║   ██║██████╔╝█████╔╝        
██╔══██║██║   ██║██║╚██╔╝██║██╔══╝  ██║███╗██║██║   ██║██╔══██╗██╔═██╗        
██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗       
╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝       
                                                                              "
echo " "
echo " "

sleep 10

echo "Delete Old file ..."
rm -rf r_100B.text
rm -rf r_10KB.text
rm -rf r_1MB.text
rm -rf r_100MB.text

echo "r_$ file will create soon !" 
openssl rand -out r_100B.text 100 
echo "Created ! 100Byte" 
openssl rand -out r_10KB.text 10000  
echo "Created ! 10KB" 
openssl rand -out r_1MB.text 1000000 
echo "Created ! 1MB"
openssl rand -out r_100MB.text 100000000
echo "created ! 100MB"

clear

echo "----------------------------"
echo " Enter file size to Work!!  "
echo "   CHOICE 1 100BYTE         "
echo "   CHOICE 2 10KiloByte      "
echo "   CHOICE 3 1Megabyte       "
echo "   CHOICE 4 100Megabyte     "
echo "----------------------------"
read MGB

if [ "$MGB" == "1" ]; then
	p="100B"
elif [ "$MGB" == "2" ]; then
	p="10KB"
elif [ "$MGB" == "3" ]; then
	p="1MB"
elif [ "$MGB" == "4" ]; then
	p="100MB"
fi

filevar="r_$p"
size_ssl=$filevar

echo "---------------------------"
echo "Enter a password below";
read -r PASSWORD
echo "Your password is : $PASSWORD"
echo "----------------------------"

echo "----------------------------"
echo " Enter a choice to select ! "
echo "   CHOICE 1 FOR ENCRYPT     "
echo "   CHOICE 2 FOR DECRYPT     "
echo "----------------------------"
read CHOICE

if [ "$CHOICE" == "1" ]; then
echo "------------------------------------------"
echo "DES-ECB Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_DES-ECB.text -des-ecb -nosalt -pass pass:$PASSWORD
echo "EOF"
echo "------------------------------------------"
read -p "Press enter to continue"

clear
echo "------------------------------------------"
echo "DES-CBC Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_DES-CBC.text -des-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "3DES-ECB Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_3DES-ECB.text -des-ede3 -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "3DES-CBC Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_3DES-CBC.text -des-ede3-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-128-ECB Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_AES-128-ECB.text -aes-128-ecb -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-128-CBC Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_AES-128-CBC.text -aes-128-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-256-ECB Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_AES-256-ECB.text -aes-256-ecb -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-256-CBC Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_AES-256-CBC.text -aes-256-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "RC4 128 Bit Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_RC4.text -rc4 -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "RC4 40 Bit Encrypt time of $size_ssl Byte is "
time openssl enc -e -in $filevar.text -out "$filevar"_RC4-40.text -rc4-40 -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

echo "EOF"

elif [ "$CHOICE" == "2" ]; then

echo "------------------------------------------"
echo "DES-ECB Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_DES-ECB.text -out "$filevar"_dec_DES-ECB.text -des-ecb -nosalt -pass pass:$PASSWORD
echo "EOF"
echo "------------------------------------------"
read -p "Press enter to continue"

clear
echo "------------------------------------------"
echo "DES-CBC Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_DES-CBC.text -out "$filevar"_dec_DES-CBC.text  -des-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "3DES-ECB Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_3DES-ECB.text -out "$filevar"_dec_3DES-ECB.text  -des-ede3 -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "3DES-CBC Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_3DES-CBC.text -out "$filevar"_dec_3DES-CBC.text  -des-ede3-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-128-ECB Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_AES-128-ECB.text -out "$filevar"_dec_AES-128-ECB.text  -aes-128-ecb -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-128-CBC Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_AES-128-CBC.text -out "$filevar"_dec_AES-128-CBC.text -aes-128-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-256-ECB Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_AES-256-ECB.text -out "$filevar"_dec_AES-256-ECB.text -aes-256-ecb -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "AES-256-CBC Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_AES-256-CBC.text -out "$filevar"_dec_AES-256-CBC.text -aes-256-cbc -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "RC4 128 Bit Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_RC4.text -out "$filevar"_dec_RC4.text  -rc4 -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

clear
echo "------------------------------------------"
echo "RC4 40 Bit Decrypt time of $size_ssl Byte is "
time openssl enc -d -in "$filevar"_RC4-40.text -out "$filevar"_dec_RC4-40.text  -rc4-40 -nosalt -pass pass:$PASSWORD
echo "EOF"
read -p "Press enter to continue"
echo "------------------------------------------"

echo "EOF"
	
fi

#SCRIPT CREATE BY MESSoPOTEMiA!
#ES SHARP 8 
#LINUX NEWBIE 
#BRRRR ON IT!