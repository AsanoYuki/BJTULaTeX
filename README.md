[![GitHub release](https://img.shields.io/github/v/release/AsanoYuki/BJTULaTeX?include_prereleases)](https://github.com/AsanoYuki/BJTULaTeX/releases)  ![Maintained](https://img.shields.io/badge/maintained-yes-green)

# BJTU Graduate Thesis

本仓库为北京交通大学研究生毕业论文建立了一个简单易用的 $\mathrm{\LaTeX{}}$ 模板，专门针对Overleaf环境进行优化，仅支持XeTeX编译器。

于 2025.3 版本正式支持**学术型硕士** (`master-academic`)、**专业型硕士** (`master-professional`)、**学术型博士** (`doctor-academic`)、**专业型博士** (`doctor-professional`)四类论文。通过修改 `main.tex` 第一行代码 `\documentclass[final,AutoFakeBold,12pt,master-academic]{bjtuthesis}` 进行不同学位类型的调用，具体请查看说明文档 `main.pdf` 的第3.1节。

（该模板并非由研究生院正式提供，其格式已尽可能符合要求，理论上无提交问题，但对于提交时可能出现的任何问题，模板作者概不负责。）

任何对模板的使用、编辑、二次发布均需要遵守 [LaTeX项目公共许可证 v1.3c](https://www.latex-project.org/lppl/lppl-1-3c/) 以及 [BY-NC-SA](https://creativecommons.org/licenses/by/4.0/deed.en) 。

任何意见或建议可在此仓库内新建issue。本模板维护可能不及时，请见谅。 

⭐如果该模板对您有帮助，请给我一颗星！谢谢！ [![GitHub stars](https://img.shields.io/github/stars/AsanoYuki/BJTULaTeX?style=social)](https://github.com/AsanoYuki/BJTULaTeX/stargazers)



## 声明

1. 本模板的发布遵守 [LaTeX项目公共许可证 v1.3c](https://www.latex-project.org/lppl/lppl-1-3c/) ，使用前请认真阅读协议内容。
2. 本模板遵从 [BY-NC-SA](https://creativecommons.org/licenses/by/4.0/deed.en) 协议。使用者可以对本创作进行转载、节选、混编、二次创作，但不得运用于商业目的，且使用时须进行署名，采用本创作的内容必须同样采用本协议进行授权。**作为学位论文提交时可免除署名，但可以在致谢中提及。**
3. 北京交通大学研究生院提供的 $\mathrm{\LaTeX{}}$ 模板在 Overleaf 环境下几乎为不可用的状态，其版本基于清华大学Ruini Xue <xueruini@gmail.com> 模板，版本较为陈旧，有较多过时代码，笔者经过若干天勘误仍无法满足正常使用需求，故重新制作了本模板。
4. 本模板以苯人基于「[南开大学程明明老师制作的 CVPR 中文模板](https://www.overleaf.com/read/rzdpjzqwkdwb)」制作的「东华大学本科学位论文模板」为基础，参考「[北京交通大学研究生院提供的学术型硕士 LaTeX 模板](https://gs.bjtu.edu.cn/glwj/xw/35aeeacb625243cd8297e13b332e32dc.htm)」、「[清华大学学位论文 LaTeX 模板 v7.5.2](https://github.com/tuna/thuthesis)」部分代码制作而成。部分章节以及示例文件参考自「[清华大学学位论文 LaTeX 模板使用示例文档v7.5.1](https://www.overleaf.com/latex/templates/thuthesis-tsinghua-university-thesis-latex-template/cfwgcxtvkbsx)」。
5. 本模板可供给交大学生们写毕业论文及 $\mathrm{\LaTeX{}}$ 学习参考使用，仅保证在 Overleaf 平台以 XeTeX 2024 编译器可正常使用，其余平台请自行 Debug。其格式已尽量与研究生院所规定的格式保持一致，但不保证格式审查时一定能通过，如出现格式问题，与本模板制作者概无关系。若有博士研究生、本科生使用请自行按照研究生院标准模板进行微调。
6. 任何个人或组织以本模板为基础进行修改、扩展而生成的新的专用模板，请严格遵守 [LaTeX项目公共许可证 v1.3c](https://www.latex-project.org/lppl/lppl-1-3c/) 与 [BY-NC-SA](https://creativecommons.org/licenses/by/4.0/deed.en) 协议。由于违犯协议而引起的任何纠纷争端均与本模板修改者无关。



## 使用

在 Overleaf 平台选择新建项目，将zip包拖拽上传即可使用。

**开始使用本模板时务必阅读：**

* BJTU 论文撰写规范（《[北京交通大学博士、硕士学位论文撰写规范](http://sse.bjtu.edu.cn/media/attachments/2017/07/20170725101952.pdf)》 或 `main.pdf` 第二章 论文撰写结构与规范）

* 模板使用说明（`main.pdf` 第三章 $\mathrm{\LaTeX{}}$ 模板及论文撰写说明`）

**若无 $\mathrm{\LaTeX{}}$ 使用基础，可以在使用过程中参考：**

* Overleaf 官方提供的简明教程（纯英文）：[Learn LaTeX in 30 minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
* CTEX 开发小组提供的中文使用手册：[一份（不太）简短的LATEX2ε 介绍](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjWmb_k3ZaMAxVmbPUHHZzVMvEQFnoECBkQAQ&url=https%3A%2F%2Ftexdoc.org%2Fserve%2Flshort-zh-cn.pdf%2F0&usg=AOvVaw1lSKSJNU8TSF6WUhAHL19z&opi=89978449)（pdf版）、[一份 (不太) 简短的 LaTeX 介绍](https://www.texpage.com/docs/zh/learning/)（TeXPage提供的网页版、**推荐**）

在开始书写前，建议将 `main.tex` 复制或重命名为其他有意义的名称。

**为规范理工科论文中数学符号的正确表达与基本排版概念，建议论文撰写过程中阅读：**

* `main.pdf` 第3.3节 数学符号规范



## 本地编译环境说明

本模板本意为开发用于 Overleaf 环境编译使用，但不排除有同学有**本地编译需求**或其它在线 $\mathrm{\LaTeX{}}$ 平台编译需求。因此在用户手册中有**《第四章 本地编译环境常见报错的说明》**。若有需要可以参考。主要有三个重要报错：

* **编译器 Compiler 错误导致编译失败**：本模板**仅支持 XeTeX 编译器**编译，不支持 pdfLaTeX 等旧时代编译器，请修改编译器设置 (如通过修改 VSCode 的*.json文件。)
* **字体问题**：本模板采用 Overleaf 平台内置的开源可商用字体。部分字体可能计算机本地未安装，因此无法编译。建议查看计算机已安装字体，并修改 `bjtuthesis.cls`中的字体设定。详见**用户手册**。
* **\*.svg 格式的矢量图导致的编译错误**：本模板虽引入 svg 宏包，但本地编译环境需要第三方插件支持。具体错误分析详见**用户手册**。最快捷的解决方案：建议将 \*.svg 矢量图转换为 \*.pdf 格式进行调用，避免直接调用 \*.svg 矢量图。或直接转换为位图进行调用。均可正常进行编译。



## 下载途径

* 仅下载：
  * [GitHub Releases](https://github.com/AsanoYuki/BJTULaTeX/releases)：最新版的及时发布途径。
* 在线编辑：
  * ~~[Overleaf 模板](https://www.overleaf.com/)~~ （由于 Overleaf 官方不接受非官方模板，无法直接上传至其模板库）





[![LPPL license](https://img.shields.io/badge/license-LPPL-blue)](https://github.com/AsanoYuki/BJTULaTeX/blob/main/LICENSE-LPPL)  [![CC BY-NC-SA license](https://img.shields.io/badge/license-CC%20BY--NC--SA-blue)](https://github.com/AsanoYuki/BJTULaTeX/blob/main/LICENSE-CC-BY-NC-SA)  [![CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
