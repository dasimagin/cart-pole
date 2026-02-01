# Firmware

To flash the microcontroller, hold down `BOOTSEL` and connect the device via USB. Then run:

```bash
bazel run //firmware:flash
```

If you only want to verify that the project builds successfully:

```bash
bazel build //firmware:elf
```