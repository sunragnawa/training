# namespace and cgroup
## namespaces:
Namespaces have been part of the Linux kernel since about 2002, and over time more tooling and namespace types have been added. Real container support was added to the Linux kernel only in 2013, however. This is what made namespaces really useful and brought them to the masses.

But what are namespaces exactly? Here’s a wordy definition from Wikipedia:

“Namespaces are a feature of the Linux kernel that partitions kernel resources such that one set of processes sees one set of resources while another set of processes sees a different set of resources.”

In other words, the key feature of namespaces is that they isolate processes from each other. On a server where you are running many different services, isolating each service and its associated processes from other services means that there is a smaller blast radius for changes, as well as a smaller footprint for security‑related concerns. Mostly though, isolating services meets the architectural style of microservices as described by Martin Fowler.

Using containers during the development process gives the developer an isolated environment that looks and feels like a complete VM. It’s not a VM, though – it’s a process running on a server somewhere. If the developer starts two containers, there are two processes running on a single server somewhere – but they are isolated from each other.
Types of Namespaces
Within the Linux kernel, there are different types of namespaces. Each namespace has its own unique properties:

### A user namespace 
has its own set of user IDs and group IDs for assignment to processes. In particular, this means that a process can have root privilege within its user namespace without having it in other user namespaces.
### A process ID (PID) namespace 
assigns a set of PIDs to processes that are independent from the set of PIDs in other namespaces. The first process created in a new namespace has PID 1 and child processes are assigned subsequent PIDs. If a child process is created with its own PID namespace, it has PID 1 in that namespace as well as its PID in the parent process’ namespace. See below for an example.
### A network namespace
 has an independent network stack: its own private routing table, set of IP addresses, socket listing, connection tracking table, firewall, and other network‑related resources.
### A mount namespace
 has an independent list of mount points seen by the processes in the namespace. This means that you can mount and unmount filesystems in a mount namespace without affecting the host filesystem.
### An interprocess communication (IPC) namespace 
has its own IPC resources, for example POSIX message queues.

he Linux unshare command is a good place to start. The manual page indicates that it does exactly what we want: 
## What Are cgroups?
A control group (cgroup) is a Linux kernel feature that limits, accounts for, and isolates the resource usage (CPU, memory, disk I/O, network, and so on) of a collection of processes.

Cgroups provide the following features:

Resource limits – You can configure a cgroup to limit how much of a particular resource (memory or CPU, for example) a process can use.
Prioritization – You can control how much of a resource (CPU, disk, or network) a process can use compared to processes in another cgroup when there is resource contention.
Accounting – Resource limits are monitored and reported at the cgroup level.
Control – You can change the status (frozen, stopped, or restarted) of all processes in a cgroup with a single command.
# Application containers
## What is application containerization?
Application containerization is an OS-level virtualization method used to deploy and run distributed applications without launching an entire virtual machine (VM) for each app. Multiple isolated applications or services run on a single host and access the same OS kernel. Containers work on bare-metal systems, cloud instances and virtual machines, across Linux and select Windows and Mac OSes.
## How application containerization works
Application containers include the runtime components -- such as files, environment variables and libraries -- necessary to run the desired software. Application containers consume fewer resources than a comparable deployment on virtual machines because containers share resources without a full operating system to underpin each app. The complete set of information to execute in a container is the image. The container engine deploys these images on hosts.

The most common app containerization technology is Docker, specifically the open source Docker Engine and containers based on universal runtime runC. Docker Swarm is a clustering and scheduling tool. Using Docker Swarm, IT administrators and developers can establish and manage a cluster of Docker nodes as a single virtual system.
## Types of app containerization technology
There are other application containerization technologies in addition to Docker, including:

Apache Mesos: an open source cluster manager. It handles workloads in a distributed environment through dynamic resource sharing and isolation. Mesos is suited for the deployment and management of applications in large-scale clustered environments.
Google Kubernetes Engine: a managed, production-ready environment for deploying containerized applications. It enables rapid app development and iteration by making it easy to deploy, update and manage applications and services.
Amazon Elastic Container Registry (ECR): an Amazon Web Services product that stores, manages and deploys Docker images, which are managed clusters of Amazon EC2 instances. Amazon ECR hosts images in a highly available and scalable architecture, enabling developers to dependably deploy containers for their applications.
Azure Kubernetes Service (AKS): a managed container orchestration service based on the open source Kubernetes system. AKS is available on the Microsoft Azure public cloud. Developers can use AKS to deploy, scale and manage Docker containers and container-based applications across a cluster of container hosts.
# What is Vagrant
Vagrant is a tool for building and managing virtual machine environments in a single workflow. With an easy-to-use workflow and focus on automation, Vagrant lowers development environment setup time, increases production parity, and makes the “works on my machine” excuse a relic of the past. Vagrant is convenient to share virtual environment setup and configurations.
## How Vagrant works
Vagrant does not provide virtualization engines but builds on top of already existing such as VirtualBox which is the default provider, VMWare, Hyper-V or Docker. Vagrant providers are available as plugins so can be easily installed and used. Simply said Vagrant spins up a virtual machine for you, configures it and installs software on it. All those actions are described in a single text file, called Vagrantfile, that can be shared among team members allowing everyone to have one and the same setup.
## Why use Vagrant
Vagrant allows us very easily to share setups between team members allowing very easy spin up of a work environment. For me, the important reason to use Vagrant is test how your deployment works, i.e. provisioning, locally before pushing those changes to other environments. Other important use cases I’ve seen is to create own development/test environment which is very hard to create on a local machine. This was a huge Tomcat application consisting of tens of configuration files with hundreds of configuration values which was not possible to provision on the local box, here Vagrant came to a rescue applying Chef cookbook used for deployment on physical hosts.
## Provisioning
Provisioning is all tasks related to deployment and configurations of applications making them ready to use. In the past, this was done with many scripts or manual steps, which was quite unreliable and error-prone. Nowadays tools like Chef or Ansible allow automatic deployment and configuration of applications. This is a proper way to do deployments as it eliminates the human error and speeds up deployment. Once you have your Chef cookbook or Ansible playbook ready you want to test them if they work properly. Here comes the true value of Vagrant, you can test locally changes which otherwise may break some shared environment and stop work for many people.
# Docker
Docker is a container management service. The keywords of Docker are develop, ship and run anywhere. The whole idea of Docker is for developers to easily develop applications, ship them into containers which can then be deployed anywhere.

The initial release of Docker was in March 2013 and since then, it has he buzzword for modern world development, especially in the face of Agile-based projects.
## Features of Docker
Docker has the ability to reduce the size of development by providing a smaller footprint of the operating system via containers.

With containers, it becomes easier for teams across different units, such as development, QA and Operations to work seamlessly across applications.

You can deploy Docker containers anywhere, on any physical and virtual machines and even on the cloud.

Since Docker containers are pretty lightweight, they are very easily scalable.
## Components of Docker
Docker has the following components

Docker for Mac − It allows one to run Docker containers on the Mac OS.

Docker for Linux − It allows one to run Docker containers on the Linux OS.

Docker for Windows − It allows one to run Docker containers on the Windows OS.

Docker Engine − It is used for building Docker images and creating Docker containers.

Docker Hub − This is the registry which is used to host various Docker images.

Docker Compose − This is used to define applications using multiple Docker containers.

We will discuss all these components in detail in the subsequent chapters.

The official site for Docker is https://www.docker.com/ The site has all information and documentation about the Docker software. It also has the download links for various operating systems.
