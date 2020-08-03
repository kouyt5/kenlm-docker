# kenlm-docker
kenlm的docker封装

## 使用方法
在当前目录下存放文本文件，对于中文来说，需要将每个文本用空格隔开。然后输入如下命令，生成语言模型文件。
```shell
docker run -it --rm -v ${PWD}:/workspace kenlm -o 3 --text /workspace/gen.txt --arpa /workspace/temp.arpa
```
其中：
+ `-v` 表示把当前目录挂载到容器中的workspace下
+  `-o` 表示n-gram中的 n 
+ `--text` 表示文本文件位置，注意是在容器中的位置
+ `--arpa` 表示语言模型存放位置

## 文本样例
```
在 当 前 目 录 下 存 放 文 本 文 件
需 要 将 每 个 文 本 用 空 格 隔 开
```

