cd ComfyUI/

mkdir -p ./models/BiRefNet/
mkdir -p ./models/style_models/

wget https://huggingface.co/ViperYX/BiRefNet/resolve/main/BiRefNet-ep480.pth -P  ./models/BiRefNet
wget https://huggingface.co/ViperYX/BiRefNet/resolve/main/swin_large_patch4_window12_384_22kto1k.pth -P  ./models/BiRefNet
wget https://huggingface.co/camenduru/FLUX.1-dev/resolve/main/clip_l.safetensors -P  ./models/clip
wget https://huggingface.co/lllyasviel/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors -P  ./models/clip
wget https://huggingface.co/f5aiteam/CLIP_VISION/resolve/ab3e0511a3c17c6a601444defc83bbf017a4f3dd/sigclip_vision_patch14_384.safetensors -P  ./models/clip_vision
wget https://huggingface.co/mp3pintyo/FLUX.1/resolve/main/flux1-fill-dev.safetensors -P  ./models/unet
wget https://huggingface.co/lovis93/testllm/resolve/ed9cf1af7465cebca4649157f118e331cf2a084f/ae.safetensors -P  ./models/vae
wget https://huggingface.co/camenduru/FLUX.1-dev/resolve/fc63f3204a12362f98c04bc4c981a06eb9123eee/flux1-redux-dev.safetensors -P  ./models/style_models
