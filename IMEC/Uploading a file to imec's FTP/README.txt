Below is the information you need in order to place a file on imec’s ftp server:
 
Server = ftp.imec.be
Username = eptsmc
Password = DvM623
Location = /Design_Drop_Folder/
 
You should encrypt your file using the key attached as you design will land in a publicly accessible location.
Please make sure the mode is set to binary and passive as the file Binary_passive-FTP.png demonstrates.
 
Usage of gpg key:
gpg --import  eptsmc_2018.asc
gpg -r eptsmc@imec.be -e <file you want to encrypt>
 
Please inform me through mail when you placed your file on this ftp.
Alternatively, if the file is not too large it can be submitted through E-mail.
