. ./path.sh || exit 1
. ./cmd.sh || exit 1
mfccdir=mfcc
for x in data/alignme
do
    steps/make_mfcc.sh --cmd "$train_cmd" --nj 1 $x exp/make_mfcc/$x $mfccdir
    utils/fix_data_dir.sh data/alignme
    steps/compute_cmvn_stats.sh $x exp/make_mfcc/$x $mfccdir
    utils/fix_data_dir.sh data/alignme
done
