kubectl create namespace dynatrace
kubectl apply -f https://github.com/Dynatrace/dynatrace-oneagent-operator/releases/latest/download/kubernetes.yaml
kubectl -n dynatrace logs -f deployment/dynatrace-oneagent-operator

kubectl -n dynatrace create secret generic oneagent --from-literal="apiToken=u9JR0vr-SFmK1_zyYUb3S" --from-literal="paasToken=tjOICdDdSfqDNYkiGc4gt"

kubectl apply -f dynatrace.yaml