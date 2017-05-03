# Voxxed BigData Pipeline
 
This repository contains pipelines for BigData demo shown at Voxxed talks in 2017.
 
## Running

1) Start [Openshift Origin Development Environment](https://github.com/openshift/origin/blob/master/docs/cluster_up_down.md). 

2) Execute the `install.sh` script to prepare the following projects:
   - `CI-CD`: the project that will host the Jenkins pipelines;
   - `Development`: where software will be delivered at first stage;
   - `Production`: an environment where software will be delivered upon manual confirmation.

3) Login into Openshift and **start the pipelines** in the `CI-CD` projects (*Builds* -> *Pipelines*)

4) Go to the `Development` project and you'll see the applications deployed when ready.

5) All pipelines will ask confirmation to deploy each application into the `Production` project.
