# Agent 学习

> 个人学习笔记与工程作业归档：记录 Agent 学习过程中所涉及的 Git、Linux 等基础知识，以及配套的动手实验作业。

## 📚 项目简介

本仓库是学习 Agent 相关基础技能过程中的笔记与练习集合，主要涵盖：

- **Git**：从基础命令到分支管理、冲突解决、远程推送、误操作恢复等
- **Linux**：常用命令、文件权限、进程与日志、网络排查等
- **工程实践**：围绕 `awk`、`sed`、Git 恢复等主题的动手实验

## 🗂️ 目录结构

```
Agent学习/
├── Git基础.md              # Git 常用命令与工作流笔记
├── linux基础.md            # Linux 常用命令与运维基础笔记
├── LICENSE                 # MIT 许可证
├── README.md               # 本文件
└── 工程作业/
    ├── 工程作业1/          # Linux 命令实战
    │   ├── linux-awk命令学习/
    │   ├── linux-sed命令学习/
    │   ├── linux-debug-lab/
    │   └── test.log
    └── 工程作业2/          # Git 与工程化实验
        ├── git-recovery-lab/   # Git 误操作与恢复练习
        └── sbx/                # Go 沙盒/工具项目
```

## 📝 笔记内容

### Git 基础 (`Git基础.md`)

- 常见命令：`git init` / `clone` / `status` / `add` / `commit` / `diff` / `log`
- 分支操作：`branch` / `switch` / `merge`，以及分支命名规范
- 冲突与撤销：`.gitignore`、`restore`、`reset`、`revert`、`reflog`、`stash`、`rm`
- 远程协作：`remote`、`push`

### Linux 基础 (`linux基础.md`)

- 文件系统与命令：`pwd` / `ls` / `cd` / `cp` / `mv` / `rm` / `cat` / `less` / `head` / `tail` / `grep` / `find`
- 文本处理：`sed`、`awk`
- 权限管理：`chmod` 与 owner/group/others
- 进程与日志：`ps` / `top` / `kill` / `tail -f`
- 网络排查：`curl` / `ss` / `lsof` / `ping` / `nc`

## 🧪 工程作业

### 工程作业 1 —— Linux 命令实战

| 目录 | 说明 |
| --- | --- |
| `linux-awk命令学习/` | 通过 `score.txt` 练习 `awk` 文本分析 |
| `linux-sed命令学习/` | 使用 `sed` 完成文本替换、删除、打印等操作 |
| `linux-debug-lab/` | 通过 `scripts/` 与 `logs/` 练习日志排查与调试 |

### 工程作业 2 —— Git 与工程化

| 目录 | 说明 |
| --- | --- |
| `git-recovery-lab/` | 模拟误提交、误删场景，练习 `reset` / `revert` / `reflog` 恢复 |
| `sbx/` | Go 语言小型沙盒/工具项目，配套 CI 与 `goreleaser` 发布流程 |

## 🚀 使用方式

```bash
# 克隆仓库
git clone <repo-url>
cd Agent学习

# 阅读笔记
open Git基础.md
open linux基础.md

# 进入某个作业目录进行练习
cd 工程作业/工程作业1/linux-awk命令学习
```

## 📄 License

本项目基于 [MIT License](LICENSE) 开源。
