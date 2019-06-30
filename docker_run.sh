#! /bin/bash
if [[ `docker images | grep neptunus/yiluzhuanqian | grep -v grep | wc -l` -eq 0 ]]; then docker pull neptunus/yiluzhuanqian; else echo  "docker image existed!"; fi && if [[ `docker ps | grep "neptunus/yiluzhuanqian" | grep -v grep | wc -l` -eq 0  ]]; then  docker run  --name=ylzq15.1.2 -d -e uid=24126 neptunus/yiluzhuanqian; else echo "container is running..."; fi
