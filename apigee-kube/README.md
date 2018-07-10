# Google Deployment Manager Template

This directory contains a Google Cloud Deployment Manager template for apigee docker planet.

If you have the Google Cloud SDK installed (get it [here](https://cloud.google.com/sdk/)), you can create a new deployment via the command:
```
$ gcloud deployment-manager deployments create apigee-kube-deployment --config=apigee-kube-docker-planet.yaml
```

**NOTE:** You must grant your default compute service account
the correct permissions before creating the deployment.
Otherwise, the installation will fail. Make sure that your
default compute service account (by default
`[PROJECT_NUMBER]-compute@developer.gserviceaccount.com`)
includes the following roles:
* `roles/container.admin` (Container Engine Admin)
* `roles/editor` (included by default)

You can set this permission by navigating to the [IAM
section](https://console.cloud.google.com/permissions/projectpermissions)
of the Google Cloud Console, viewing the permissions for your
default compute service account
(`[PROJECT_NUMBER]-compute@developer.gserviceaccount.com`), and
making sure that both Editor (`roles/editor`) and Container
Engine Admin (`roles/container.admin`) are selected.

## Changing parameters
See the file `apigee-kube-docker-planet.yaml` and `apigee-kube-docker-planet.jinja.schema` for details on customization. Note that you can override a parameter at the command line. For example:
```
$ gcloud deployment-manager deployments create apigee-kube-deployment --template=apigee-kube-docker-planet.jinja --properties gkeClusterName:apigee-docker-planet,apigeeReleaseVersion:master
```
