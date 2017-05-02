#!/bin/bash

oc new-project cicd --display-name="CI-CD"
oc create -f kafka-pipeline.yml
oc create -f spark-pipeline.yml
oc create -f web-pipeline.yml

oc new-project development --display-name="Development"
oc adm policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n development
oc create serviceaccount oshinko || true
oc adm policy add-role-to-user edit --serviceaccount oshinko || true

oc new-project production --display-name="Production"
oc adm policy add-role-to-user edit system:serviceaccount:cicd:jenkins -n production
oc create serviceaccount oshinko || true
oc adm policy add-role-to-user edit --serviceaccount oshinko || true
