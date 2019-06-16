curl -s -L -O https://git.io/get_helm.sh
sleep 5
chmod 700 get_helm.sh
sleep 5
./get_helm.sh --version v2.13.0

oc status
oc login -u system:admin
oc adm policy add-cluster-role-to-user cluster-admin admin

#oc new-project onr 

oc create -f ./openshift/pv-data01.yaml 
#oc create -f ./openshift/pvc-data01.yaml
#oc create -f ./openshift/pvc-jenkins.yaml

oc get pv 
