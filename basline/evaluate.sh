export DIR_TMP="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PYTHONPATH=$PYTHONPATH:$DIR_TMP/src
export PYTHONPATH=$PYTHONPATH:$DIR_TMP/utest

python src/nli/evaluation.py \
    --model_class_name "bert-base" \
    --max_length 512 \
    --per_gpu_eval_batch_size 16 \
    --model_checkpoint_path \
    "saved_models/bert-base1/checkpoints/eval/model.pt" \
    --eval_data pnli_test:none \
    --output_prediction_path 'output/bert8'
