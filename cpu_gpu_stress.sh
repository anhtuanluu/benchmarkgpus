# Perform GPU, CPU, and I/O stress testing on Linux
sudo apt-get install -y stress htop iotop lm-sensors
# Run a stress test with `nproc` CPU workers (sqrt)
#                        `nproc` Virtual Memory workers (malloc / free)
#                        `nproc` workers calling (sync)
#                        `nproc` workers writing to disk (write / unlink)
# For a total of 60 seconds.
stress --cpu `nproc` --vm `nproc` --vm-bytes 1GB --io `nproc` --hdd `nproc` --hdd-bytes 1GB --timeout 60s
# GPU
git clone https://github.com/wilicc/gpu-burn
cd gpu-burn
make
./gpu_burn 60
# Monitor
htop 
sudo iotop
watch sudo sensors
watch nvidia-smi

