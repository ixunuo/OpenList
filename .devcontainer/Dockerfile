# Use the official Go image as the base
FROM mcr.microsoft.com/devcontainers/go:1.24-bookworm

# Install Node.js 22 and pnpm
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs \
    && corepack enable pnpm \
    && corepack prepare pnpm@latest --activate

# Install additional development tools
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables for better performance
ENV GOPROXY=https://goproxy.cn,direct
ENV NPM_CONFIG_REGISTRY=https://registry.npmmirror.com

# Verify installations
RUN go version && node --version && pnpm --version && gcc --version

# Set the working directory
WORKDIR /workspaces
