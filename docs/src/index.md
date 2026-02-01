# Overview

CartPole is a personal research project aimed at learning modern RL applicable to robotics.
The environment is a variation of the classic control problem, where a pole is attached by a joint to a cart that moves along a single axis.
A motor drives the cart, with acceleration serving as the control input.
The objective is to swing up the pole and keep it balanced in the unstable upright position.

![CartPole](svg/cart_pole.svg)

Some of the key technology and design choices behind this project:

1. **[Bazel]** Unified build and dependency system.
2. **[MkDocs]** Ccomprehensive docs with extensive use of `LaTeX`.
3. **[Pico2]** Simple microcontroller with a C++ SDK.
5. **[JAX]** Modern and efficient pure RL control

