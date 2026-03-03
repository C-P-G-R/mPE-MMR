#!/bin/bash
export PEMMR_HOME="/home/proteomics/mPEMMR"

# CLASSPATH 설정
export CLASSPATH="$PEMMR_HOME/mPEMMR-3.1.jar:$PEMMR_HOME/lib/parquet-1.0-SNAPSHOT.jar"
#export CLASSPATH="$PEMMR_HOME/mPEMMR_3.1.jar"

# 메모리 설정
MEM="400G"

if [ -z "$1" ]; then
  echo "Example) mPEMMR_3.1.sh [mPEMMR_param.txt] [raw file URL]"
  exit 1
fi

# Java 실행
#java -Xmx$MEM -Dhadoop.home.dir=/opt/homebrew/Cellar/hadoop/3.4.2 mpemmr.PEMMRExec "$@"
java -Xmx$MEM mpemmr.PEMMRExec "$@"

exit 0

