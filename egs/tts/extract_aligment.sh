for i in exp/tri4a_ali/ali.*.gz;
do ../../src/bin/ali-to-phones --ctm-output exp/tri4a/final.mdl \
ark:"gunzip -c $i|" -> ${i%.gz}.ctm;
done;
