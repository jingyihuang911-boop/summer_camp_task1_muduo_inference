# muduo

## 1. 代码补全：
根据src/backend/backend.cpp中的注释提示，补全softmax、matmul、rmsnorm、axpy、dot函数的实现


## 2. 编译：  
```bash  
make clean  
make  
```

## 3. 运行
1. Usage
```bash
./muduo 模型路径 分词器路径 提示词/提示词文件路径
```

2. 示例 
```bash
./muduo data/stories110M.bin data/tokenizer.bin "once upon a time,"
```

3. 完整测试，最终性能以此方式运行输出的平均吞吐量为准
```bash
./muduo data/stories110M.bin data/tokenizer.bin data/input_prompt.txt
```