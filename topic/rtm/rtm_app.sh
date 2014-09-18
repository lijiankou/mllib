#! /bin/sh -f
Include="$HOME/google-library/include"
Lib="$HOME/google-library/lib:$HOME/lib/gmp/lib:/home/lijk/lib/lib/"
root_path="."
RootPath=$root_path"/experiment/data/benchmark"
export LD_LIBRARY_PATH="$Lib:LD_LIBRARY_PATH"
cmd="
  ./rtm
  --net_path=rtm_network
  --cor_path=rtm_corpus
  --alpha=0.01
  --topic_num=10
  "

gdb="
  gdb ./makeout/rtm_app.o
  "
#exec $gdb
exec $cmd
