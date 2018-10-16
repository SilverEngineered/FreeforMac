## FreeForMac

FreeForMac is a simple script that, when ran, will emulate the popular Linux command free on Mac.

**Running the script**
1.  Download free.sh to desired directory.
2.  CD to that directory and run "sh free.sh" in your terminal.
3. (Optional): Alias free to your bash profile to the command "free" and use like on Linux.

In order to alias to bash profile simply cd to ~ and open up your bash profile with vim .bash_profile
Append the line alias free='sh /Path/To/free.sh'
Save and with vim by pressing escape followed by "wq!" and enter.
Source your bash profile by typing the command "source .bash_profile" in the same directory you are currently in.

Voila! typing "free" in any directory in your mac terminal should yield information about your RAM usage similar to this. 

                  total        used        unused      wired
    Mem:           8192        3253          4937       1945

The information is stored in megabytes.
Note: Wired memory is memory OSX is using.

TODO: Implement command line arguments to convert from megabytes to kilobytes and gigabytes.

If you have any feedback, I would love to hear it! Email me at Daniel@SilverEngineered.com

