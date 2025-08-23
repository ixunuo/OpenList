# DevContainer 开发环境配置

这个DevContainer配置提供了一个完整的开发环境，包含以下工具：

## 环境要求

- **Git**: 版本控制
- **Node.js**: >= 22.x
- **pnpm**: 包管理器
- **Golang**: >= 1.24
- **GCC**: 编译工具链

## 使用方法

### 使用VS Code

1. 确保安装了DevContainer扩展
2. 打开项目文件夹
3. 点击左下角的绿色按钮选择"Reopen in Container"
4. 等待容器构建完成

### 使用其他编辑器

如果您使用支持DevContainer的编辑器（如Cursor、GitHub Codespaces等），编辑器会自动识别并使用此配置。

## 包含的工具和扩展

### 开发工具
- Go 1.24
- Node.js 22.x
- pnpm (通过corepack管理)
- Git
- GCC 和 build-essential
- GitHub CLI

### VS Code 扩展
- GitLens - Git 增强功能
- Prettier - 代码格式化
- Go - Go语言支持
- TypeScript - TypeScript 支持
- Tailwind CSS - Tailwind CSS 支持

### 环境变量
- `GOPROXY`: https://goproxy.cn,direct (Go代理)
- `NPM_CONFIG_REGISTRY`: https://registry.npmmirror.com (npm镜像)

## 验证环境

容器启动后会自动运行环境验证脚本，检查所有必需工具是否正确安装。

您也可以手动运行验证：
```bash
./.devcontainer/verify-env.sh
```

## 自定义配置

如需修改配置，请编辑：
- `devcontainer.json`: 主要配置
- `Dockerfile`: 自定义构建步骤
- `verify-env.sh`: 环境验证脚本

## 故障排除

如果遇到问题，请检查：
1. Docker 是否正在运行
2. 网络连接是否正常（下载依赖时可能需要）
3. 是否有足够的磁盘空间

## 镜像源配置

为了提高下载速度，已配置以下镜像源：
- Go: goproxy.cn
- npm: npmmirror.com
- Node.js 相关包: npmmirror.com 镜像
