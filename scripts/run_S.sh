export CUDA_VISIBLE_DEVICES=0

#cd ..

for model in FEDformer Autoformer Informer Transformer
do

for preLen in 60 240 720 1440
do

# DT_0001 -> INCHEON
python -u run.py \
  --is_training 1 \
  --root_path ./dataset/processed/ \
  --data_path tide_data_DT_0001.csv \
  --task_id DT_0001 \
  --model $model \
  --data  DT_0001\
  --features S \
  --seq_len  4320\
  --label_len 2880 \
  --pred_len $preLen \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --d_model 512 \
  --itr 2 \

done

done

