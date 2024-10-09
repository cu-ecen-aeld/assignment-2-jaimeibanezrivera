#### Locate files and directories

```bash 
find . -name a_directory
```
With this we can locate the files and directories below the current one with that name (a_directory)


#### Searching for content with grep
```bash 
grep -r "IS AWESOME" * 
```
It is going to list all the files that contain the text "IS AWESOME" inside.

We can improve it a bit:
```bash 
grep -r "IS AWESOME" textfile*txt
```
now it is going to give me all the files that contain that, but also with a name that starts with textfile and finishes with txt: textfile1.txt


#### Pipes '|'
They are used to send the output of one command to the input of another command.

#### Redirection
##### Send the output of a command to a new file (>)
```bash 
grep -r "IS AWESOME" * > searchresult.txt
```
![[Pasted image 20241009113038.png]]
##### Append the output of a command into an existing file (>>)
![[Pasted image 20241009113048.png]]


#### File permissions
3 levels: User, Group and World.
Use ls -l to show permission info:
![[Pasted image 20241009113652.png]]
![[Pasted image 20241009113759.png]]

Normally, execute permissions not granted by default. 

Use **chmod** to change permissions
![[Pasted image 20241009113901.png]]
This means: for the user account, add executable permission.

![[Pasted image 20241009114026.png]]
By saying chmod 766, we are giving the user read+write+execute, but to the group and the world only read and write.

#### Remote access
You can use Secure Shell (ssh) for remote access to machines (including your VM)

![[Pasted image 20241009114600.png]]
