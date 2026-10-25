# homelab-cluster

Setup of my homelab Talos cluster.

> **Public, anonymized copy.** This is a public mirror of my homelab infrastructure.
> All secrets and environment-specific values have been stripped before publishing.

## Redacted values

The following have been replaced with `REDACTED` (or example values):

- Machine & bootstrap tokens (`token`)
- Cluster `id` and `secret`
- `secretboxEncryptionSecret`
- CA / client private keys (`key`)
- CA / client certificates (`crt`)
- Keycloak bootstrap admin password
- Internal IP addresses (anonymized to the `192.168.1.0/24` example range)

The root CA certificate (`homelab-root-ca.crt`) is intentionally excluded (`*.crt` is gitignored).

## Regenerating a working setup

1. Bootstrap a fresh cluster with `talosctl gen config` to produce your own
   `controlplane.yaml` / `worker.yaml` (see `talos/`).
2. Install cert-manager and generate your own root CA and wildcard certificates
   (see `kubernetes/certificate-management/`).
3. Set your own Keycloak admin password in `kubernetes/keycloak/values.yaml`.
4. Adjust the MetalLB address pool to match your LAN in `kubernetes/metalLB/metallb.yaml`.
