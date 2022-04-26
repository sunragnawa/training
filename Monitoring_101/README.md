# overview to how to monitor your system.
its fundamental to keep your system healthy and safe and working perfectly,to do so , we will need a way to track the performances and metrics changes regarding
our use of resources like CPU ,RAM,Storage, NETWORK?and being able to identify process users or files who are exausting those resources.also keeping security in head , in the next we will see in details some good practice to do so.

# some tools to monitor the system
there are a lot of tools to use when it comes to monitor your system, some come built-in with your distro , other you need to install them.
we will start for most known ones to others with more features and specific area like network traffic and so on.
##most common command built-in.
**df:**
report file system disk space usage
show all blocks allocated to entire file system icluding inode and meta data.
![image](https://static.haydenjames.io/wp-content/uploads/2020/11/df-command-in-linux.png).
**du:**
it is similar to df command,,but more specific to estimate file space usage:
df -option filename
![image](https://linuxhint.com/wp-content/uploads/2021/05/Linux-Du-Command-Examples-1.png).
**top:**
In UNIX-like systems, the top command reports valuable system information like running processes and resource usage. It shows processor activity and kernel-managed tasks in real-time. It’s one of the staple tools for system administrators.
![img](https://linuxhint.com/wp-content/uploads/2020/10/word-image-376-810x390.png).
It’ll output a real-time report of various information. Let’s have a quick breakdown of it.

The first heading portion reports hardware resource usage. The first line consists of the time, the amount of time the system is running, the number of logged-in users, and the load average. The second line reports the number of tasks along with their states.

Here’s a quick list of all the states. The value of each state describes how much time the CPU spends executing processes of that state.

us: Executing processes running under the userspace.
sy: Executing system kernel processes.
ni: Executing processes with a manually configured nice value.
id: The amount of time CPU remains idle.
wa: Waiting time for I/O to complete.
hi: Servicing hardware interrupts.
si: Servicing software interrupts.
st: Time lost for running virtual machines, also known as “steal time”.
**vmstat:*
Report virtual memory statistic sabout processes, memory, paging, block IO, traps,
 disks and cpu activity.running vmstat command will generate resume see the pic
![img](https://linuxhint.com/wp-content/uploads/2021/01/v4.png)
for other details we can add option to have detailed reports.

we saw here some of commands that can help us track and monitor our system health,but there a other opensource tools with more features.
##other tools to check
**htop**
like top command but with more features;filtring,ps tree ,or even kill a process with graphical optimisation.
![img](https://linuxhint.com/wp-content/uploads/2021/01/image5.png)

**lsoft**
“lsof” stands for List Open Files. It is a Linux utility for listing down all the open files of a system. This command can be combined with different parameters to modify its output as desired.

**tcpdump**
The “tcpdump” is a packet analyzer and used to diagnose and analyze network issues. It captures the network traffic going through your device and looks over it. The “tcpdump” tool is a powerful tool to troubleshoot network issues. It comes with many options, which makes it a versatile command-line utility to fix network issues.
![img](https://linuxhint.com/wp-content/uploads/2021/04/word-image-93.png)
The above command is tracing packets from all the active interfaces. The packets will continuously be grabbed until it gets an interruption from the user (ctrl-c).

We can also limit the number of packets to be captured using the “-c”
To learn about the various fields of a captured packet, let’s take an example of a TCP packet:
![img](https://linuxhint.com/wp-content/uploads/2021/04/word-image-100.png)
tcpdump is a great tool to monitor your network and tracking suspect connection and bottleneck issues
**netstat**
System administrators utilize network statistics or netstat as a command-line tool to analyze network data. Routing tables, multicast memberships, interface statistics, network connections, masquerade connections, and other network-related information is displayed using the netstat command. It also assists you in finding out network problems.

there are other network comand to try like ifconfig tracerert ping ip route,,,.
#logging tools and command
it is imporant to know whos is connected to our system ,when and from where,,and what he did, is it an authorized person, he have permesions to certain things
we will see here some.we can gather a lot of info from our log dir,,you can find it in /var/log.
###autho.log
here you find who tried to athenticate to the server , if succeded or failed,when,via ssh and other info:
**grep "Failed password" /var/log/auth.log**
![img](https://www.tecmint.com/wp-content/uploads/2017/12/List-All-Failed-SSH-Login-Attempts.png)
### last command
Usually, you will only be interested in the most recent login attempts. You can see these with the "last" toolgrep 
**last**
![img](https://media.geeksforgeeks.org/wp-content/uploads/20190322013059/Screenshot-from-2019-03-22-00-43-28.png)
###lastlog command
f you would like to look at this situation from a different angle, you can view the last time each user on the system logged in.

This information is provided by accessing the "/etc/log/lastlog" file. It is then sorted according to the entries in the "/etc/passwd" file:
###whowatch command
whowatch is a simple, easy-to-use interactive who-like command line program for monitoring processes and users on a Linux system. It shows who is logged on to your system and what they are doing, in a similar fashion as the w command in real-time
It shows total number of users on the system and number of users per connection type (local, telnet, ssh and others). whowatch also shows system uptime and displays information such as user’s login name, tty, host, processes as well as the type of the connection.

In addition, you can select a particular user and view their processes tree. In the process tree mode, you can send the SIGINT and SIGKILL signals to selected process in a fun way.
![img](https://www.tecmint.com/wp-content/uploads/2018/07/Monitor-Logged-in-Users.png)
###command glances
Glances is a cross-platform command-line curses-based system monitoring tool written in Python language which use the psutil library to grab informations from the system. With Glance, we can monitor CPU, Load Average, Memory, Network Interfaces, Disk I/O, Processes and File System spaces utilization.
![img](https://raw.githubusercontent.com/nicolargo/glances/v3.0/docs/_static/glances-summary.png).
here a link to get the maximum from this tool.
[glances arg](https://www.booleanworld.com/install-use-glances-monitor-linux-systems)

##summary
this was a a brief tour for most used tools and commands that help you monitor and keep safe your system,we did cover all (whois ,pstree,,,,)
and also other log file to control (wtmp btmp,,,,).
now we have to get the max of this commands and file , and try to automate personalize our logs ,so we can access them from remote,or to do special staff when we out of work.having a good procedure to report logs and running ofen a diagnostic tools of bash files to keep our system healthy and our metric a norme.




