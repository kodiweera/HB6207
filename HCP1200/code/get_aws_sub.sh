s=$1
mkdir $s
aws s3 cp s3://hcp-openaccess/HCP_1200/$s ./$s \
    --recursive \
    --exclude "*" \
    --include "*LR*" \
    --include "*RL*" \
    --exclude "*unprocessed*" \
    --exclude "*WM*" \
    --exclude "*T1w*" \
    --exclude "*.ica*" \
    --exclude "*ICA*" \
    --exclude "*clean*" \
    --exclude "*fsaverage*" \
    --exclude "*RestingStateStats*" \
    --exclude "*Atlas_stats*" \
    --exclude "*7T*" \
    --exclude "*unprocessed*" \
    --exclude "*MEG*"
