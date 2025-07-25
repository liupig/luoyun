export env=aliyun

export ALIYUN_AK_ID="ALIYUN_AK_ID"
export ALIYUN_AK_SECRET="ALIYUN_AK_SECRET"
export ALIYUN_AK_SECRET_ASR="ALIYUN_AK_SECRET_ASR"
export OSS_ACCESS_KEY_ID="OSS_ACCESS_KEY_ID"
export OSS_ACCESS_KEY_SECRET="OSS_ACCESS_KEY_SECRET"
export DASHSCOPE_API_KEY="DASHSCOPE_API_KEY"
export ARK_API_KEY="ARK_API_KEY"
export MINIMAX_API_KEY="MINIMAX_API_KEY"
export MINIMAX_GROUP_ID="MINIMAX_GROUP_ID"

target_dir="/home/ecs-user/luoyun_project/myenv/bin"; [[ ":$PATH:" != *":$target_dir:"* ]] && export PATH="$target_dir:$PATH"

pid=$(ps -ef | grep qiaoyun_runner.py | grep -v grep | awk '{print $2}')
kill $pid
sleep 1
nohup python3 qiaoyun/runner/qiaoyun_runner.py > qiaoyun/runner/qiaoyun_runner.log &
tail -f qiaoyun/runner/qiaoyun_runner.log