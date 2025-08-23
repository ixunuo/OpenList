#!/bin/bash

echo "🔍 验证开发环境配置..."
echo "================================="

# 检查Go
echo "📦 检查Go版本..."
if command -v go &> /dev/null; then
    go version
    echo "✅ Go 安装成功"
else
    echo "❌ Go 未找到"
    exit 1
fi

# 检查Node.js
echo ""
echo "📦 检查Node.js版本..."
if command -v node &> /dev/null; then
    node --version
    echo "✅ Node.js 安装成功"
else
    echo "❌ Node.js 未找到"
    exit 1
fi

# 检查pnpm
echo ""
echo "📦 检查pnpm版本..."
if command -v pnpm &> /dev/null; then
    pnpm --version
    echo "✅ pnpm 安装成功"
else
    echo "❌ pnpm 未找到"
    exit 1
fi

# 检查git
echo ""
echo "📦 检查Git版本..."
if command -v git &> /dev/null; then
    git --version
    echo "✅ Git 安装成功"
else
    echo "❌ Git 未找到"
    exit 1
fi

# 检查gcc
echo ""
echo "📦 检查GCC版本..."
if command -v gcc &> /dev/null; then
    gcc --version | head -1
    echo "✅ GCC 安装成功"
else
    echo "❌ GCC 未找到"
    exit 1
fi

# 检查build-essential
echo ""
echo "📦 检查build tools..."
if dpkg -l | grep -q build-essential; then
    echo "✅ build-essential 已安装"
else
    echo "❌ build-essential 未安装"
    exit 1
fi

echo ""
echo "🎉 所有开发环境要求都已满足！"
echo "================================="
