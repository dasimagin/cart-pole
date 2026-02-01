load("@py_doc_deps//:requirements.bzl", "all_requirements")
load("@rules_python//python/entry_points:py_console_script_binary.bzl", "py_console_script_binary")

filegroup(
    name = "srcs",
    srcs = glob(
        ["**/*"],
        exclude = ["BUILD"],
    ),
    visibility = ["//visibility:public"],
)

py_console_script_binary(
    name = "serve",
    args = [
        "serve",
        "-f docs/mkdocs.yml",
    ],
    data = [
        ":srcs",
    ],
    pkg = "@py_doc_deps//mkdocs",
    script = "mkdocs",
    deps = all_requirements,
)

py_console_script_binary(
    name = "mkdocs_tool",
    pkg = "@py_doc_deps//mkdocs",
    script = "mkdocs",
    deps = all_requirements,
)

genrule(
    name = "site",
    srcs = [
        ":srcs",
    ],
    outs = ["site.tar"],
    cmd = """
    $(location :mkdocs_tool) build -f docs/mkdocs.yml --clean
    tar -chf $@ -C docs/site .
    """,
    tools = [":mkdocs_tool"],
    visibility = ["//visibility:public"],
)
