#!/bin/bash
sudo ovs-ofctl add-flow s5 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:05,actions=output:2
sudo ovs-ofctl add-flow s5 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:01,actions=output:4
sudo ovs-ofctl add-flow s7 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:05,actions=output:1
sudo ovs-ofctl add-flow s7 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:01,actions=output:3
sudo ovs-ofctl add-flow s8 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:05,actions=output:2
sudo ovs-ofctl add-flow s8 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:01,actions=output:1
sudo ovs-ofctl add-flow s6 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:05,actions=output:4
sudo ovs-ofctl add-flow s6 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:01,actions=output:1
sudo ovs-ofctl add-flow s3 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:05,actions=output:4
sudo ovs-ofctl add-flow s3 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:01,actions=output:1
sudo ovs-ofctl add-flow s1 dl_src=00:00:00:00:00:01,dl_dst=00:00:00:00:00:05,actions=output:3
sudo ovs-ofctl add-flow s1 dl_src=00:00:00:00:00:05,dl_dst=00:00:00:00:00:01,actions=output:1