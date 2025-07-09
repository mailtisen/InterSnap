# InterSnap
InterSnap is an auditable ledger snapshot technique for non-repudiable cross-blockchain communication

<!-- 

# Core Contracts and Related Functionalities

| Functions| Description | Folder Path |
|---------------------|-------------|------------|
| **InvokeSnapshot**  | The underlying module is used to create snapshot |`/home/kgpfabric1/Work_TS/Work1_Snapshot/InterSnap/src/invokesnapshot` |
| **SubmitAccessRequest**   | Handles access request creation, and saving of request details. | `src/chaincode/access_contol/SubmitAccessRequest.go` |
| **ManageInteropRequest**   | Extracts and Fetches access request attributes from the interoperation payload| `src/chaincode/manage_interop_request/manage_interop_request_chaincode.go` |
| **CheckAccessResponder**   | Checks access validation at destination | `src/chaincode/check_access_policy_dest/CheckaccessResponder.go` |
| **SaveRequestPDC**   | Saving requestlist into private PDC store. | `src/chaincode/pdc_chaincode/saveRequestPDC.go` |
| **VerifySignature** | Enables verification of ECDSA signatures for different entities | `app/handle-signature-app/server.js` |
 -->


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
% journal   = {IEEE Transactions on ABCD},  
% year      = {2025},
% volume    = {XX},     
% number    = {YY},      
% pages     = {ZZ-ZZ},   
% publisher = {IEEE}
}

% @article{InterSnap2025,
% title     = {Auditable Ledger Snapshot for Non-Repudiable Cross-Blockchain Communication},
% author    = {Sengupta, Tirthankar and Ghosh, Bishakh Chandra and Chakraborty, Sandip and Sural, Shamik},
% journal   = {IEEE Transactions on ABCD},  
% year      = {2025},
% volume    = {XX},     
% number    = {YY},      
% pages     = {ZZ-ZZ},   
% publisher = {IEEE}
% }

