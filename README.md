
—————————————————————————
Free for Mac
—————————————————————————

Free is a simple script that, when ran, will emulate the popular Linux command free on Mac.

—————————————————————————
Running the script
—————————————————————————
1.  Download free.sh to desired directory.
2.  CD to that directory and run "sh free.sh" in your terminal.
3. (Optional): Alias free to your bash profile to the command "free" and use like on Linux.

To alias to bash profile simply cd to ~ and open up your bash profile with vim .bash_profile
Append the line alias free='sh /Path/To/free.sh'


When you run free, your output should look something like this

              total        used        unused      wired
Mem:           8192        3253          4937       1945

The information is stored in megabytes.
Note: Wired memory is memory OSX is using.

TODO: Implement command line arguments to convert from megabytes to kilobytes and gigabytes.

If you have any feedback, I would love to hear it! Email me at Daniel@SilverEngineered.com

