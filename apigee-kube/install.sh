gcloud container clusters create apigee-docker-planet --machine-type n1-standard-2 --num-nodes 6 || echo "create cluster failed"
gcloud container clusters get-credentials apigee-docker-planet || exit 1
wget https://raw.githubusercontent.com/rajanishgj/utilities/master/apigee-kube/kube-apigee-install-scripts.zip || exit 1
unzip kube-apigee-install-scripts.zip || exit 1
./devutils/kube-clean-setup.sh || exit 1

