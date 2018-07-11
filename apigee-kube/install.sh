gcloud container clusters create apigee-docker-planet --machine-type n1-standard-2 --num-nodes 6
gcloud container clusters get-credentials apigee-docker-planet
wget https://raw.githubusercontent.com/rajanishgj/utilities/master/apigee-kube/kube-apigee-install-scripts.zip
unzip kube-apigee-install-scripts.zip
./kube-apigee-install-scripts/devutils/kube-clean-setup.sh

