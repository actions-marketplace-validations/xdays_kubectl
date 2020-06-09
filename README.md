# Kubectl Action

Github Action for kubectl

# Input

## kubeconfig

Base64 encdoed config file, generate it by:

```
cat ~/.kube/config | base64
```

# Usage

```
- uses: xdays/kubectl@1.0.0
  name: Deploy to K8S
  with:
    kubeconfig: ${{ secrets.KUBE_CONFIG_DATA }}
    args: apply -f deployment.yaml
```
