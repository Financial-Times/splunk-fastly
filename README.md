# Fastly Splunk app

Support for [Fastly's real-time log streaming](https://docs.fastly.com/en/guides/about-fastlys-realtime-log-streaming-features) packaged as a Splunk app.

This Splunk app is compatible with the [Splunk Common Information Model (CIM)](https://docs.splunk.com/Documentation/CIM/5.0.1/User/Overview) for [Web](https://docs.splunk.com/Documentation/CIM/5.0.1/User/Web).

## Source types

| Source type      | Description                                                                                                                                                                                            |
|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `fastly:request` | Fastly service request logs. See the ["Fastly Logging Format" proposal](https://docs.google.com/document/d/1QEziLUj-UcSfju9zhvvBeOq6sl5taOwGxLVjSALPCgA/edit) for documentation on the message format. |

## Releasing

[Create a release in GitHub](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository#creating-a-release) to trigger a workflow that builds and uploads an package to the [GitHub release assets](/releases), e.g. `splunk_fastly-1.0.0.tar.gz`. [This file can be installed on Splunk.](https://docs.splunk.com/Documentation/SplunkCloud/latest/Admin/PrivateApps)

The version number in `app/default/app.conf` will automatically be updated in the default branch to match the release via a pull request.
