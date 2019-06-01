# TSD chef tutorial

## TASK 1:
1. Create group named: 'tsd'
    - set grup id number to '1234'
2. Create user named: 'tsd'
    - set user id number to '1234'
    - assign user to tsd grup
    - set user's default shell to '/bin/bash'
    - set user's password to 'admin'
    - set users home directory to '/home/tsd' *(check **manage_home** property of user resource)*
3. Create file named 'tsd-testfile' in tsd's home directory
    - set file permisions, so that:
        * owner can read, write and execute
        * group can read and execute
        * others can only read
4. Using 'kitchen login' login to VM and verify if your changes applied
    - you can switch user to *root* or newly created *tsd* to have access to the tsd's home directory (sudo su - root/tsd)