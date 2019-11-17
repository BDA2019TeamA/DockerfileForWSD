# Dockerfile For Workshop on System Design (Big Data Analysis)

## 使用方法

### コンテナの起動

```bash
./download_files.sh #CFR++,cabocha,juman,C++ boost,juman++,KNPをDL
docker build . -t wsd
./run_container.sh # ./workspace をマウントして起動
```

### jupyterの起動

コンテナ内で

```bash
jupyter notebook --allow-root # localhost:8888 でアクセス可能
```

### Commands

```
mecab
cabocha
juman
jumanpp
echo "テスト" | juman | knp
```

### Pythonバインディング

```python
from natto import MeCab
import CaboCha
import pyknp
from crepedb import CrepeDB
```

how to use -> [NLPLibrary](https://github.com/BDA2019TeamA/NLPLibrary) [CrepeDB](https://github.com/BDA2019TeamA/CrepeDB)

## 環境

- [Anaconda3-2019.07](https://www.anaconda.com)
- [mecab](https://taku910.github.io/mecab/)
  - mecab-ipadic-utf8 (apt)
  - mecab-naist-jdic (apt)
  - [mecab-ipadic-neologd](https://github.com/neologd/mecab-ipadic-neologd) (`/usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd`)
- [CRF++ v.0.58](https://taku910.github.io/crfpp/)
- [cabocha v.0.69](https://taku910.github.io/cabocha/)
- [boost v.1_71_0](https://www.boost.org/)
- [JUMAN v.7.01](http://nlp.ist.i.kyoto-u.ac.jp/index.php?JUMAN)
- [JUMAN++ v.1.01](http://nlp.ist.i.kyoto-u.ac.jp/index.php?JUMAN++)
- [KNP v.4.19](http://nlp.ist.i.kyoto-u.ac.jp/index.php?KNP)

- python3
    - [natto-py](https://pypi.org/project/natto-py/) (Python binding with MeCab)
    - cabocha
    - [pyknp](http://nlp.ist.i.kyoto-u.ac.jp/index.php?PyKNP) (Python binding with JUMAN, KNP)