# doorman-operator

A simple ansible operator for the `doorman` service.

Still in development, do not use!

Start local usage with
```
$ make deployment-shell
$ make prepare-minikube-deployment
$ make minikube-deployment
# OR to run your operator (make sure to have your CRDs registered)
$ make run
```

**Please not that the Makefile will use your current KUBECONFIG, so make sure
not to point to a productive environment!**