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

## Q&A

1. cargo deny check报错
```
cargo deny check.........................................................Failed
- hook id: cargo-deny
- exit code: 1

2025-04-21 15:24:18 [ERROR] failed to interpret `cargo metadata`'s json: unknown variant `2024`, expected one of `2015`, `2018`, `2021` at line 1 column 44169: unknown variant `2024`, expected one of `2015`, `2018`, `2021` at line 1 column 44169
```
升级rust版本后未更新最新的cargo deny版本，导致报错。更新版本后正常。
```bash
cargo install cargo-deny
```
