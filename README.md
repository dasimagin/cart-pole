# Cart-Pole
[![Docs](https://github.com/dasimagin/cart-pole/actions/workflows/docs.yml/badge.svg?branch=master)](Docs)

A pet research project for learning modern RL with a taste of JAX and robotics.
You can find the full documentation [here](https://dasimagin.github.io/cart-pole/).
Also, you can follow my progress on my [blog](https://dasimagin.github.io) and [YouTube channel](https://www.youtube.com/@dasimagin).

## Quick Start

You need to install **bazelisk** to build and run the project.

```bash
brew install bazelisk   # macOS
apt install bazelisk    # Ubuntu
```

### Docs
To serve the documentation and verify that Bazelisk is set up correctly:
```
bazelisk run //docs:server
```
