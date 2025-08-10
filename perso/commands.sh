sudo systemctl restart comfyui.service

cd ~/.ssh
gcloud compute os-login ssh-keys add --key-file=comfy_vm_key.pub

gcloud compute ssh comfyvm --zone europe-west3-b

gcloud compute scp --recurse comfyvm:~/ComfyUI/output /Users/artem/Downloads/output-local --zone=europe-west3-b
scp -i ~/.ssh/comfy_vm_key artem@34.78.28.204:~/output.zip ~/Downloads/

#***
git clone https://github.com/cosaques/comfyui-on-cloud
chmod +x ./comfyui-on-cloud/src/install.sh
chmod +x ./comfyui-on-cloud/src/virgin_vm.sh
chmod +x ./comfyui-on-cloud/perso/models-install.sh

./comfyui-on-cloud/src/virgin_vm.sh # run this only for new VM. This will install miniconda, cuda 11.8, torch.
source ~/.bashrc
./comfyui-on-cloud/src/install.sh
./comfyui-on-cloud/perso/models-install.sh
