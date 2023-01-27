s=$1
func=rfMRI_REST1_LR
mask=../data/CANlab_2018_combined_atlas_2mm.nii.gz

date

mkdir ../data/${s}
aws s3 cp \
    s3://hcp-openaccess/HCP_1200/${s}/MNINonLinear/Results/${func}/${func}.nii.gz \
    ../data/${s}/${func}.nii.gz

f=../data/${s}/${func}.nii.gz

3dmaskave -quiet -mask "${mask}<1>" ${f} > ../data/${s}/roi_avg_ts_${func}
for m in $( seq 2 17 )
do
    3dmaskave -quiet -mask "${mask}<${m}>" ${f} > ../data/${s}/tmp
    ./abut ../data/${s}/roi_avg_ts_${func} ../data/${s}/tmp > ../data/${s}/tmp2 
    mv ../data/${s}/tmp2 ../data/${s}/roi_avg_ts_${func}
    cat ../data/${s}/roi_avg_ts_${func}
done
rm ../data/${s}/${func}.nii.gz

date


