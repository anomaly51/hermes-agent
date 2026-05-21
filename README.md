# Hermes Agent Image

This repository only builds the Hermes Agent Docker image.

CI/CD flow:

1. Call the shared app release workflow from `anomaly51/github-actions-toolkit`.
2. Promote the base gateway image to a release tag.
3. Push `harbor.api-api-api.com/hermes-agent/gateway:<tag>`.
4. Commit the new image tag into `anomaly51/workload-2-k3s-argocd`.
5. Argo CD deploys the updated manifest from `apps/hermes-agent`.

The Kubernetes manifests stay in the GitOps repository.
