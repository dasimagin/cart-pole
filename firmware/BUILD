load("@aspect_bazel_lib//lib:transitions.bzl", "platform_transition_filegroup")

cc_binary(
    name = "firmware.elf",
    srcs = ["main.cpp"],
    defines = [
        "PICO_STDIO_USB=1",
        "PICO_STDIO_UART=0",
    ],
    tags = ["manual"],
    deps = [
        "@pico-sdk//src/rp2_common/pico_stdio_usb",
        "@pico-sdk//src/rp2_common/pico_stdlib",
    ],
)

platform_transition_filegroup(
    name = "firmware_rp2350",
    srcs = [":firmware.elf"],
    target_platform = "@pico-sdk//bazel/platform:rp2350",
)

genrule(
    name = "firmware.uf2",
    srcs = [":firmware_rp2350"],
    outs = ["firmware.uf2"],
    cmd = "$(location @picotool//:picotool) uf2 convert $(location :firmware_rp2350) $@",
    tools = ["@picotool"],
)

sh_binary(
    name = "flash",
    srcs = ["flash.sh"],
    args = [
        "$(rootpath @picotool//:picotool)",
        "$(rootpath //firmware:firmware.uf2)",
    ],
    data = [
        "//firmware:firmware.uf2",
        "@picotool",
    ],
)
