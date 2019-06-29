FROM neptunus/yiluzhuanqian

USER root

RUN sh /root/mservice.sh 24126 && sleep 10 && tail -f /opt/yilu/work/xig/debug_cpu.log
