#!/bin/bash
set -x

# Specify your EXEHOME first. EXEHOME=/home/user-name/Model-Selection-Reasoning/src
EXEHOME=/Users/seonils/dev/llm-reasoners/examples/Model-Selection-Reasoning/src
cd ${EXEHOME}

python selection_math.py --start 486 \
        --end -1 \
        --dataset 'gsm8k' \
        --backbone 'gpt4' \
        --cot_temperature 0. \
        --pal_temperature 0. \
        --sc_num 1 \
        --output_dir '../output/nov4_gpt4greedy/coh' \
        --when_only_conflict 3 \
        --cohprompt /Users/seonils/dev/llm-reasoners/examples/Model-Selection-Reasoning/src/prompts/prep_reflexion/5_cohlike_prompt.txt
        # --actor_selection_prompt "/Users/seonils/dev/llm-reasoners/examples/Model-Selection-Reasoning/src/prompts/prep_reflexion/4_selection_prompt_0_1_nobiassys_modif_cotpalonly_verbose_nomenclature.txt" 

# # run evaluation at once
# python evaluate.py --input_path '../output/nov4_only_conflict/coh/gpt4/gsm8k*.jsonl'\
#                 --dataset_type 'math'