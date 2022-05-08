#!/usr/bin/env pwsh
$extra_packages = Get-Content -Path extra_packages | Select-String '^[^#]'
docker build --tag dev-deb --build-arg EXTRA_PACKAGES="$extra_packages" .