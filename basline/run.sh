export MASTER_ADDR=localhostexport DIR_TMP="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PYTHONPATH=$PYTHONPATH:$DIR_TMP/src
export PYTHONPATH=$PYTHONPATH:$DIR_TMP/utest

python src/nli/training.py --model_class_name "albert-xxlarge" -n 1 -g 1 --single_gpu -nr 0 --max_length 412 --epoch 10 --learning_rate 2e-5 --gradient_accumulation_steps 8 --per_gpu_train_batch_size 1 \
--per_gpu_eval_batch_size 16 --save_prediction --train_data pnli_train:none --train_weights 1 --eval_data pnli_dev:none --eval_frequency 2000 --experiment_name "albert-xxlarge|pnli|nli"



