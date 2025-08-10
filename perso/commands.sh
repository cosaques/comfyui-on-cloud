sudo systemctl restart comfyui.service

compute ssh comfyvm --zone europe-west1-c

gcloud compute scp --recurse comfyvm:~/ComfyUI/output /Users/artem/Downloads/output-local --zone=europe-west1-c
scp -i ~/.ssh/comfy_vm_key artem@34.78.28.204:~/output.zip ~/Downloads/
