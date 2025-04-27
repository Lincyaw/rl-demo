

base:
	docker build -t rl-test:base .

gsm8k:
	docker build -t rl-test:fay -f src/gsm8k-example/Dockerfile .

run:
	docker run -itd --runtime=nvidia --gpus 2 --net=host --shm-size="10g" --cap-add=SYS_ADMIN -v $(pwd):/workspace/code --name verl-test rl-test:base bash