# cybersecurity 

This bashscript runs metasploit framework's msfconsole and opens backdoor in windows machine.

### Installation
- Download the script in the repository and move a directory OR
  ```sh
  git clone https://github.com/meanishn/cybersec.git
  ```
- change to the directory with script file
- Run
  ```sh
    ./hack.sh
  ```
- After a while you should be able to see meterpreter console
  ```sh
    meterpreter>
  ```
- In the current directory you should be able to see the executable named ``` play.exe ```

The executable file play.exe should be sent to the target machine (windows xp/7). 
When this executable is opened in target machine then in your host machine you have a meterpreter console 
with full access to the target machine.

NOTE: Use internet Explorer to download this exe file. Other browsers will detect this as virus and wont allow you to download.

To test the attack, type ``` screenshot ``` in the meterpreter console. You should get the screenshot image from your target machine.

//TODO
Make this play.exe undetectable by antivirus and browser

