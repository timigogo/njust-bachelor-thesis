# NJUST 本科毕业设计（论文）LaTeX 模板

这是一个面向南京理工大学本科毕业设计（论文）报告的 LaTeX 模板。

本模板基于原项目 [pasteller/njusttt](https://github.com/pasteller/njusttt) 修改而来。原项目主要面向南京理工大学硕博学位论文；本仓库在其基础上，参考南京理工大学官方本科毕业设计 Word 模板进行了本科毕设格式适配。

官方 Word 模板下载页面：[南京理工大学教务处 - 毕业设计（论文）报告撰写格式](https://bysj.njust.edu.cn/NewsDetail.aspx?ConfigurationID=n5IuBXqj3nE%3d&HomePageManagementID=z0wIF8W1a4I%3d)

目前模板与官方本科毕设 Word 模板（2026年版本）的格式相似度已经达到约 80%，可以作为本科毕业设计（论文）排版使用。

### 效果预览

![NJUST 本科毕设封面预览](https://github.com/timigogo/njust-bachelor-thesis/raw/main/image/README/%E5%B0%81%E9%9D%A2.png)

**[📥 点击直接下载完整参考 PDF](https://github.com/timigogo/njust-bachelor-thesis/raw/main/%E5%8F%82%E8%80%83PDF/main.pdf)**

> 说明：本模板不是南京理工大学官方 LaTeX 模板，仅为个人基于官方 Word 模板整理和调校的版本。提交前请自行对照学院或学校当年的具体格式要求检查。

## 已测试编译环境

1. Windows + MiKTeX + XeLaTeX
2. Windows + TeX Live + XeLaTeX
3. Overleaf + XeLaTeX（原项目支持，当前版本建议自行复核字体与编译链）

## 快速开始

1. **环境准备**：确保本地已安装 TeX Live 或 MiKTeX。
2. **编译命令**：在根目录下执行以下任一方式：
   - 使用 `latexmk`（推荐）：`latexmk -xelatex main.tex`
   - 手动顺序：`xelatex` -> `biber` -> `xelatex` -> `xelatex`
3. **主文件**：项目的入口文件为 `main.tex`。

## 项目结构

- `main.tex`: 主文件（入口）
- `tex/`: 论文各章节 `.tex` 源码
- `ref/`: 参考文献 `.bib` 文件
- `fig/`: 存放插图
- `sty/`: 模板样式与配置文件 (.cls, .cfg, .sty)
- `sty/font/`: 预置的中文字体文件

## 使用提示

1. 编译器请选择 `XeLaTeX`。
2. 参考文献建议使用 `biber`。
3. 如果字体或参考文献格式在不同系统上出现差异，请优先检查 CTeX 字体集、`biblatex`/`biber` 版本和编译链设置。
4. 本模板当前主要目标是尽量贴近本科毕业设计（论文）报告的 Word 模板格式，而不是完全复刻硕博论文格式。

## 格式构建参与

本科毕设格式适配与调校过程中使用了 AI 辅助：

1. ChatGPT 5.5
2. Gemini 3.1 Pro

## 致谢

感谢原项目作者和相关前序模板的工作。本模板修改自：

1. [pasteller/njusttt](https://github.com/pasteller/njusttt)
2. [jiec827/njustThesis](https://github.com/jiec827/njustThesis)

希望这个模板能对毕业季正在写本科毕设的同学有用。

本人也是将近毕业找不到 LaTeX 格式的学士毕业论文，才用 AI 整理出这个版本，来得晚了一点，但希望还能帮到后来的人。
