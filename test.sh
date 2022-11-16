export PYTHONWARNINGS="ignore"
accelerate launch imagen.py --train \
                            --source ./dataset \
                            --epoch 50 \
                            --wandb \
                            --no_patching \
                            --samples_out ./outputs/unet1_cond5.0_sample256_start64/samples \
                            --imagen ./outputs/unet1_cond5.0_sample256_start64/imagen.pth --self_cond \
			    --fp16 \
                            --cond_scale 5.0 \
                            --test_pkl ./dataset/test_pkl/0.pkl \
                            --text_encoder t5-large \
                            --pretrained t5-large \
                            --batch_size 128 \
                            --micro_batch_size 64 \
                            --sample_steps 256 \
                            --start_size 64 \
                            --num_unets 1 \
                            --train_unet 1 \
                            --sample_unet 1 \
