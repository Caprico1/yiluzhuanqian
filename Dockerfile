FROM neptunus/yiluzhuanqian
USER root

RUN /opt/yilu/mservice -user_id 24126 -reg_device || echo "error reg_device"

RUN  service rsyslog start && /opt/yilu/mservice  && sleep 10 &&  tail -f /opt/yilu/work/xig/debug.log

CMD echo "2018-07-31 09:25:27 running" > /logs && tail -f /logs
