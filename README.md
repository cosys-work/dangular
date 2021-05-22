# D-Angular

https://kubernetes.io/docs/tutorials/kubernetes-basics/create-cluster/cluster-intro/

This dashboard is for a similar control plane as found in the above link. It coordinates all activities in your dashboard cluster:
1. Scheduling dashboard grid processes
2. Maintaining dashboard's current state clone
3. Scaling dashboard grids
4. Rolling out new updates

A node is another borrowed concept common in cluster and graphs related docs that we have adopted in the context of this project to mean nodes of single responsibility dashboards.

A node also has a cubelet which manages the node and its communications with the control plane. A node always exists as a parts of a triplet or a higher n-tuplet.

Nodes communicate with the control plane node via the prox-e and/or prox-g API. The can be used in both the browser and the node/deno environments. Devcubes are available with minimal servers and static dashboards with dynamically updated data.

Finally `podman` and `buildah` based CI/CD pipeline that builds these devcubes and production ready cubelets allow us to think in terms of pods, shared storage volumes, networking, node init config etc. 


# Installation

Once you have a system with nodejs lts and docker configured, install yarn and run the initialization script.

1. Install yarn: `npm i -g yarn`.
2. Then run init: `./init.sh`
3. Navigate to [localhost:8080](localhost:8080)

You can run init as many times as you want to see updates. We will update tweaks for a live dev pod later but till then we encourage the use of the more performant and synced option of local nx-ng-node based server for local dev environments using `nx serve` or `npx nx serve`.

# Deployment

Deployment steps using kubernetes services and lxd will be added here. Each node has its own all-stack-service center.

# Meta Components

https://kubernetes.io/docs/reference/ K is for kubernetes, c is for curedit.

1.  cubelet - The primary agent that runs on each node. The cubelet takes a set of PodSpecs and ensures that the described containers are running and healthy.

2. cube-api-server - REST API that validates and configures data for API objects such as pods, services, replication controllers.

3. kube-controller-manager - Daemon that embeds the core control loops shipped with Kubernetes.

4. kube-proxy - Can do simple TCP/UDP stream forwarding or round-robin TCP/UDP forwarding across a set of back-ends.

5. cube-scheduler - Scheduler that manages availability, performance, and capacity.


# Mega Components

1. Static Cards
2. Stato-dynamic Card Grids
3. Floating toolbars/headers/footers/sidebars
4. Floating action buttons/prompts/symbols/clouds
5. Hypergraph-based workspace grids

[CHANGELOG]: ./CHANGELOG.md
[LICENSE]: ./LICENSE
[version-badge]: https://img.shields.io/badge/version-1.3.0-blue.svg
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg
