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

## TASK 2:
1. Create 10 files in tsd's home directory
    * name them *file1* to *file10*
    * use ruby to simplify this process *(each method might come in handy)*
2. Login to VM and remove files from file1 to file9, modify contents of file10.
3. Provision the system once again.
    * What did chef do?
    * What is the difference in the final chef-client summary when you run it once again without changing anything?
4. Install the following packages using package resource in one command:
    * 'python3' version 3.5.1-3
    * 'apache2' version 2.4.18-2ubuntu3.10

## TASK 3:
1. Create new recipe called apache.rb *(chef generate recipe apache)*
2. Add newly created recipe to the runlist *(modify .kitchen.yml file)*
3. Inside apache.rb start apache2 service, run chef
4. Verify whether the server works, by entering the ip 192.168.35.10 through your browser
5. Run *chef generate template welcome-page.erb*
6. Download this https://pastebin.com/raw/pH8dckcZ file and save inside newly generated file
7. Use template resource to:
    - create file under path '/var/www/html/index.html'
    - from source located under 'templates/welcome-page.erb'
    - pass your name as variable in the following way:
        ```ruby
        variables(
            name: 'Your name here'
        )
        ```
8. Verify the result under 192.168.35.10