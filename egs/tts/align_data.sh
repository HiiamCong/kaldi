. ./path.sh || exit 1
. ./cmd.sh || exit 1
steps/align_si.sh --nj 1 --cmd "$train_cmd" data/alignme data/lang \
exp/tri4a exp/tri4a_alignme || exit 1;
