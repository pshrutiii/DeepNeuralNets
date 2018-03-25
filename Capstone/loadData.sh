#!/bin/sh
 
sudo python3 -m pip install -r requirements.txt
cd /home/ubuntu/.kaggle
cat <<EOF >/home/ubuntu/.kaggle/kaggle.json
{"username":"pshrutiii","key":"25c27698e3f903dc046962eea76878b5"}
EOF
chmod 600 kaggle.json
kaggle competitions download -c landmark-retrieval-challenge
cd /home/ubuntu/.kaggle/competitions/landmark-retrieval-challenge
unzip index.csv.zip
unzip sample_submission.csv.zip
unzip test.csv.zip
mv index.csv ~/DeepNeuralNets/Capstone/.
mv sample_submission.csv ~/DeepNeuralNets/Capstone/.
mv test.csv ~/DeepNeuralNets/Capstone/.