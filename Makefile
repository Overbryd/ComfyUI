launch:
	PYTORCH_MPS_HIGH_WATERMARK_RATIO=0.0 python main.py --force-fp16

setup:
	direnv status
	pip install --upgrade pip
	pip install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cpu
	pip install -r requirements.txt
	pip install -r custom_nodes/ComfyUI-Manager/requirements.txt

test-mps:
	python test_mps.py

