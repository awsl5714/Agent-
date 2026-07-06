工程作业 1：Linux Debug Lab
项目结构
linux-debug-lab/
├── data/
│   ├── input.txt
│   └── output.txt
├── logs/
│   └── app.log
├── scripts/
│   ├── run.sh
│   └── long_running.sh
└── README.md
任务
创建上述目录结构。
在 input.txt 写入 20 行文本。
用 grep 查找关键词。
用 head 和 tail 查看文件。
写 run.sh：
打印当前路径。
列出当前目录。
向 logs/app.log 写入一行带时间戳的日志。
给 run.sh 设置 755，运行它。
改成 644，观察为什么不能直接执行。
写 long_running.sh，每 1 秒写一行日志。
用 tail -f logs/app.log 观察日志。
用 ps 找到进程。
用 kill 杀掉进程。
启动一个简单 HTTP 服务：
python -m http.server 8000
用以下命令排查端口：
curl http://127.0.0.1:8000
ss -tuln
lsof -i :8000
nc -vz 127.0.0.1 8000
验收标准

你必须能解释：

755、644、700 分别什么意思。
为什么脚本没有执行权限不能直接运行。
tail -f 用来干什么。
ps 和 kill 怎么用。
curl 是什么。
ss -tuln 看什么。
lsof -i :8000 看什么。
nc -vz 用来测试什么。
stdout 和 stderr 区别。
产出物
linux-debug-lab/
README 记录所有命令和结果。
2 分钟口述稿：如何排查一个服务是否启动、端口是否监听、日志是否正常
