# Ubuntu Dev Container

A customized, persistent development environment managed via Podman. This setup transforms a minimal Ubuntu base into a full-featured CLI workspace, including build tools, networking utilities, and personalized configuration.

---

## 🚀 Quick Start

Ensure you have `podman` and `make` installed, then run the following:

```bash
make build    # 1. Build the image
make create   # 2. Spin up the container
make run      # 3. Enter the environment (launches Tmux)
make rm       # 4. Force remove the container
make clean    # 5. Clean up both container and image
make rebuild  # 6. Full reset: wipe everything and start fresh
```

## 📋 Notes
Sometimes tmux displayed random garbage characters. Increasing the escape-time seems to resolve the issue.  
[Garbage characters printed when attaching remote tmux session #18600](https://github.com/microsoft/terminal/issues/18600)  
[Spurious OSC 11 when using tmux over Windows' SSH #18004](https://github.com/microsoft/terminal/issues/18004)
