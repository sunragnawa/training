# systems involved:
we can find info about them simply in source and destination columns ,and deeper we can know their mac adress ispecting the frame transit ethernet layer  and even the manufucter of the mac
![img](sharkimage/capture1.png)
# what can you find abt the attacker!?
wa can gather info about ip adress port used and protocol ,his mac adress,system os used ,,
# How many TCP sessions are contained in the dump file?
 one session
# How long did it take to perform the attack?
we can find such info in statistic under conversation duration: here was 5.5387 mn
# Which operating system was targeted by the attack? And which service? Which vulnerability?

![img](sharkimages/capture2)

 the attacker is targetting  the ngix  webserver and trying to put it down with a TCP syn flood attack