# Implementation of Flow Migration Technique using OpenFlow

#### In this repo we implement a technique for transferring a network flow to another path of a network topology, while assessing any communication complications, such as increase in delay, packet loss and packet reordering. The flow transfer will  be done using OpenFlow.

### Briefly, the repo contains:

• **(1) Flow Transfer Implementation.**:
- Using OpenFlow
- In the Mininet environment with SDN Hub (w/ Docker) VirtualBox image
- The forwarding rules on the switches along the initial and final path will be inserted or modified appropriately.
- Forwarding rules will be installed using command-line tools (e.g. ovs-ofctl) that will be a part of bash scripts in order to automate the procedure.

![](https://raw.githubusercontent.com/christakakis/open-flow_migration/main/05.%20Docs/FlowMigrationExample.png)
  
• **(2) Experimental results.** Measuring any communication complications. In particular, the following are investigated:
- Jitter in seconds (variation in delay during flow transfer)
- Packet loss
- Packet Reordering. Variation in the order of arrival of packets at the receiver (with respect to the order of dispatch) during the flow transfer.

#### The experiments were carried out on [Abilene](http://www.topology-zoo.org/files/Abilene.gml) network topology, found in the [Internet Topology Zoo](http://www.topology-zoo.org/dataset.html), added with some delay of 1-3 ms between two consecutive nodes. In order to perform the measurments we must have node degree (>3).

#### The experiments were repeated for network paths with different number of hops (e.g. 4-8), while limiting the overlap between the initial and final paths as much as possible (with the ideal case being no overlap at all). 

#### For the measurements, [D-ITG](https://traffic.comics.unina.it/software/ITG/) was used as traffic generator for more controll.

## Finally

In the [Report](https://github.com/christakakis/open-flow_migration/blob/main/05.%20Docs/Report.pdf) file we'll summarize our results and comment the graph plots to draw conclusions.

This repository was initially created to store my personal python code but also be available to others trying to build or understand something similar.
The code contained in this repo is made specifically for a "Computer Networks for Big Data" course of my MSc program.
