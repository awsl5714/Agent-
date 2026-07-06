# 使用 while true 建立無限循環
while true
do
    # 獲取當前時間戳
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    
    # 向日誌文件追加寫入一行內容
    echo "[${TIMESTAMP}] INFO: 這是 long_running.sh 的定時日誌（PID: $$）" >> ../logs/app.log
    
    # 暫停 1 秒
    sleep 1
done

