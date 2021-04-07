This application is only for testing and POC. Zero value otherwise.

OpenShift Setup:

1. Create a test project
```
$ oc new-project rhtest
```
2. Add privileged SCC to default serviceaccount
```
$ oc adm policy add-scc-to-user privileged -z default
```
3. Launch a new DaemonSet using a test app that logs PIDs on the host. The log-pids-ds.yaml file is shared further below:
```
$ oc create -f https://raw.githubusercontent.com/bostrt/log-pids/master/daemonset.yaml
```
4. Check that the DaemonSet rolls out without an issue:
```
$ oc get pods -n rhtest -o wide
```
5. SSH to any node where one of the new log-pids Pods are running
```
$ ssh <node>
$ cat /var/lib/log-pids/ps.txt
<expect large output>
```
