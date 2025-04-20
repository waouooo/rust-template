# Rust 项目模板
本项目是一个 Rust 项目模板，用于快速创建新的 Rust 项目。

## 目录结构
项目的目录结构如下：
```
.
├── _typos.toml
├── .github
│   └── workflows
│       └── build.yml
├── .gitignore
├── .pre-commit-config.yaml
├── assets
├── Cargo.lock
├── Cargo.toml
├── CHANGELOG.md
├── cliff.toml
├── deny.toml
├── fixtures
├── HELP.md
├── LICENSE
├── README.md
└── src
    └── main.rs
```

## 使用方法

1. 使用以下命令生成项目：
```bash
cargo gengerate waouooo/rust-template
# or
#cargo generate --git https://github.com/waouooo/rust-template
# 或者将模板克隆至本地使用-p命令
#cargo generate -p rust-template
```

2. 替换cliff.toml中的远程仓库地址
```toml
#...
 47 # postprocessors
 48 postprocessors = [
 49     { pattern = '\$REPO', replace = "https://github.com/waouooo/rust-template" }, # replace repository URL
 50 ]
#...
```

3. 安装pre-commit钩子
```bash
pre-commit install
```
