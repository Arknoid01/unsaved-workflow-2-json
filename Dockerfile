# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown registry custom node 'CheckpointLoaderSimple' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'CLIPTextEncode' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'CLIPTextEncode' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'CLIPTextEncodeSDXL' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'EmptyLatentImage' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'KSampler' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'VAEDecode' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'SaveImage' (no aux_id) - skipped
# Could not resolve unknown registry custom node 'VAELoader' (no aux_id) - skipped

# download models into comfyui
RUN comfy model download --url https://huggingface.co/utnah/ckpt/blob/03e1aa0b1532aee92dfc5d5c529875d225adc7f1/sd-v1-5.ckpt --relative-path models/checkpoints --filename sd-v1-5.ckpt
# COPY input/ /comfyui/input/
