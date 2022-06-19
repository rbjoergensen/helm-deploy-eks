# Helm deploy to EKS
GitHub action for deploying a Helm chart to Amazons Elastic Kubernete Service(EKS).
## Example
The following can be used in a GitHub workflow to deploy a helm chart.
``` yaml
name: Helm deploy

on:
  push:
    branches:
      - main

jobs:
  docker:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2
      
      - name: Helm Deploy
        uses: rbjoergensen/helm-deploy-eks@v2
        with:
          access_key: "${{ secrets.AWS_EKS_ACCESS_KEY }}"
          secret_key: "${{ secrets.AWS_EKS_SECRET_KEY }}"
          region: "eu-central-1"
          cluster_name: "eks-cluster-01"
          command: >
            helm upgrade myapp ./helm
            --install
            --wait
            --values=./helm/values.yaml
```