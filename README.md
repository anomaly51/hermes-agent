# Hermes Agent Image

This repository only builds the Hermes Agent Docker image.

CI/CD flow:

1. Build `Dockerfile`.
2. Push `harbor.api-api-api.com/hermes-agent/gateway:<tag>`.
3. Commit the new image tag into `anomaly51/argocd-learn-gitops`.
4. Argo CD deploys the updated manifest from `apps/hermes-agent`.

The Kubernetes manifests stay in the GitOps repository.
