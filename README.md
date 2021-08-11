# Upload to Packagecloud.io

This action encapsulates the setup to upload any package to PackageCloud.io.


## Inputs
```yaml
inputs:
  package-name:
    description: Name of the package to upload
    required: true
  packagecloud-username:
    description: The username to use on PackageCloud.io
    required: true
  packagecloud-repo:
    description: The repository to upload on this user
    required: true
  packagecloud-distrib:
    description: The distribution/version this package is meant to (only for certain package types)
    required: false
  packagecloud-token:
    description: The Token with push access
    required: true
```
