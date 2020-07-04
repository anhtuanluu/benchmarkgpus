pip install tensorflow-gpu
pip install ai-benchmark

# To run AI Benchmark, use the following code:
from ai_benchmark import AIBenchmark
benchmark = AIBenchmark()
results = benchmark.run()

# optional 

AIBenchmark(use_CPU=None, verbose_level=1)
