%%
%% This is file `bjtuthesis.cls',
%%
%% 1. 本模板的发布遵守 LaTeX Project Public License，使用前请认真阅读协议内容。
%%
%% 2. 本模板遵从BY-NC-SA开源协议。使用者可以对本创作进行转载、节选、混编、二次创作，
%%    但不得运用于商业目的，且使用时须进行署名，采用本创作的内容必须同样采用本协议进行授权。
%%    作为学位论文提交时可免除署名，但可以在致谢中提及。
%%
%% 3. 北京交通大学研究生院提供的 LaTeX 模板在 Overleaf 环境下几乎为不可用的状态，
%%    其版本基于清华大学Ruini Xue <xueruini@gmail.com>模板，版本较为陈旧，有较多过时代码，
%%    笔者经过若干天勘误仍无法满足正常使用需求，故重新制作了本模板。
%%
%% 4. 本模板以苯人基于「南开大学程明明老师制作的 CVPR 中文模板」制作的
%%    「东华大学本科学位论文模板」为基础，参考「北京交通大学研究生院提供的学术型硕士 LaTeX 模板」
%%    「清华大学学位论文 LaTeX 模板 v7.5.2」部分代码制作而成。部分章节以及示例文件参考自
%%    「清华大学学位论文 LaTeX 模板使用示例文档v7.5.1」。
%%
%% 5. 本模板可供给交大学生们写毕业论文及LaTeX学习参考使用，
%%    仅保证在 Overleaf 平台以 XeTeX 2024 编译器可正常使用，其余平台请自行 Debug。
%%    其格式已尽量与研究生院所规定的格式保持一致，
%%    但不保证格式审查时一定能通过，如出现格式问题，与本模板制作者概无关系。
%%
%% 6. 任何个人或组织以本模板为基础进行修改、扩展而生成的新的专用模板，
%%    请严格遵守 LaTeX Project Public License 协议。
%%    由于违犯协议而引起的任何纠纷争端均与本模板修改者无关。
%% 
%% Copyright (C) 2025 by Zeto YEUNG <yeungzeto@gmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2008 or later.

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
% 提供文档类
\ProvidesClass{bjtuthesis}[2025/04/23 北京交通大学研究生学位论文模板 ver.2025.3]


%%%%%%%%%%% 学位类型选项判断 %%%%%%%%%%%%%%%%%%%%

\newif\ifmaster
\newif\ifdoctor
\newif\ifacademic
\newif\ifprofessional

\DeclareOption{master-academic}{\mastertrue\doctorfalse\academictrue\professionalfalse}
\DeclareOption{master-professional}{\mastertrue\doctorfalse\academicfalse\professionaltrue}
\DeclareOption{doctor-academic}{\masterfalse\doctortrue\academictrue\professionalfalse}
\DeclareOption{doctor-professional}{\masterfalse\doctortrue\academicfalse\professionaltrue}

\ProcessOptions\relax

% 加载 `book` 文档类
\LoadClass[12pt,a4paper,openany]{book}

%%%%%%%%% 加载所需宏包
\RequirePackage[UTF8]{ctex}  % 中文支持
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}     % 增大色彩库
% \RequirePackage{times}        % Times 字体
\RequirePackage{epsfig}
\RequirePackage{graphicx}    % 图片支持
\RequirePackage{amsmath, amssymb} % 数学环境
\RequirePackage{gensymb}
\RequirePackage[group-separator={\ }]{siunitx} % 数字千位分隔
\RequirePackage{overpic}     % 图片标注
\RequirePackage{svg}         % 支持SVG图像
\RequirePackage{booktabs, multirow}  % 表格
\RequirePackage[backend=biber,style=gb7714-2015]{biblatex}
\RequirePackage[T1]{fontenc} % 字体编码
\RequirePackage{geometry}    % 页边距
\RequirePackage{setspace}    % 行间距
% \RequirePackage{gbt7714}     % 参考文献格式
\RequirePackage{makecell}    % 表格单元格换行
\RequirePackage{fontspec}    % 字体设置
\RequirePackage{fancyhdr}    % 页眉页脚
\RequirePackage{titlesec}    % 标题格式
\RequirePackage{tocloft}     % 目录格式
\RequirePackage{datetime}    % 日期格式
\RequirePackage{caption, subcaption} % 图表标题
\RequirePackage{listings}   % 代码环境
\RequirePackage{float}      % 支持跨页的长表格
\RequirePackage{nomencl}    % 术语表
\makenomenclature           % 术语表附属命令
\RequirePackage{academicons}
\RequirePackage{xeCJK}
\RequirePackage{pifont}     % 带圈符号
\RequirePackage{mathrsfs}   % Script字形

% \RequirePackage{indentfirst}    % 段落首行缩进
\RequirePackage[neverdecrease]{paralist}        % 改进列表环境
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem} % 定义和管理定理环境
\RequirePackage{longtable}      % 支持跨页的长表格
\RequirePackage{array}          % 增强表格功能
\RequirePackage{etoolbox}       % 提供了 \AtBeginEnvironment 命令，可以在特定环境开始时执行代码
\RequirePackage{xpatch}
\RequirePackage{enumerate, enumitem}  % 列表
\RequirePackage{algorithm}      % 算法环境
\RequirePackage{algorithmic}    % 算法环境


\RequirePackage{ifthen,calc}
% \RequirePackage{txfonts}
% \RequirePackage{thutils}
\RequirePackage{bm}    %%%%%  排印数学符号黑斜体时调用此宏包
% \RequirePackage{color}
\RequirePackage{threeparttable}
\RequirePackage{notoccite}     % 防止清单打乱参考文献编号
\RequirePackage{{perpage}}     % 快捷设置计数器

\RequirePackage{overarrows}     % 向量箭头扩展
\NewOverArrowCommand{\overrightharpoon}{%
end=\rightharpoonup}

%%%%%%%%%页面样式与页眉页脚

% 设置页面格式
\geometry{
    a4paper,                % A4 纸
    twoside,                % 启用奇偶页模式
    bindingoffset=1cm,
    left=2.5cm,             % 奇数页左边距
    right=2.5cm,            % 奇数页右边距
    top=3cm,                % 上边距
    headheight=20pt,        % 页眉高度
    headsep=0.9cm,          % 页眉间距 0pt
    footskip=1.1cm,         % 脚注与正文间距 15pt
    marginparwidth=0cm,     % 旁注宽度
    marginparsep=0cm,       % 旁注间距
    % topskip=0pt,            % 正文顶部间距
    textwidth=210mm-6.0cm,  % 正文宽度
    textheight=297mm-3cm-2.5cm  % 正文高度
}
% \geometry{showframe}      % 查看页面框

% 设置论文类型对应页眉标题
\newcommand{\degreeinfo}{%
    \ifmaster
        \ifacademic
            硕士学位论文
        \else
            硕士专业学位论文
        \fi
    \else
        \ifacademic
            博士学位论文
        \else
            博士专业学位论文
        \fi
    \fi
}

\newcommand{\bjtu}{北京交通大学}

% 设置页眉页脚

% 第1部分：\coverpages
% 每个章节从奇数页开始。
% 无页眉页脚。
\newcommand{\coverpages}{%
  \cleardoublepage % 确保从奇数页开始
  \pagestyle{empty} % 无页眉页脚
}
% \let\ps@plain\ps@coverpages

% 第2部分：\ackpages
% 每个章节从奇数页开始。
% 无页眉和横线，页脚居中显示小写罗马数字页码（从 i 开始）。
\fancypagestyle{ackstyle}{%
  \fancyhf{} % 清空页眉页脚
  \fancyfoot[C]{\hspace{-6pt}\wuhao \thepage} % 页脚居中显示页码
  \renewcommand{\headrulewidth}{0pt} % 无页眉横线
}
\newcommand{\ackpages}{%
  \cleardoublepage % 确保从奇数页开始
  \pagenumbering{roman} % 小写罗马数字页码
  \pagestyle{ackstyle} % 应用样式
}

% 第3部分：\absntocpages
% 每个章节从奇数页开始。
% 页眉：奇数页显示章节名（\leftmark），偶数页显示“北京交通大学硕士学位论文”。
% 页脚：居中页码，继承 \ackpages 的罗马数字页码。
\fancypagestyle{absntocstyle}{%
  \fancyhf{} % 清空页眉页脚
  \fancyhead[CO]{\hspace{-6pt}\wuhao \leftmark} % 奇数页页眉居中显示章节名
  \fancyhead[CE]{\hspace{-6pt}\wuhao \bjtu\degreeinfo} % 偶数页页眉居中显示固定文本
  \fancyfoot[C]{\hspace{-6pt}\wuhao\thepage} % 页脚居中显示页码
  \renewcommand{\headrulewidth}{0.4pt} % 页眉下横线
}
\newcommand{\absntocpages}{%
  \cleardoublepage % 确保从奇数页开始
  \pagestyle{absntocstyle} % 应用样式
}

% 第4部分：\mainpages
% 每个章节从奇数页开始。
% 页眉：奇数页显示章节名（\leftmark），偶数页显示“北京交通大学硕士学位论文”。
% 页脚：居中页码，重新开始计数，使用阿拉伯数字。
\fancypagestyle{mainstyle}{%
  \fancyhf{} % 清空页眉页脚
  \fancyhead[CO]{\hspace{-6pt}\wuhao \leftmark} % 奇数页页眉居中显示章节名
  \fancyhead[CE]{\hspace{-6pt}\wuhao \bjtu\degreeinfo} % 偶数页页眉居中显示固定文本
  \fancyfoot[C]{\hspace{-6pt}\wuhao \thepage} % 页脚居中显示页码
  \renewcommand{\headrulewidth}{0.4pt} % 页眉下横线
}
\newcommand{\mainpages}{%
  \cleardoublepage % 确保从奇数页开始
  \pagenumbering{arabic} % 阿拉伯数字页码，重新开始计数
  \pagestyle{mainstyle} % 应用样式
}

% 重定义 \thispagestyle，使其不指定具体的样式
\let\oldthispagestyle\thispagestyle % 保存原始的 \thispagestyle 命令
\renewcommand{\thispagestyle}[1]{} % 重定义 \thispagestyle，使其不指定具体的样式

% 定义标志判断是否为第一节
\newcounter{bjtu@sectionfirst} % 跟踪每章的节计数

% 重定义 \chapter 确保章从奇数页开始
\let\oldchapter\chapter
\renewcommand{\chapter}{%
  \cleardoublepage % 确保从奇数页开始
  \thispagestyle{} % 使用当前设置的样式
  \setcounter{bjtu@sectionfirst}{0}% 重置为 0，表示下一节是第一节
  \oldchapter
  % \thispagestyle{\currentpagestyle}
}

% % 重定义 \section 确保节从新页开始
% \let\oldsection\section
% \renewcommand{\section}{%
%   \ifnum\value{bjtu@sectionfirst}>0 % 不是第一节
%     \clearpage % 新页开始（奇偶均可）
%   \fi
%   \stepcounter{bjtu@sectionfirst}% 增加计数，表示已处理一节
%   \oldsection%
% }

% 修改 \chaptermark，移除章节编号
\renewcommand{\chaptermark}[1]{%
  \markboth{#1}{} % 只写入章节标题，不包含编号
}


% 设置行距
% 定义行距变量
\newlength\bjtu@linespace

\setlist[enumerate]{label=\arabic*), itemsep=-4pt, topsep=0em}
\setlist[itemize]{itemsep=-4pt, topsep=0em}

%%%%%%%%设置字体

% 重新定义 \normalsize，设置正文字体大小和行距
\renewcommand\normalsize{%
  % \@setfontsize\normalsize{12pt}{20pt} % 正文字体大小为 12bp，行距为 20bp
  \bjtu@choosefont{1.29}{12bp} % 字体 12bp，行距 1.29 × 12bp = 15.48bp
  \abovedisplayskip=-7bp \@plus 2bp \@minus 3bp % 数学公式与上文的间距
  \abovedisplayshortskip=\abovedisplayskip % 短公式与上文的间距
  \belowdisplayskip=10bp \@plus 5bp \@minus 2bp % 数学公式与下文的间距
  \belowdisplayshortskip=\belowdisplayskip % 短公式与下文的间距
}


% 定义字间距命令
\renewcommand*{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}} % 调整中文字间距

% 定义字体选择命令
\newcommand{\bjtu@choosefont}[2]{%
   \setlength{\bjtu@linespace}{#2*\real{#1}}% % 计算行距
   \fontsize{#2}{\bjtu@linespace}\selectfont} % 设置字体大小和行距

% 定义字体大小命令生成器
\def\bjtu@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \bjtu@choosefont{##1}{#2}}} % 生成字体大小命令

% 定义具体参数设置
\bjtu@define@fontsize{chuhao}{42bp} % 初号字
\bjtu@define@fontsize{xiaochu}{36bp} % 小初号字
\bjtu@define@fontsize{yihao}{26bp} % 一号字
\bjtu@define@fontsize{xiaoyi}{24bp} % 小一号字
\bjtu@define@fontsize{erhao}{22bp} % 二号字
\bjtu@define@fontsize{xiaoer}{18bp} % 小二号字
\bjtu@define@fontsize{sanhao}{16bp} % 三号字
\bjtu@define@fontsize{xiaosan}{15bp} % 小三号字
\bjtu@define@fontsize{sihao}{14bp} % 四号字
\bjtu@define@fontsize{banxiaosi}{13bp} % 半小四号字
\bjtu@define@fontsize{xiaosi}{12bp} % 小四号字
\bjtu@define@fontsize{dawu}{11bp} % 大五号字
\bjtu@define@fontsize{wuhao}{10.5bp} % 五号字
\bjtu@define@fontsize{xiaowu}{9bp} % 小五号字
\bjtu@define@fontsize{liuhao}{7.5bp} % 六号字
\bjtu@define@fontsize{xiaoliu}{6.5bp} % 小六号字
\bjtu@define@fontsize{qihao}{5.5bp} % 七号字
\bjtu@define@fontsize{bahao}{5bp} % 八号字

% 设置中文字体
% \setCJKmainfont[
%   BoldFont = {Noto Serif CJK TC Bold},
%   ItalicFont = {TW-Kai}
% ]{Noto Serif CJK TC}
% \setCJKsansfont{Noto Sans CJK TC}
% \setCJKmonofont{Noto Sans Mono CJK TC}
% \setCJKfamilyfont{song}{Noto Serif CJK TC} % 宋体
% \setCJKfamilyfont{hei}{Noto Sans CJK TC} % 黑体
% \setCJKfamilyfont{fs}{cwTeXFangSong} % 仿宋
% \setCJKfamilyfont{kai}{TW-Kai} % 楷体

\setCJKmainfont[
  BoldFont = {Noto Serif CJK SC Bold},  % 主字体的增加字重字形
  ItalicFont = {AR PL UKai CN}  % 主字体的意大利字形
]{Noto Serif CJK SC}    % 主字体
\setCJKsansfont{Noto Sans CJK SC}   % 主无衬线字体
\setCJKmonofont{Noto Sans Mono CJK SC}  %主等宽字体
\setCJKfamilyfont{song}{Noto Serif CJK SC} % 宋体
\setCJKfamilyfont{hei}{Noto Sans CJK SC} % 黑体
\setCJKfamilyfont{fs}{cwTeXFangSong} % 仿宋
\setCJKfamilyfont{kai}{AR PL UKai CN} % 楷体


% 设置英文字体
% \setmainfont{Libre Bodoni} % 默认英文字体
% \setmainfont{Libre Caslon Text} % 默认英文字体
% \setmainfont{CMU Serif} % 默认英文字体
\setmainfont{Times New Roman} % 默认英文字体
\setsansfont{Arial} % 无衬线英文字体
% \setmonofont{Courier New} % 等宽英文字体
\setmonofont{Source Code Pro} % 等宽英文字体

% 直接用 ctex 提供的字体命令定义中文字体命令
\newcommand{\song}{\songti}    % 宋体
\newcommand{\fs}{\fangsong}    % 仿宋
\newcommand{\kai}{\kaishu}     % 楷体
\newcommand{\hei}{\heiti}      % 黑体

% 优化标点
\punctstyle{kaiming} % 优化中文标点符号
\defaultfontfeatures{Ligatures=TeX, Mapping=tex-text} % 字体特性

% 设置定理环境正文字体为宋体，标题字体为黑体
\theorembodyfont{\song\rmfamily}
\theoremheaderfont{\hei\rmfamily}


%%%%%%%%%%定义角注（Copyright (C) 2005-2009 by Ruini Xue <xueruini@gmail.com>

% % 将脚注设置为每页重置
\MakePerPage{footnote}

% 定义带圈数字
% \def\bjtu@textcircled#1{%
%   \ifnum \value{#1} <10 \textcircled{\xiaoliu\arabic{#1}}
%   \else\ifnum \value{#1} <100 \textcircled{\qihao\arabic{#1}}\fi
%   \fi}
\newcommand{\numcircled}[1]{%
  \ifcase#1
    \or \ding{172} % ①
    \or \ding{173} % ②
    \or \ding{174} % ③
    \or \ding{175} % ④
    \or \ding{176} % ⑤
    \or \ding{177} % ⑥
    \or \ding{178} % ⑦
    \or \ding{179} % ⑧
    \or \ding{180} % ⑨
    \or \ding{181} % ⑩
  \else \arabic{#1} % 超过 10 使用普通数字
  \fi
}
  
% 重新定义脚注编号格式为带圈数字
\renewcommand{\thefootnote}{\numcircled{\value{footnote}}}
\renewcommand{\thempfootnote}{\numcircled{\value{mpfootnote}}}

% 定义脚注分隔线
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}

% 重新定义脚注字体大小为小五号，行距为 1.5 倍
\let\bjtu@footnotesize\footnotesize
\renewcommand\footnotesize{\bjtu@footnotesize\xiaowu[1.5]}

% 定义脚注标记样式为上标
\def\@makefnmark{\textsuperscript{\hbox{\normalfont\@thefnmark}}}

% 定义脚注文本样式
\long\def\@makefntext#1{
    \bgroup
      \setbox\@tempboxa\hbox{%
        \hb@xt@ 2em{\@thefnmark\hss}}
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      \footnotesize
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      #1
    \par\egroup}






%%%%%%%%%%%%%%% 设置章节标题格式
\newif\ifbjtuappendix
\bjtuappendixfalse % 默认不在附录

\titleformat{\chapter}%设置chapter的样式
{\centering\sanhao\hei}%居中，3号字（15.75pt），黑体
{{\ifbjtuappendix \thechapter \else \thechapter \quad \fi}}%标号后面无点，仅在附录时去除空格
{0pt}%sep label和title之间的水平距离
{}%标题前没有内容
\titlespacing{\chapter}{0pt}{-6pt}{18pt}[0pt]

\titleformat{\section}%设置section的样式
{\raggedright\xiaosan\hei}%居中，小三号字，黑体
{\thesection \quad}%标号后面无点
{0pt}%sep label和title之间的水平距离
{}%标题前没有内容
\titlespacing{\section}{0pt}{16pt}{16pt}[0pt]

\titleformat{\subsection}%设置subsection的样式
{\raggedright\sihao\hei}%左对齐，4号字（13.75pt），黑体
{\thesubsection \quad}%标号后面无点
{0pt}%sep label和title之间的水平距离
{}%标题前没有内容
\titlespacing{\subsection}{0pt}{16pt}{16pt}[0pt]

% 设置章节编号深度为 3          ∴subsubsec无前缀编号
\setcounter{secnumdepth}{3}

% 设置 subsubsection 的编号格式为 (1)、(2)
\renewcommand{\thesubsubsection}{(\arabic{subsubsection})}

\titleformat{\subsubsection}%设置subsubsection的样式
{\raggedright\xiaosi\bfseries\linespread{1.5}}%左对齐，小4号字（12pt）
{\qquad \thesubsubsection \;}%标号后面无点
{0pt}%sep label和title之间的水平距离
{}%标题前没有内容
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}[0pt]


%%%%%%%%%%%%%%%%目录与图表清单设置%%%%%%%%%%%%%%

% 修改目录格式
\setcounter{tocdepth}{2}    % 目录深度
\renewcommand{\cftchapfont}{\xiaosi[1.5]} % 章标题字体
\renewcommand{\cftsecfont}{\xiaosi[1.5]} % 节标题字体
\renewcommand{\cftsubsecfont}{\xiaosi[1.5]} % 小节标题字体
\renewcommand{\cftdot}{.} % 修改连接符为“-”
\renewcommand{\cftdotsep}{1} % 连接符间距
\renewcommand{\cfttoctitlefont}{\hfill\sanhao\heiti} % 目录标题
\renewcommand{\cftaftertoctitle}{\hfill} 
\setlength{\cftaftertoctitleskip}{20pt} % 目录标题间距
\setlength{\cftbeforechapskip}{0pt} % 章节间距
\setlength{\cftbeforesecskip}{0pt} % 章节间距
\setlength{\cftbeforetoctitleskip}{-6pt}   % 目录距离页面顶部距离
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}} % 添加章节目录连接符
\renewcommand{\cftsecdotsep}{\cftdotsep} % 修改章节目录连接符间距
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}} % 添加章节目录连接符
\renewcommand{\cftchapdotsep}{\cftdotsep} % 修改章节目录连接符间距
\setlength{\cftchapindent}{0pt} % 章标题无缩进（默认值，可选）
\setlength{\cftsecindent}{1em} % 节标题缩进 1em（相对于章标题）
\setlength{\cftsubsecindent}{2em} % 小节标题缩进 2em（相对于章标题）
\renewcommand{\cftchappagefont}{\normalfont} % 章节页码不加粗


% 设置图清单格式
\renewcommand{\cftfigfont}{\xiaosi[1.5]} % 图标题字体
\renewcommand{\cftfigpagefont}{\xiaosi\normalfont} % 图页码字体，不加粗
\setlength{\cftbeforefigskip}{2pt} % 图条目间距
\renewcommand{\cftfigpresnum}{} % 移除前缀“图”
\renewcommand{\cftfigaftersnum}{} % 移除编号后的分隔符
\setlength{\cftfignumwidth}{2.5em} % 增加编号宽度以适应“1-1”
\setlength{\cftfigindent}{0pt} % 第一行无缩进
\renewcommand{\cftfigleader}{\cftdotfill{\cftfigdotsep}} % 添加点号连接符
\renewcommand{\cftfigdotsep}{1} % 点号间距

% 设置表清单格式
\renewcommand{\cfttabfont}{\xiaosi[1.5]} % 表标题字体
\renewcommand{\cfttabpagefont}{\xiaosi\normalfont} % 表页码字体，不加粗
\setlength{\cftbeforetabskip}{2pt} % 表条目间距
\renewcommand{\cfttabpresnum}{} % 移除前缀“表”
\renewcommand{\cfttabaftersnum}{} % 移除编号后的分隔符
\setlength{\cfttabnumwidth}{2.5em} % 增加编号宽度以适应“1-1”
\setlength{\cfttabindent}{0pt} % 第一行无缩进
\renewcommand{\cfttableader}{\cftdotfill{\cfttabdotsep}} % 添加点号连接符
\renewcommand{\cfttabdotsep}{1} % 点号间距

% 图和表清单标题样式
\renewcommand{\listfigurename}{图清单}
\renewcommand{\listtablename}{附表清单}
\renewcommand{\cftloftitlefont}{\hfill\sanhao\heiti} % 图清单标题
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftlottitlefont}{\hfill\sanhao\heiti} % 表清单标题
\renewcommand{\cftafterlottitle}{\hfill}
\setlength{\cftafterloftitleskip}{20pt} % 图清单标题间距
\setlength{\cftafterlottitleskip}{20pt} % 表清单标题间距
\setlength{\cftbeforeloftitleskip}{-6pt} % 图清单距离页面顶部距离
\setlength{\cftbeforelottitleskip}{-6pt} % 表清单距离页面顶部距离



%%%%%%%%%%%%%图表相关设置%%%%%%%%%%%%%%%%

% 修改图表标题格式
\renewcommand {\thetable} {\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@table}
\renewcommand {\thefigure} {\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@figure}
\renewcommand {\theequation} {\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\renewcommand {\thesubfigure}{\alph{subfigure})}
\renewcommand {\thealgorithm} {\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@algorithm}

% 设置表格和图表标题位置格式
\captionsetup[table]{%
    position=top,
    belowskip={6bp},
    aboveskip=0bp,
    labelfont={small}, 
    textfont={small}, 
    labelformat=simple, 
    labelsep=quad
} % 表格标题

\captionsetup[figure]{%
    position=bottom,
    belowskip={12bp-\intextsep},
    aboveskip=6bp,
    labelfont={small}, 
    textfont={small}, 
    labelformat=simple, 
    labelsep=quad
} % 图标题

\captionsetup[subfigure]{%
    position=bottom,
    belowskip={12bp-\intextsep},
    aboveskip=6bp,
    labelfont={small}, 
    textfont={small}, 
    labelformat=simple, 
    labelsep=space
}% 子图标题


% 定义图片双语标题命令
\newcommand{\bifigcaption}[2]{%
  \caption[{#1\protect\\~~~~~~#2}]% 清单中只显示标题
    {#1} % 中文标题
    \vspace{-5pt} % 调整中英文标题间距
  \caption*{Fig.~\thefigure\quad#2}% 英文标题
}


% 定义表格双语标题命令
\newcommand{\bitabcaption}[2]{%
  \caption[{#1\protect\\~~~~~~#2}]% 清单中只显示标题
    {#1} % 中文标题
  \vspace{-5pt} % 调整中英文标题间距
  \caption*{Table~\thetable\quad#2} % 英文标题
}

% 设置表格的默认字体为 \wuhao
\AtBeginEnvironment{tabular}{\small}
\AtBeginEnvironment{longtable}{\small}


% 定义水平线宽度
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}

% 调整段落间距、行距、图表标题间距
\setlength{\parskip}{0pt}
\setlength{\lineskip}{0pt}
\setlength{\abovecaptionskip}{0cm}
\setlength{\belowcaptionskip}{0cm}
\setlength{\textfloatsep}{10pt plus 3pt minus 1pt} % 让图片与正文更贴近
\setlength{\floatsep}{5pt plus 1pt minus 1pt} % 让两个浮动体之间的间距更小

% 设定图片路径
\graphicspath{{figures/}}


% 允许公式跨页
\allowdisplaybreaks[4]



%%%%%%%%%%%%%%%设置特殊内容环境%%%%%%%%%%%%%%%%%%%%

% 设置代码环境格式
\lstset{
    numbers=left, 
    numberstyle=\ttfamily \it, 
    stepnumber=1, 
    numbersep=5pt,
    language={[LaTeX]TeX},
    basicstyle=\ttfamily\wuhao,
    keywordstyle=\color{DarkCyan}\bfseries,
    breaklines=true, %对过长的代码自动换行
    % extendedchars=false,  %解决代码跨页时，章节标题，页眉等汉字不显示的问题
    % escapebegin=\begin{CJK*},escapeend=\end{CJK*},      %中文逃逸
    texcl=true}

\lstdefinelanguage{BibTeX}{
    keywords={@article, @book, @incollection, @misc, @phdthesis, @mastersthesis},
    morekeywords={author, title, year, date, journal,journaltitle, volume, number, pages, publisher, address, doi, url, urldate, note, editor, booktitle, series, school},
    sensitive=false, % 关键字大小写不敏感
    morecomment=[l][\itshape\color{Periwinkle}]{\%}, % 处理 BibTeX 注释
    morestring=[b]", % 处理双引号字符串
    morestring=[b]{}, % 处理大括号字符串
}

% 设置便捷代码框
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}

% 证明环境
\newenvironment{proof}{{\heiti 证明:}}{\hfill $\square$\par}

% 算法环境
\renewcommand{\algorithmicrequire}{\textbf{输入：}\unskip}
\renewcommand{\algorithmicensure}{\textbf{输出：}\unskip}
\floatname{algorithm}{算法}


%%%%%%%%术语表定义%%%%%%%%%%%

% 类别定义
\renewcommand\nomgroup[1]{%
  \item[\hei
  \ifstrequal{#1}{A}{物理常数}{%
  \ifstrequal{#1}{B}{概念与缩写}{%
  \ifstrequal{#1}{C}{数学符号}{}}}%
  ]\vspace{1em} % 在类别标题之后增加 1em 间距
}


\renewcommand{\nomname}{物理量名称及符号表}   % 标题
\setlength{\nomitemsep}{-5pt} % 取消术语间距
\renewcommand{\nomlabelwidth}{2.5cm}  % 术语部分宽度
\renewcommand{\nomentryend}{\hspace{1cm}}  % 术语与描述的额外间距


%% 增加具体数值
%----------------------------------------------
\newcommand{\nomunit}[1]{%
\renewcommand{\nomentryend}{\hspace*{\fill}#1}}





%%%%%%%%%%%%%%%%%参考文献与附录格式%%%%%%%%%%%%%%%5
% \RequirePackage{bibspacing}
% \setlength{\bibspacing}{\baselineskip}
% \renewcommand{\refname}{参考文献}
% \patchcmd{\thebibliography}{\refname}{}{}{}

% 附录格式定义
\newcommand{\bjtu@appendix}{%
    \appendix
    \renewcommand{\chaptername}{附录} % 确保章节名前缀为 "附录"
    \renewcommand{\thechapter}{附录\Alph{chapter}} % 让章节编号变成 A、B、C    
    \newcommand{\chapterr}{\Alph{chapter}}
    \renewcommand{\thesection}{\chapterr.\arabic{section}} % 让节编号变成 A.1、B.2
    \renewcommand{\thefigure}{\chapterr-\arabic{figure}} % 让图编号变成 A-1、B-2
    \renewcommand{\thetable}{\chapterr-\arabic{table}} % 让表编号变成 A-1、B-2
    \renewcommand{\theequation}{\chapterr-\arabic{equation}} % 让公式编号变成 A-1、B-2
    \renewcommand{\chaptermark}[1]{\markboth{\thechapter}{} % 页眉只写入章节标题，不包含编号
}
}
\DeclareRobustCommand{\bjtuappendix}{\bjtu@appendix}


% 过滤掉 article、book、inproceedings、thesis 类型中的 url 和 urldate 字段

\DeclareSourcemap{
  \maps[datatype=bibtex]{
    \map{
      \pertype{article}
      \step[fieldset=url, null]
      \step[fieldset=urldate, null]
      \step[fieldset=eprint, null]
      \step[fieldset=eprinttype, null]
    }
    \map{
      \pertype{book}
      \step[fieldset=url, null]
      \step[fieldset=urldate, null]
      \step[fieldset=eprint, null]
      \step[fieldset=eprinttype, null]
    }
    \map{
      \pertype{inproceedings}
      \step[fieldset=url, null]
      \step[fieldset=urldate, null]
      \step[fieldset=eprint, null]
      \step[fieldset=eprinttype, null]
    }
    \map{
      \pertype{thesis}
      \step[fieldset=url, null]
      \step[fieldset=urldate, null]
      \step[fieldset=eprint, null]
      \step[fieldset=eprinttype, null]
    }
  }
}

% 设置参考文献区域的字号和行距
\renewcommand*{\bibfont}{%
  \fontsize{10.5pt}{13pt}\selectfont
}

\setlength{\bibitemsep}{0pt}  % 文献条目之间的段距

%%%%%%%%%%快捷引用%%%%%%%%%%%%
\gdef \ass{假设}
\gdef \theo{定理}
\gdef \etheo{Theorem~}
\gdef \entab{Table~}
\gdef \lem{引理}
\gdef \equ{式}
\gdef \figu{图}
\gdef \tab{表}
\gdef \sect{章}
\gdef \subsec{节}
\gdef \app{附录}

\newcommand{\figref}[1]{图 \ref{#1} }
\newcommand{\tabref}[1]{表 \ref{#1} }
\newcommand{\equref}[1]{式(\ref{#1}) }
\newcommand{\algref}[1]{算法 \ref{#1} }
\newcommand{\chptref}[1]{第 \ref{#1} 章}
\newcommand{\secref}[1]{第 \ref{#1} 节}
\newcommand{\appref}[1]{\ref{#1}}

% % 调整 \paragraph 的格式和间距
% \titleformat{\paragraph}
%   {\normalfont\normalsize} % 字体与正文一致
%   {\qquad} % 标题前缀（保持您的 \qquad 缩进）
%   {0pt} % 标题前缀与标题之间的水平间距
%   {} % 标题后无额外内容
% \titlespacing{\paragraph}
%   {0pt} % 左缩进
%   {0pt} % 标题前间距
%   {0pt} % 标题后间距（与正文一致）
%   [0pt] % 右缩进

% 重新定义 \mypara
% \newcommand{\mypara}[1]{\paragraph{\bfseries \qquad #1 \; \quad}}
\newcommand{\mypara}[1]{\vspace{-1.1em}\paragraph{\qquad #1 \; }}



%%%%%%%%%%%%%%%% 手动定义 \XeTeX 和 \overleaf 标志
\def\XeTeX{%
  X% 第一个 X
  \kern-.125em% 调整与翻转 E 的间距
  \lower-1ex\hbox{\rotatebox{180}{E}}% 翻转第一个 E 并下沉
  \kern-.075em% 调整与 T 的间距
  T% 大写 T
  \kern-.075em% 调整与第二个 E 的间距
  \lower.5ex\hbox{E}% 第二个 E 下沉
  \kern-.125em% 调整与最后一个 X 的间距
  X% 最后一个 X
}

\newcommand{\overleaf}{%
  {\aiOverleaf\fontspec[Scale=MatchLowercase,LetterSpace=-0.5]{TeX Gyre Adventor}\kern-0.6ex{verleaf}\kern0.1ex}%
}

% 结束文件
\endinput
