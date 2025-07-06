export CUDA_VISIBLE_DEVICES=0

#cd ..

for model in FEDformer Autoformer Informer Transformer
do

for preLen in 96 192 336 720
do

# DT_0001 -> INCHEON
python -u run.py \
  --is_training 1 \
  --root_path ./dataset/processed/15min \
  --data_path tide_data_DT_0001_15min.csv \
  --task_id DT_0001 \
  --model $model \
  --data  TIDE_15MIN\
  --features S \
  --seq_len  96\
  --label_len 48 \
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

# DT_0020 -> ULSAN
python -u run.py \
  --is_training 1 \
  --root_path ./dataset/processed/15min \
  --data_path tide_data_DT_0020_15min.csv \
  --task_id DT_0020 \
  --model $model \
  --data  TIDE_15MIN\
  --features S \
  --seq_len  96\
  --label_len 48 \
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

# DT_0057 -> DONGHAE
python -u run.py \
  --is_training 1 \
  --root_path ./dataset/processed/15min \
  --data_path tide_data_DT_0057_15min.csv \
  --task_id DT_0057 \
  --model $model \
  --data  TIDE_15MIN\
  --features S \
  --seq_len  96\
  --label_len 48 \
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
  --version Wavelets

done

done

