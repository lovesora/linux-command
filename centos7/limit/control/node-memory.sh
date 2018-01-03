# --max_old_space_size可以限制常驻内存占用，注意node版本限制 > 6.11.x可能无效
cpulimit -l 50 node --max_old_space_size=1000 /usr/local/bin/ng build --target=production --deploy-url=open/ --bh /

