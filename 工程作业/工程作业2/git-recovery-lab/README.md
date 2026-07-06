工程作业 2：Git Disaster Recovery Lab
项目结构
git-recovery-lab/
├── README.md
├── app.py
├── notes.md
└── .gitignore

### 准备工作（模拟远程）

1. 本地创建一个 bare 仓库充当"远程"，这样才能真实区分"还没 push"和"已经 push"两种场景：
   - git init --bare ../origin.git
   - git remote add origin ../origin.git

任务（建议按下面两段分开做，避免互相污染提交历史）

### 第一段：主线 + merge conflict + .gitignore

1. 初始化仓库，提交初始版本，push 到 origin。
2. 新建分支 feature/add-notes。
3. 在分支上修改 notes.md 并提交。
4. 切回 main，修改同一行，制造 merge conflict。
   merge 分支并手动解决冲突，提交，push。
5. 创建 .gitignore，忽略：
   .venv/
   __pycache__/
   .env
   故意把 .env commit 进去，然后用正确方式移出 Git tracking（git rm --cached .env，提交）。

### 第二段：撤销与找回实验（commit 数继续累加到总数 ≥10）

1. 模拟"不小心 commit 到 main 但还没 push"：改一处代码并提交，不要 push，再用 reset 回退到 push 之前的状态。
2. 模拟"已经 push 了错误 commit"：改一处代码、提交、push，然后用 revert 生成反向提交并 push，而不是用 reset 改写已推送的历史。
3. 模拟 reset --hard 后发现代码丢了：在当前分支上连续做 3 次小改动并各自提交，然后执行 git reset --hard HEAD~2（故意"删掉"最近两次提交），用 git reflog 找到丢失的提交并恢复（reset 或 cherry-pick 回来）。
4. 使用 git stash：修改一处文件但不提交，stash 暂存，切换分支或做点别的操作，再 stash pop 恢复修改。

### 验收标准

你必须能解释：

1. 工作区、暂存区、本地仓库。
2. add 和 commit 区别。
3. branch 是什么。
4. merge conflict 为什么发生。
5. .gitignore 为什么对已追踪文件不生效。
6. reset 和 revert 区别。
7. reflog 能救什么。
8. stash 适合什么场景。
9. 如果错误 commit 已经 push，为什么更推荐 revert 而不是 reset。
   产出物
10. 至少 10 个 commit。
    至少 1 次 merge conflict。
    README 记录每个灾难恢复场景。
    2 分钟口述稿：如何安全撤销错误提交。
