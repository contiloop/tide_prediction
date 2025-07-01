## 🚀 Get Started

1. 프로젝트를 클론하고 필요한 패키지를 설치하세요:
   ```bash
   git clone https://github.com/contiloop/tide_prediction.git
   cd tide-prediction
   pip install -r requirements.txt
   ```

2. 아래 명령어를 실행하여 실험을 시작할 수 있습니다:
   ```bash
   bash ./scripts/run_S.sh
   ```

## Colab_env :

1.install the miniconda
   ```bash
      # 1. 이전의 실패한 환경이 남아있을 수 있으므로 깨끗하게 삭제합니다.
      !conda remove --name pytorch_env --all -y
      print("기존 Conda 환경 삭제 완료.")
      
      # 2. Miniconda를 설치합니다.
      !wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
      !chmod +x Miniconda3-latest-Linux-x86_64.sh
      !./Miniconda3-latest-Linux-x86_64.sh -b -f -p /usr/local
      
      # 3. conda-forge 채널을 추가하여 환경을 새로 생성합니다.
      # -c pytorch -c conda-forge: pytorch 채널에서 먼저 찾고 없으면 conda-forge 채널에서 찾습니다.
      !conda create -n pytorch_env python=3.9 pytorch==1.9.0 cudatoolkit=11.1 -c pytorch -c conda-forge -y
      print("올바른 버전으로 Conda 환경 생성 완료.")
   ```
2. connect the virtual env to Colab
   ```bash
      # 4. 생성한 환경의 경로를 Colab에 연결합니다.
      import sys
      sys.path.insert(0, '/usr/local/envs/pytorch_env/lib/python3.9/site-packages/')
   ```
3. git clone
   ```bash
      !git clone https://github.com/contiloop/tide_prediction.git
         %cd tide_prediction/
   ```
4. download the dataset 