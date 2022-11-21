# Griode Container

From [Griode]

> Griode lets you play music using a LaunchPad or a similar controller.

But dependencies is hard - so run it in a container!!

```
podman run -t -i --privileged -v /dev/bus/usb:/dev/bus/usb ghcr.io/steakunderscore/griode-container:v0.0.2@sha256:b059f80abbdd69a2254636165abfa8bd4141882e08b835e684201b236fe62c3e
```

[Griode]: https://github.com/jpetazzo/griode
