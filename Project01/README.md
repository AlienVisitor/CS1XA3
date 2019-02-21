# Project01
 ### Objective:
 To make a working script that performs the given features for the user.
 
### Features:
  - Create a TODO Log
  - Compile Error Log
  - Merge Log
  - File Type Count
  - Delete Temporary Files
  - Find Last Working File
### Script:
  - project_analyze.sh
##### About the Script:
  - Since this file has an interactive base, you *__don't need__ to give it the __inputs__* as such, rather you 
would be *__prompted to give__* the scripts your *inputs*
  - To make it as __*interactive*__ and *__realistic__* as possible, there have been implemented a few *millisecond delays* within 
each output.
  - I hope you like it!
##### How to use it:
  - By using the __./__ before typing in the file name you should be able to execute it
  - Here is the **example** ->
  ```./project_analyze.sh```
  - You would be *provided with several options* and you can choose from those options and select which feature 
you would love to be executed for you!
### Features Chosen:
  - Merge Log:
    - This feature allows you to store all the commit hashes where merge was mentioned in the commit message.
    - This feature searches through the log and stores the hashes with merge in their message in a file called 
__*merge.log*__
    - To use this feature, you only need to execute the script and select **"3"** when you are prompted to give 
the script the ***secret number*** of execution!!
    
