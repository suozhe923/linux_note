### pip + venv
    pip：Python 的标准包管理工具，用于安装、升级和删除 Python 包。
    venv：Python 自带的虚拟环境工具，用于创建隔离的环境。
使用示例：
- 创建虚拟环境
python -m venv myenv
- 激活虚拟环境 (Linux/macOS)
source myenv/bin/activate
- 激活虚拟环境 (Windows)
myenv\Scripts\activate
- 安装包
pip install requests
- 退出虚拟环境
deactivate

### pipenv
    将 pip 和 venv 结合在一起。
    使用 Pipfile 和 Pipfile.lock 管理依赖，替代 requirements.txt。
安装：
pip install pipenv
- 创建虚拟环境并安装包
pipenv install requests
- 激活虚拟环境
pipenv shell
- 退出虚拟环境
exit

### Poetry
    管理依赖和项目打包，替代 setuptools 和 pip。
    使用 pyproject.toml 文件来声明项目依赖。
安装：
curl -sSL https://install.python-poetry.org | python3 -
- 初始化项目
poetry init
- 安装依赖
poetry add requests
- 运行项目
poetry run python main.py
- 激活虚拟环境
poetry shell

###  Conda (MiniConda)
    提供与 Anaconda 相同的包和环境管理功能。
    更小的安装体积，只安装核心工具，不包含大量预装库。
安装：
从官方网站下载并安装 MiniConda。

### pyenv
    管理和切换不同的 Python 版本。
    适合需要在同一系统上测试不同 Python 版本的开发者。
安装：
curl https://pyenv.run | bash
使用示例：
- 安装指定版本的 Python
pyenv install 3.10.4
- 切换 Python 版本
pyenv global 3.10.4
- 显示当前 Python 版本
pyenv version
选择建议
    一般项目开发：pip + venv 或 pipenv。
    复杂依赖管理和打包：Poetry。
    科学计算和数据科学：Conda 或 MiniConda。
    多 Python 版本管理：pyenv。
