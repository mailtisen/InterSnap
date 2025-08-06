# InterSnap
InterSnap is an auditable ledger snapshot technique for non-repudiable cross-blockchain communication



# Core Functionalities

| Functions| Description | Folder Path |
|---------------------|-------------|------------|
| **InvokeSnapshot**  | The underlying module is used to create snapshot | `src/invoke snapshot/invoke.sh` |
| **GetdiscoveryMaxPeerHeight**   | Fetches the peer with maximum ledger height | `src/get max height/getdiscoveryMaxPeerHeight.sh` |
| **ScheduleSnapshot**   | Sheduled snapshot job for snapshot archive generation| `src/snscripts/scheduleSnapshot.sh` |
| **Neded Based Snapshot Invoking Process**   | Need based sanpshot generation| `src/invoke snapshot/invoke.sh` |
| **CompressArchiveToTar**   | Compresses historical snapshot archives| `src/snscripts/compressArchive.sh` |
| **EncryptSnapshotArchives**   | Encrypts the snapshot archives | `src/snscripts/encryptSnapshotArch.sh` |
| **UploadArchiveToIPFS**   | Add encrypted snapshot archives to IPFS| `src/snscripts/uploadipfs.sh` |
| **PeerToPeerSnapshotCopy** | Copies peer snapshot | `src/chaincode/snapshot_chaincode/copySnapshotFromPeer.go` |


## Main Software Pre-requisites
- **Install Docker (24.0.7) :** Please refer https://docs.docker.com/engine/install/
- **Install Hyperledger Fabric Samples (2.3 or above) :** Please refer https://hyperledger-fabric.readthedocs.io/en/latest/install.html
- **Install Hyperledger Cacti :** Please refer https://hyperledger-cacti.github.io/cacti/weaver/getting-started/guide/  
- **Install Go Language (1.19.6):** Please refer https://go.dev/dl/ 
- **Install Node JS (16.20.0):** Please refer https://nodejs.org/en
- **Install Protobuf-compiler (3.15.6):** Please refer https://github.com/protocolbuffers/protobuf/releases/

   
# Multi Consortium Set Up:
- **Docker Swarm Network Formation:** 
 - `docker swarm init` : To initiate swarm network
 - `docker swarm join --token` : To join a node to an existing swarm network

 - **Overley Network:** 
 - docker network create --attachable --driver overlay &lt;NetworkName&gt; : To create a docker overlay network between distinct machines/VMs

 # Interoperability Framework:
**Clone Cacti:**
 - git clone https://github.com/hyperledger-cacti/cacti.git : To copy cacti from github

# IPFS:
- install, configure the Private IPFS Network by starting the IPFS daemon and peer nodes and setting the swarm key.
https://docs.ipfs.tech/install/

## Our Environment Setup for Evaluation

- **Processor:** Intel i5 CPU  
- **Memory:** 8 GB RAM  
- **Operating System:** Ubuntu 20.04 LTS (64-bit)
- **VM:** AWS EC2, Private Cloud, Oracle Virtual Box

## Citation

If you use **InterSnap** in your academic research purposes, please cite it as follows:

```latex


@article{InterSnap2025,
title     = {Auditable Ledger Snapshot for Non-Repudiable Cross-Blockchain Communication},
author    = {Sengupta, Tirthankar and Ghosh, Bishakh Chandra and Chakraborty, Sandip and Sural, Shamik},
}
