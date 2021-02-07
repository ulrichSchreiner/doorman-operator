# doorman-operator

A simple ansible operator for the `doorman` service.

Still in development, do not use!

Start local usage with
```
$ make deployment-shell
$ make prepare-minikube-deployment
$ make minikube-deployment
```

**Please not that the Makefile will use your current KUBECONFIG, so make sure
not to point to a productive environment!**