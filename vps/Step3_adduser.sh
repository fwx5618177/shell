#!/bin/bash
#step 3
#add user pwd
if [ `$#` != 2 ]
then 
    echo "error: parameter don't exsit or other error." | tee -a log.txt
    exit 1
else
    echo "success, continue..." | tee -a log.txt
fi    
  
userName= $1
userPassword=$2
echo "$userName $userPassword will add in the file." | tee -a log.txt


echo "${userName} pptpd ${userPassword} *" >> /etc/ppp/chap-secrets  
#vi /etc/ppp/chap-secrets #格式很通俗易懂。
 #example:
 #count pptpd 771297972 *
 
 if [ $? !=0 ]
 then
     echo "add error."
     exit 1
 else
     echo "success."
 fi  
 
 exit 0     