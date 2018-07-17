FROM alpine:3.7

CMD ["sh", "-c", "while true; do echo `date '+[%D %T]'` `df -h /data | tail -n 1 | awk '{print $5}'` of disk space is used; sleep 5; done;"]
