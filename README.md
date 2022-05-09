# labels

| label | description | type |
|---|---|---|
| org.opencontainers.image.created | date and time on which the image was built. | string, date-time as defined by RFC 3339 |
| org.opencontainers.image.authors | contact details of the people or organization responsible for the image| freeform string |
| org.opencontainers.image.url | URL to find more information on the image  | url |
| org.opencontainers.image.documentation | URL to get documentation on the image | url |
| org.opencontainers.image.source | URL to get source code for building the image | url |
| org.opencontainers.image.version | version of the packaged software | semver |
| org.opencontainers.image.revision | Source control revision identifier for the packaged software. | string |
| org.opencontainers.image.vendor | Name of the distributing entity, organization or individual. | string |
| org.opencontainers.image.licenses | License(s) under which contained software is distributed as an SPDX License Expression. | SPDX License Expression |
| io.github.ioci.user | infomation about user | name=abc&uid=$PUID&gid=$PGID&time_zone=$TZ&language=$LANG&home=/config/ |
