kubectl apply -f https://www.dynatrace.com/support/help/codefiles/kubernetes/kubernetes-monitoring-service-account.yaml

kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}'

$b = kubectl get secret $(kubectl get sa dynatrace-monitoring -o jsonpath='{.secrets[0].name}' -n dynatrace) -o jsonpath='{.data.token}' -n dynatrace

[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($b))