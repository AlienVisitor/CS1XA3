# Project01

 ### Objective:
 To make a working script that performs the given features for the user.
 
### Features:
  - Create a TODO Log
  - Merge Log
  - File Type Count
  - Directory, Files and Links count

### Script:
  - project_analyze.sh

##### About the Script:
  - Since this file has an interactive base, you *__don't need__ to give it the __inputs__* as such, rather you would be *__prompted to give__* the scripts your *inputs*
  - To make it as __*interactive*__ and ***realistic*** as possible, there have been implemented a few *millisecond delays* within each output.
  - I hope you like it!

##### How to use it:
  - By using the __./__ before typing in the file name you should be able to execute it
  - Here is the **example** ->
  ```./project_analyze.sh```
  - You would be *provided with several options* and you can choose from those options and select which feature you would love to be executed for you!

### Features Chosen:
  - TODO log:
    - This feature allows you to store all the lines where *#TODO* was mentioned in a certain file.
    - This feature searches through all the files and stores the lines where *#TODO* was mentioned in them and stores it inside ***todo.log***
    - To use this feature, you only need to execute the script and select **"1"** when you are prompted to give the script the ***secret number*** of execution!!
    
  - Merge Log:
    - This feature allows you to store all the commit hashes where merge was mentioned in the commit message.
    - This feature searches through the log and stores the hashes with merge in their message in a file called __*merge.log*__
    - To use this feature, you only need to execute the script and select **"2"** when you are prompted to give the script the ***secret number*** of execution!!
    
  - Directory, Files and Links Count:
    - This feature allows you to get the count of all files which are of the type *HTML, JavaScript, CSS, Python, Haskell and Bash Script*.
    - This feature asks for the user input for the directory and goes through that directory and prints out the counts of *HTML, JavaScript, CSS, Python, Haskell and Bash Script Files*
    - To use this feature, you only need to execute the script and select **"3"** when you are prompted to give the script the ***secret number*** of execution!!
    
  - Directory, Files and Links Count:
    - This feature allows you to get the count of all directories, files and links found withing the chosen directory
    - This feature asks for the user input for the directory and goes through that directory to store the count in a file known as __*item_count.log*__
    - To use this feature, you only need to execute the script and select **"4"** when you are prompted to give the script the ***secret number*** of execution!!
    
