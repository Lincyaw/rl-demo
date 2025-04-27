FROM 10.10.10.240/library/verl:ngc-cu124-vllm0.8.3-sglang0.4.5-mcore0.12.0-te2.2
COPY libs/verl /verl
WORKDIR /workspace
RUN pip3 install -e /verl[vllm]
RUN pip3 install modelscope