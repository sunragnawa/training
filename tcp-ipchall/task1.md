# Diffe osi and tcp-ip proto
  here we will list few diff between the two models:

  **osi**                                        | **tcp-ip**
  -OSI represents Open System Interconnection.     |-TCP/IP model represents the Transmission Control Protocol / Internet Protocol.
  -The OSI model was developed first, and then protocols were created to fit the network architecture’s needs.|The protocols were created first and then built the TCP/IP model
  -t provides quality services.|It does not provide quality services.
  -The smallest size of the OSI header is 5 bytes. | The smallest size of the TCP/IP header is 20 bytes.
  -The OSI model represents defines administration, interfaces and conventions. It describes clearly which layer provides services.|It does not mention the services, interfaces, and protocols.

**layers diff**
![img] (https://www.tutorialspoint.com/assets/questions/media/51877/reference_model.jpg).

**acronym**
tcp refer to transport control protocol and ip to internet protocol

**protocols and related layes**

![protos and corr layes](https://sourcedaddy.com/windows-xp/images/uti1.gif)

**3wayhandshake**
this describe how the connection will be established in first between 2 and points,SYN SYN AND ACK,ACK
here an image how it is done

![img](https://www.luxoft-training.com/upload/medialibrary/452/TCP%20handshake.png)

this is only start of the connection , but define also define some connection para like win size(size of packet can be handles at one time,and other,,)also remark the start seq =0 and ack=1 ( 0 just to simply usualy its a random number),the seq and ack number will keep tracking and confirm the packets sent and recieved between the 2 points:
![omg] (https://s3.ap-south-1.amazonaws.com/afteracademy-server-uploads/what-is-a-tcp-3-way-handshake-process-three-way-handshaking-establishing-connection-6a724e77ba96e241.jpg)

**"4-way disconnect"**
The common way of terminating a TCP connection is by using the TCP header’s FIN flag. This mechanism allows each host to release its own side of the connection individually. 

![img](https://media.geeksforgeeks.org/wp-content/uploads/CN.png)

  **Seq number and Ack number**
  The sequence number is the byte number of the first byte of data in the TCP packet sent (also called a TCP segment). The acknowledgement number is the sequence number of the next byte the receiver expects to receive.
  CP Sequence (seq) and Acknowledgement (ack) numbers help enable ordered reliable data transfer for TCP streams. The seq number is sent by the TCP client, indicating how much data has been sent for the session (also known as the byte-order number).

  **port types**
  The port numbers are divided into three ranges: the well-known ports, the registered ports, and the dynamic or private ports.
  -Port numbers from 0 to 1023 are reserved for common TCP/IP applications and are called well-known ports. The use of well-known ports allows client applications to easily locate the corresponding server application processes on other hosts
  -Registered ports are from 1024 to 49151.
  -from 49152 to 65535 can be used dynamically by applications

  **wellknown port**
  here a list of well know port:

  ![img](https://ipwithease.com/wp-content/uploads/2020/06/COMMON-TCP-IP-WELL-KNOWN-PORT-NUMBERS-TABLE.jpg)


  **tcp packets concept**
  TCP is a reliable stream delivery service which guarantees that all bytes received will be identical and in the same order as those sent. Since packet transfer by many networks is not reliable, TCP achieves this using a technique known as positive acknowledgement with re-transmission.
  The fields in Transmission Control Protocol (TCP) Segment Header are Source Port, Destination Port, Sequence Number, Acknowledgement Number, Header Length, Flags, Window Size, TCP Checksum and Urgent Pointer.
  ![img](https://www.lifewire.com/thmb/OhU9Rn5-Myfpbzjyy98U8UMAMCs=/1235x695/smart/filters:no_upscale()/tcp-headers-f2c0881ea4c94e919794b7c0677ab90a.jpg)
  
  **exemple how packets travel in a network:**
  I will try to explain with an example: what happens when a Host-A requests a webpage 'www.google.com' through a browser application?

Host-A first need to resolve 'www.google.com' to a IP address (gethostbyname). Host-A prepares a DNS packet (UDP protocol) with destination IP address as name-server (This is a DNS IP address given by DHCP server and stored in /etc/resolv.conf). For a UDP/IP packet to be sent, it should have srcIP, dstIP, srcPort, dstPort, srcMac, dstMac... You know what is srcIP, dstIP, srcPort, dstPort, srcMac. But you need to find a dstMac. DNS packet will be put back on hold until dstMac is found by using ARP protocol. There are two cases here:
dstIp and srcIp are in the same subnet (Packet is bridged by the switch). Host-A will send a ARP broadcast in the local broadcast domain and name-server will reply with its Mac Address. After finding the dstMac, Host-A will send the DNS request packet to the Nameserver.
dstIp and srcIp are in the different subnet (Packet need to routed by the switch). Host-A will just put the mac-address of the switch/default-gateway's mac address and prepares the DNS packet and sends it to the switch/default-gateway. Now switch sees that dstMac is its own mac-address and passes the packet to its L3 layer. L3 layer now tries to route this packet to DNS server. If the mac-address is not available in the ARP table of switch, goto step-1a, in this case switch will do ARP broadcast instead of Host-A.
When the name-server receives the request, it look-up its table for IP address of 'www.google.com' and sends the DNS reply back to Host-A with the same process as step 1a and 1b.
Once the IP address of 'www.google.com' is resolved, Host-A will sends a HTTP request to this IP address. HTTP packet is prepared and passed to the kernel. TCP (L4) layer will set srcPort, dstPort in the TCP header and passes to IP (L3) layer. L3 layer will set srcIP and dstIP in the IP header and passes to L2 Layer. L2 layer need to set srcMac and dstMac in the Ethernet Header, now if dstMac of 'www.google.com' is not known, then this HTTP packet is put back on hold and a ARP request is sent to resolve dstMac, as I mentioned in steps 1a and 1b. Once the dstMac is found, HTTP packet is sent to the 'www.google.com'.
Once HTTP server 'www.google.com' receives request from Host-A, it sends back the reply with web page content back to Host-A. ( When the request was sent from Host-A to server, the switches/routers in the path will have learnt the path back to Host-A. )


