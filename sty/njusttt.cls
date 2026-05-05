\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sty/njusttt}[2024/01/08 v0.1 NJUST thesis template class]



%%  Declare Options
\newif\ifNJUST@typeinfo \NJUST@typeinfotrue       % declare two versions
\DeclareOption{print}{\NJUST@typeinfofalse}       % print
\DeclareOption{eprint}{\NJUST@typeinfotrue}       % draft
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}      % handle non-implemented options
\ProcessOptions\relax                             % terminates all options processing




%% loadclass infomation
\LoadClass[a4paper,zihao=-4,UTF8,openany]{ctexbook}
\setmainfont{Times New Roman}
\ctexset{punct=quanjiao}
\sloppy % 闂傚倷绀侀幉锟犲垂閻㈠灚宕查柟鎵閸庡秵銇勯弽銊с€掗柍缁樻閺屾洟宕煎┑鍥┿偐婵炲鍘ч崐鍧楀箖濡ゅ懏顥堟繛鎴炴皑妤旂紓鍌氬€哥粔鎾偋閹炬剚鍤曟い鏇楀亾鐎规洘绮嶉幏鍛村捶椤撶喐顔忛梻浣哄劦閸撴繄鏁幒妤€绠犻幖绮瑰灳閻斿摜绡€闁告洦鍓欓蹇涙⒑閹稿孩纾甸柛瀣崌閺?

%% 闂備浇宕甸崑鐐电矙閹达附鍎楀ù锝堟閻滅粯绻涢幋鐐寸殤濞戞挸绉归弻銊モ槈濡警浠鹃梺绋匡功閸嬨倝寮婚妸銉㈡婵炲棙甯掗ˉ婵嬫⒑娴兼瑧鎮奸柛瀣尵缁瑦绻濋崘銊х獮婵犵數濮撮崯浼村Χ婵傚憡鐓熼幖娣€ゅ鎰叏濡濮傞挊鐔封攽閻樺弶鎼愮痪鎯х秺閺屻倛銇愰幒鎴滃枈闂佽　鍋撳ù鐘差儐閸?(婵犵數鍋犻幓顏嗙礊閳ь剚绻涙径瀣鐎?bp 婵犵數鍋涢顓熸叏娴兼潙纾块弶鍫氭櫃閻掑﹥銇勯弴妤€浜鹃梺?Word 闂?1/72 闂傚倷娴囨竟鍫ヮ敋瑜嶉悾鐑筋敆閸曞灚鏅銈嗘尵婵挳藟?
\newcommand{\NJUST@bodyspacing}{\linespread{1.0}\fontsize{12bp}{21bp}\selectfont}
\AtBeginDocument{\NJUST@bodyspacing} % 闂傚倷鑳堕…鍫㈡崲閸儱绀夌€光偓閸曨剙鍓冲銈嗗笂缁垛€炽€掗懜鍏哥箚妞ゆ牗渚楅崕銉╂煕濮橆剚鍠樻鐐寸墱閳ь剚绋掕摫闁抽攱甯￠弻?20 缂傚倷鑳堕崑鎾诲磿閹惰棄绠犻柟鐐湽閳ь兛绶氶獮瀣偐閸愯尙锛?



%% package infomation
\RequirePackage{fancyhdr}      % page header/footer package
\RequirePackage{mathtools,amsthm,amsfonts,amssymb,bm}      % math packages
\RequirePackage{graphicx,psfrag,flafter,subfigure}      % graphics packages
\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage[
    a4paper,
    top=30mm,
    bottom=24mm,
    left=25mm,
    right=25mm,
    headheight=15pt,
    headsep=10mm, % 30mm - 20mm (header dist) = 10mm
    footskip=4mm  % 24mm - 20mm (footer dist) = 4mm
]{geometry}




%% load class configuretion
\AtEndOfPackage{\makeatletter \InputIfFileExists{sty/njusttt.cfg}{}{} \makeatother}








%% set page number style by fancyhdr:
%% The syntax is: \fancyhead[selectors]{output you want}
%% E Even page
%% O Odd page
%% L Left field
%% C Center field
%% R Right field
%% H Header
%% F Footer
%% so [CE,RO] will refer to the center of the even pages and to the right side of the odd pages.
\newcommand\pageDegree[1]{\def\NJUST@value@pageDegree{#1}}     % configure fancy style
\renewcommand\frontmatter{\pagenumbering{Roman}}      % change page number to Roman only for frontmatter 
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[LO]{\songti\zihao{-5}\NJUST@label@thesis}
    \fancyhead[RO]{\songti\zihao{-5}\NJUST@value@titlemark}
    \fancyhead[LE]{\songti\zihao{-5}\leftmark}
    \fancyhead[RE]{\songti\zihao{-5}\NJUST@label@thesis}
    \fancyfoot[RO]{\songti\zihao{-5}\thepage}
    \fancyfoot[LE]{\songti\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0.4pt} % 缂傚倷鑳堕搹搴ㄥ矗鎼淬劌绐楅柡鍥╁У瀹?plain 闂傚倷绀侀幖顐ょ矓閹绢喖搴婇柤纰卞墯椤洟鏌嶉埡浣告殶闁崇粯娲熼弻锝夊棘閹稿骸鏆堢紓浣哄У鐢帡鈥旈崘顔嘉ч柛銉ｅ妽濮ｅ嫬鈹戦悩顐壕婵炶揪缍€閸婁粙鎮㈢喊杈ㄦ櫆闂佺硶鍓濋〃鍡涙偪?
}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LO]{\songti\zihao{-5}\NJUST@label@thesis}
\fancyhead[RO]{\songti\zihao{-5}\NJUST@value@titlemark}
\fancyhead[LE]{\songti\zihao{-5}\leftmark}
\fancyhead[RE]{\songti\zihao{-5}\NJUST@label@thesis}
\fancyfoot[RO]{\songti\zihao{-5}\thepage} % 婵犵數濞€濞佳囧磹缁嬫５娲晝閸屾碍杈堥梺缁樻⒐閹埖绂嶅鍫熺厽闁靛繆鍓濋崑鐘绘煃瑜滈崜娆撍囬悽绋跨畾鐎广儱妫欐刊鎾煣韫囨凹娼愰柣搴幗缁绘稓鈧稒顭囬惌濠偽旈悩宕囨憙闁靛洦鍔欏畷銊︾節閸曘劍鐏冮梺璇插嚱缂嶅棝宕ｆ惔鈽嗙劷?
\fancyfoot[LE]{\songti\zihao{-5}\thepage} % 闂傚倷鑳堕…鍫ヮ敄閸儱鏄ラ柡宥庡幖濮规煡鏌ｉ弮鈧幃鑸电濠婂牊鐓熼柕蹇婂墲閸嬬娀鏌嶈閸撴瑩藝閻㈢绠氱€广儱妫欐刊鎾煣韫囨凹娼愰柣搴幗缁绘稓鈧稒顭囬惌濠偽旈悩鍙夊暈缂佸锕ㄧ粻娑㈠籍閸屾鐏冮梺璇插嚱缂嶅棝宕ｆ惔鈽嗙劷?
\renewcommand{\chaptermark}[1]{%
    \if@mainmatter
        \markboth{\thechapter\hspace{.3em}#1}{}%
    \else
        \markboth{#1}{}%
    \fi
}
\renewcommand{\headrulewidth}{0.4pt}
\let\cleardoublepage\clearpage % 闂傚倷绀侀幖顐ょ矓閸洍鈧箓宕奸姀銏㈠婵°倧绲介崯顖炲疾椤掍焦鍙忔慨妤€妫楁晶鐗堢箾閸喐銇濋柡宀€鍠撻崰濠偽熸潪鏉款棜闂傚倷绀侀幖顐︽偋閸℃蛋鍥敍濮樼厧鏅犻梻渚囧墮缁夊绮堥崱娑欑厵妞ゆ牗绋戦ˉ瀣煕鎼淬垻鍙€鐎殿喖鐖奸幃婊堝幢濡も偓椤晛顪冮妶鍐ㄥ闁活厼鍊搁锝夘敃閿濆拋鍤ゅ┑鐑囩秵閸忔﹢宕戦幘鏉戠窞闁归偊鍘奸崜顓㈡⒑閸涘﹥澶勯柛鎾寸懇閹線鎮烽幊濠傜秺閹晠顢欑亸鏍т壕闁哄稁鍘奸弸渚€鏌涜箛姘汗闁崇粯妫冮弻褑绠涢幘纾嬬闂佸搫妫楀Λ婵嬪蓟濞戞鏃€鎷呴崷顓фК闂備焦鎮堕崝宀€鈧稈鏅犳俊?






%% make cover
\newcommand\makecover{
    \cleardoublepage
    \thispagestyle{empty}
    \enlargethispage{6cm} % 婵犵數鍋為崹鍫曞箰閹间焦鍋ら柕濞垮労濞撳鏌涘畝鈧崑娑氱磼閳哄懏鐓欐い鏍ф濡炴帒霉閻戣姤鍋℃繝濠傛噹椤ｅジ鏌熺粙鎸庡暈闁哄懎鐖奸幃鈺呮倷閹存帞鐩庨梻浣圭湽閸ㄥ綊鎮樺鑸靛仼闂侇剙绉甸悡鏇熺箾閸℃◤顏堟倶閿濆鐓涘ù锝夋涧閳ь剚绻傞锝夘敆閸曨偆鍊為梺闈涱煭闂勫嫮鈧俺娅曟穱濠囧Χ閸涱厸鍋撹ぐ鎺撴櫔闂佽姘﹂～澶嬬箾婵犲洤鏋佺€广儱鎳愰弳鍡涙煕閺囥劌鍔柍鍝勫€归崣蹇旂節闂堟稑顏╅柣蹇涗憾閺屾洟宕卞Δ鈧弳锝団偓娈垮枙缁瑩骞婂┑瀣劷闁挎柨鈧喐娅戦梻鍌欐祰椤骞冮崼鏇炵９闁哄洢鍨归弰銉╂倶閻愭彃鈷旈柍缁樻閹鏁愰崒娑欑彇濡炪倕绻愬畷顒勨€旈崘顔嘉у璺侯儐闁款參姊洪懝鏉垮惞闁哥姵鎹囬崺鈧い鎴ｆ硶缁佸嘲顭块悷鎵ⅵ鐎规洑绲婚ˇ鍦偓瑙勬礃缁矂顢樻總绋跨妞ゆ挆鍌滅婵犵绱曢崑鎴﹀磹濡ゅ懎鏋佺紒瀣氨閺嬫棃鏌熸潏鍓х暠缂佲偓閸愵喗鐓曟繛鎴濆船瀵箖鏌涢悢閿嬪枠闁?flushbottom 闂傚倷鑳堕幊鎾诲床閺屻儖鍥敋閳ь剙鐣?
    \begin{center}
        \linespread{1.0}\selectfont
        \vspace*{1.4cm} % 闂傚倷绀侀幉锛勫枈瀹ュ鍨傜€规洖娲ㄧ粻?婵犵數鍋為崹鍫曞箰閹间緡鏁勯柛娑樼摠閻撱垽鏌嶉崫鍕殶闁活厽鎸搁湁闁稿繗鍋愰幊鍛磼閳ь剚寰勬繛?Logo 闂備浇宕垫慨鐑藉磿閵堝洦宕查柛鏇ㄥ灙閳ь剚鐗犲畷鍫曞煛閸愨晪绱＄紓鍌欑椤戝牆鈻旈弴銏″€峰┑鐘插亞濞撳鏌曢崼婵囧櫧闁糕晪缍侀弻娑欐償閳藉棗娈堕梺姹囧労娴滎亪寮崒鐐村殑妞ゆ牗绮犲Σ?5cm
        
        %% Logo 婵?闂備浇宕垫慨鎶芥嚄閸洖纾块柕鍫濐槸閸戠娀鏌涢幇闈涙灈闁告劏鍋撻梻浣规偠閸庣儤绂嶉悙鍙?
        \includegraphics[width=12.52cm, height=2.96cm]{fig/logo/njust_logo.png}
        \par\vspace{0.6cm}
        {\kaibf\fontsize{32pt}{\baselineskip}\selectfont \NJUST@label@thesis}
        
        %% 闂傚倷绀侀幖顐ょ矓閺夋嚚娲敇椤兘鍋?
        \par\vspace{1.75cm}
        {\heibf\zihao{-1} \underline{\makebox[\textwidth][c]{\NJUST@value@titleUpp}}}
        \ifx\NJUST@value@titleLow\@empty
        \else
            \\[0.3cm]
            {\heibf\zihao{-1} \underline{\makebox[\textwidth][c]{\NJUST@value@titleLow}}}
        \fi
        
        %% 婵犵數濮甸鏍窗濡ゅ懎绠伴柟闂寸缁?
        \par\vspace{1.4cm}
        {\kaibf\zihao{-2} \NJUSTunderline[5.46cm]{~\NJUST@value@author~}}
        
        %% 闂備浇顕х€涒晠宕橀懡銈囦笉闁硅揪绲绘禍?
        \par\vspace{0.8cm}
        {\kaibf\zihao{-2} \NJUSTunderline[5.46cm]{~\NJUST@value@authorid~}}
        
        %% 婵犵數鍋為崹鍫曞箰閸濄儴濮抽柤娴嬫櫇缁犳棃鏌涘☉娆愮稇婵☆偅顭囬惀顏堫敇閻愭潙娅￠梺閫炲苯澧柛鐔告綑椤曪絾绂掔€ｎ偄娈愰梺鍐叉惈閸婂寮抽悩缁樷拻闁稿本鑹鹃埀顒€顭疯棢闁归偊鍠氶悳?
        \par\vspace{1.5cm}
        
        %% 闂備礁婀遍崢褔鎮洪妸銉冩椽鎮㈤悡搴ｏ紵闁诲孩绋掗…鍥煘瀹ュ鐓冮柍杞扮閺嗘洜绱掓潏銊у⒌闁诡喛娉涢埥澶愬冀瑜嶉‖澶愭⒑?
        \setlength{\tabcolsep}{0pt}
        \renewcommand{\arraystretch}{2.1}
        \begin{tabular}{@{} l @{\hspace{0.5cm}} l @{}}
            \makebox[3.25cm][s]{\zihao{4}\songbf \NJUST@label@advisor} & \makebox[9.0cm][c]{\zihao{4}\kaibf \NJUST@value@advisor \hspace{5em} \NJUST@value@advisortitle} \\ \cline{2-2}
            \ifx\NJUST@value@coadvisor\@empty
            \else
                & \makebox[9.0cm][c]{\zihao{4}\kaibf \NJUST@value@coadvisor \hspace{5em} \NJUST@value@coadvisortitle} \\ \cline{2-2}
            \fi
            \makebox[3.25cm][s]{\zihao{4}\songbf \NJUST@label@college} & \makebox[9.0cm][c]{\zihao{4}\songbf \NJUST@value@college} \\ \cline{2-2}
            \makebox[3.25cm][s]{\zihao{4}\songbf \NJUST@label@major} & \makebox[9.0cm][c]{\zihao{4}\songbf \NJUST@value@major} \\ \cline{2-2}
            \makebox[3.25cm][s]{\zihao{4}\songbf \NJUST@label@interest} & \makebox[9.0cm][c]{\zihao{4}\songbf \NJUST@value@interest} \\ \cline{2-2}
            \makebox[3.25cm][s]{\zihao{4}\songbf \NJUST@label@submitdate} & \makebox[9.0cm][c]{\zihao{4}\songbf \NJUST@value@submitdate} \\ \cline{2-2}
        \end{tabular}

    \end{center}
    \songti
}




%% make backbone
\newcommand\makebackbone{
    \clearpage
    \if@twoside
        \thispagestyle{empty}
        \begin{center}
            \kaibf\zihao{-4}{\NJUST@value@titleBackbone}
            \vskip  \stretch{8}
            \vfill
            \kaibf\zihao{-4}{\NJUST@value@schoolBackbone}
        \end{center}
        \ifNJUST@typeinfo
            \vspace*{\stretch{1}}
            \begin{footnotesize}
                \noindent
            \end{footnotesize}
        \fi
        \cleardoublepage
    \fi
}




%% make Chinese incover
\newcommand\makeincover{
    % Placeholder only; later in this file, \makeincover is redefined by
    % the final active layout implementation.
    \cleardoublepage
    \thispagestyle{empty}
    \null
    \clearpage
}




%% make English incover
\newcommand\makeenglishincover{
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        \linespread{1.0}\selectfont
        \vspace*{-0.6cm} % 闂傚倷绀侀幉锛勫枈瀹ュ鍨傜€规洖娲ㄧ粻鏃堟煕瀹€鈧崑鐔风暤娴ｈ　鍋撶憴鍕婵炲绠撻崺锟犲川椤旇姤鐝梺璇茬箳閸嬬喖宕㈣閸┿垼绠涢弴妤€浜鹃柣銏ゆ涧椤ｅジ鏌曢崶銊ф创闁糕斁鍋撳銈嗗笂閼冲爼鎮版刊濯峢elor Dissertation闂傚倷鑳堕崑銊╁磿閼碱剚宕查柛鈩冪懅閻滅粯绻涢幋鐐寸殤闁活厼顦甸弻銈嗘叏閹邦兘鍋撻弴銏犵厱闁哄稁鍘介悡鐔兼煟閹邦剙绾фい銉у█閺岋綁骞掗幋顖氫紣濡炪倖娲╃紞渚€骞冮埡浣囇囧炊閿濆懍澹曟繝鐢靛Т濞诧箓鎮炴ィ鍐╃厪濠电倯鍐ㄦ灓闁哥偟鍎ょ换?3cm
        
        %% Bachelor Dissertation (闂備浇顕х换鎰崲閹邦喗宕查悗锝庡墲婵娊鏌嶉崫鍕櫤闁哄拋鍓熼幃妤€鈽夊鍏碱棇mes New Roman闂傚倷鐒︾€笛呯矙閹寸偟闄勯柡鍐ㄥ€荤粻鏂款熆閼搁潧濮囩紒鈧径鎰厽婵☆垰鍚嬮弳鈺呮煟?
        {\rmn\zihao{-2} \NJUST@value@englishdegree}
        
        \par\vspace{3.0cm}
        
        %% English Title (闂備浇顕х换鎰崲閹邦喗宕查悗锝庡墰閸楁岸鏌熺紒銏犳灍闁哄拋鍓熼幃妤€鈽夊鍏碱棇mes New Roman闂傚倷鐒︾€笛呯矙閹达附鍤愭い鏍ㄧ⊕閸欏繘鏌ｉ幇鐗堟锭闁?
        {\rmbf\zihao{-1} \NJUST@value@englishtitle}

        \par\vspace{3.5cm}
        
        %% author
        {\rmit\zihao{-2} By} \\
        \vspace{0.3cm}
        {\rmbfit\zihao{-2} \NJUST@value@englishauthor}

        \par\vspace{2.0cm}
        %% advisor
        \resizebox{\textwidth}{!}{%
            {\rmit\zihao{-2} Supervised by Prof.\ }{\rmbfit\zihao{-2} \NJUST@value@englishadvisor}
            \ifx\NJUST@value@englishcoadvisor\@empty
            \else
                {\rmn\zihao{-2} \ \& \ Researcher \ }{\rmbfit\zihao{-2} \NJUST@value@englishcoadvisor}
            \fi
        }
        
        \par\vspace{8.0cm}
        
        %% school & date
        {\rmn\zihao{-2} \NJUST@value@englishinstitute}
        \par\vspace{0.5cm}
        {\rmn\zihao{-2} \NJUST@value@englishdate}
        \vskip 40pt
    \end{center}
    \clearpage
}

%% final active Chinese incover layout with explicit 9cm tab stop
\renewcommand\makeincover{
    \cleardoublepage
    \thispagestyle{empty}
    \begingroup
    \null
    \begin{tikzpicture}[remember picture,overlay]
        \node[anchor=north, inner sep=0pt, font=\songti\zihao{-2}] at ($(current page.north)+(0,-3.15cm)$) {\NJUST@label@thesis};
        \node[anchor=north, inner sep=0pt, align=center, font=\heibf\zihao{-1}] at ($(current page.north)+(0,-7.00cm)$) {\NJUST@value@titleUpp\\[0.3cm]\NJUST@value@titleLow};

        % The Word template aligns the in-cover values to a tab stop at 9cm
        % from the physical left page edge, with the full-width colon landing
        % on that tab stop.
        \coordinate (njust-tabstop) at ($(current page.north west)+(9cm,0)$);
        \coordinate (njust-author-line) at ($(njust-tabstop)+(0,-12.28cm)$);
        \coordinate (njust-advisor-line) at ($(njust-tabstop)+(0,-14.00cm)$);
        \coordinate (njust-coadvisor-line) at ($(njust-tabstop)+(0,-15.28cm)$);

        \node[anchor=north east, inner sep=0pt, font=\kaibf\zihao{-2}] at (njust-author-line) {\NJUST@label@incoverauthor};
        \node[anchor=north west, inner sep=0pt, font=\kaibf\zihao{-2}] at (njust-author-line) {\hspace{0.5em}\NJUST@value@author};

        \node[anchor=north east, inner sep=0pt, font=\kaibf\zihao{-2}] at (njust-advisor-line) {\NJUST@label@incoveradvisor};
        \node[anchor=north west, inner sep=0pt, font=\kaibf\zihao{-2}] at (njust-advisor-line) {\hspace{0.5em}\NJUST@value@advisor\hspace{2em}\NJUST@value@advisortitle};
        \ifx\NJUST@value@coadvisor\@empty
        \else
            \node[anchor=north west, inner sep=0pt, font=\kaibf\zihao{-2}] at (njust-coadvisor-line) {\hspace{0.5em}\NJUST@value@coadvisor\hspace{2em}\NJUST@value@coadvisortitle};
        \fi

        \node[anchor=south, inner sep=0pt, align=center, font=\songbf\zihao{-2}] at ($(current page.south)+(0,2.85cm)$) {\NJUST@value@school\\[0.5cm]\NJUST@value@submitdate};
    \end{tikzpicture}
    \clearpage
    \endgroup
}

    
    
%% make statement
\newcommand\makestatement{
    \cleardoublepage
    \thispagestyle{empty}
    \begin{center}
        \vspace*{-35.1pt}
        \parbox{\textwidth}{\centering\bf\songbf\zihao{3}\NJUST@label@statement}
        \vskip 0.5cm
        \parbox{\textwidth}{\songti\fontsize{14bp}{31bp}\selectfont\setlength{\parindent}{2em}\setlength{\parskip}{0pt}\indent \NJUST@value@statement}
        \vskip 1.8cm
        \parbox{\textwidth}{\noindent{}\zihao{4}\NJUST@label@authorsign\hspace{3.5cm}\NJUST@label@signdate}
        \vskip 3.60cm

        \parbox{\textwidth}{\centering\bf\songbf\zihao{3}\NJUST@label@accredit}
        \vskip 0.5cm
        \parbox{\textwidth}{\songti\fontsize{14bp}{31bp}\selectfont\setlength{\parindent}{2em}\setlength{\parskip}{0pt}\indent \NJUST@value@accredit}
        \vskip 1.8cm
        \parbox{\textwidth}{\noindent{}\zihao{4}\NJUST@label@authorsign\hspace{3.5cm}\NJUST@label@signdate}
    \end{center}

    \clearpage
}



%%  make abstract
%% abstract
\newenvironment{abstract}{
{\ctexset{chapter={format = {\centering\songbf\zihao{3}}, beforeskip={48.81bp}, afterskip={18bp}}} \Nchapter{\NJUST@label@abstract}}
\markboth{\NJUST@label@abstract}{}
\linespread{1.0}\fontsize{12bp}{21bp}\selectfont
\par % 缂傚倷鑳堕搹搴ㄥ矗鎼淬劌绐楅柡鍥╁У瀹曞弶鎱ㄥΟ鍧楀摵濠殿垰銈搁弻娑㈠箻濡も偓閹冲繘鎮楅銏♀拺婵懓娲ら悘顕€鏌涢悩鍐插鐎?
}{}

%% kewords
\newcommand\keywords[1]{\vspace{2ex}\vspace{19.53bp}\noindent{\songbf\zihao{4} \NJUST@label@keywords}{\songti\zihao{-4} #1}}


\fancypagestyle{abstractstyle}{
    \fancyhf{}
    \fancyhead[LO]{\songti\zihao{-5}\NJUST@label@thesis}
    \fancyhead[RO]{\songti\zihao{-5}Abstract}
    \fancyhead[LE]{\songti\zihao{-5}Abstract}
    \fancyhead[RE]{\songti\zihao{-5}\NJUST@label@thesis}
    \fancyfoot[RO]{\songti\zihao{-5}\thepage}
    \fancyfoot[LE]{\songti\zihao{-5}\thepage}
    \renewcommand{\headrulewidth}{0.4pt}
}
%% Eng abstract
\newenvironment{englishabstract}{
    \clearpage
    {\ctexset{chapter={format = {\centering\rmbf\zihao{3}}, beforeskip={48.21bp}, afterskip={18bp}}} \Nchapter{\NJUST@label@englishabstract}}
    \thispagestyle{abstractstyle}
    \markboth{\NJUST@label@englishabstract}{}
    \NJUST@bodyspacing
    \par
}{
    \clearpage
}


%% Eng keywords
\newcommand\englishkeywords[1]{\vspace{2ex}\vspace{25.53bp}\noindent{\rmbf\zihao{4} \NJUST@label@englishkeywords}{\rmn\zihao{-4} #1}}





%% make table of contents
\renewcommand\tableofcontents{
\begingroup
\let\cleardoublepage\clearpage
\if@twocolumn
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse
\fi
{\ctexset{chapter={beforeskip=1.86cm, afterskip=22bp, format = {\centering\songbf\zihao{3}}}} \chapter *{\NJUST@contentsname}}
\markboth{\NJUST@contentsname}{}
\NJUST@bodyspacing
\par
\@mkboth{\MakeUppercase\NJUST@contentsname}{\MakeUppercase\NJUST@contentsname}
\@starttoc{toc}
\if@restonecol\twocolumn\fi
\endgroup
}
\newcommand*\NJUST@tocpnumwidth{1.0em}
\renewcommand*\l@chapter[2]{
    \ifnum \c@tocdepth >\m@ne
        \addpenalty{-\@highpenalty}
        \vskip 0pt          
        \setlength\@tempdima{1.5em} % 缂傚倸鍊搁崐鎼佸磹瑜版帗鍋嬮柡鍤堕姹楅柣鐘充航閸斿宕戦幘鑸靛厹闁告侗鍣Λ鍕煟?
        \begingroup
        \parindent \z@ \rightskip \NJUST@tocpnumwidth
        \parfillskip -\NJUST@tocpnumwidth
        \leavevmode \songbf\rmfamily\fontsize{14bp}{21bp}\selectfont
        \setlength\leftskip{1.5em}
        \hskip -1.5em
        #1\nobreak
        \leaders\hbox{\kern0.02em.\kern0.02em}\hfill % 闂傚倷绀侀幖顐︻敄閸曨個褰掑炊椤掆偓閸氬湱鎲搁弮鍫濈畺婵炲棙鎸婚崑锟犳煛婢跺﹦浠㈤柍璇茬箻閺岋絾鎯旈妸锔介敪濠碘槅鍋呴〃鍫ュ焵?   
        \nobreak\hb@xt@\NJUST@tocpnumwidth{#2\hss}\par
        \penalty\@highpenalty
        \endgroup
    \fi
}
\renewcommand*\l@section[2]{
    \ifnum \c@tocdepth >\z@
        \vskip 0pt
        \setlength\@tempdima{2.3em} % 缂傚倸鍊搁崐鎼佸磹瑜版帗鍋嬮柡鍤堕姹楅柣鐘充航閸斿宕戦幘鑸靛厹闁告侗鍣Λ鍕煟?
        \begingroup
        \parindent \z@ \rightskip \NJUST@tocpnumwidth
        \parfillskip -\NJUST@tocpnumwidth
        \leavevmode \songti\rmfamily\fontsize{12bp}{21bp}\selectfont
        \setlength\leftskip{3.8em} % 缂傚倸鍊搁崐鎼佸磹閻㈢鐤鹃柣鎰仛瀹曞弶鎱ㄥ璇蹭壕闂?.5em (缂? + 2.3em (闂傚倷鑳堕崢褔骞栭锕€纾归柤濮愬€栭～鏇熴亜韫囨挾澧曢柣?
        \hskip -2.3em
        #1\nobreak
        \leaders\hbox{\kern0.02em.\kern0.02em}\hfill % 闂傚倷绀侀幖顐︻敄閸曨個褰掑炊椤掆偓閸氬湱鎲搁弮鍫濈畺婵炲棙鎸婚崑锟犳煛婢跺﹦浠㈤柍璇茬箻閺岋絾鎯旈妸锔介敪濠碘槅鍋呴〃鍫ュ焵?
        \nobreak\hb@xt@\NJUST@tocpnumwidth{#2\hss}\par
        \endgroup
    \fi
}
\renewcommand*\l@subsection[2]{
    \ifnum \c@tocdepth >1
        \vskip 0pt
        \setlength\@tempdima{3.2em} % 缂傚倸鍊搁崐鎼佸磹瑜版帗鍋嬮柡鍤堕姹楅柣鐘充航閸斿宕戦幘鑸靛厹闁告侗鍣Λ鍕煟?
        \begingroup
        \parindent \z@ \rightskip \NJUST@tocpnumwidth
        \parfillskip -\NJUST@tocpnumwidth
        \leavevmode \songti\rmfamily\fontsize{12bp}{21bp}\selectfont
        \setlength\leftskip{7.0em} % 缂傚倸鍊搁崐鎼佸磹閻㈢鐤鹃柣鎰仛瀹曞弶鎱ㄥ璇蹭壕闂?.8em (闂? + 3.2em (闂備浇顕х换鎰崲閹邦喗宕叉俊銈勬缁诲棙銇勯幘璺盒ョ痪鍙ョ矙閺屸€崇暤椤旂厧鏆欓柍?
        \hskip -3.2em
        #1\nobreak
        \leaders\hbox{\kern0.02em.\kern0.02em}\hfill % 闂傚倷绀侀幖顐︻敄閸曨個褰掑炊椤掆偓閸氬湱鎲搁弮鍫濈畺婵炲棙鎸婚崑锟犳煛婢跺﹦浠㈤柍璇茬箻閺岋絾鎯旈妸锔介敪濠碘槅鍋呴〃鍫ュ焵?
        \nobreak\hb@xt@\NJUST@tocpnumwidth{#2\hss}\par
        \endgroup
    \fi
}
\addtocontents{toc}{\let\string\quad\relax}




%% make list of figures
\renewcommand*\listoffigures{
{\ctexset{chapter={format = {\centering\songbf\zihao{3}}}} \chapter*{\NJUST@listfigurename}}
\@mkboth{\MakeUppercase\NJUST@listfigurename}
{\MakeUppercase\NJUST@listfigurename}
\NJUST@bodyspacing
\par
\@starttoc{lof}     % list of figures
}




%% make list of tables
\renewcommand*\listoftables{
{\ctexset{chapter={format = {\centering\songbf\zihao{3}}}} \chapter*{\NJUST@listtablename}}
\@mkboth{\MakeUppercase\NJUST@listtablename}
{\MakeUppercase\NJUST@listtablename}
\NJUST@bodyspacing
\par
\@starttoc{lot}     % list of tables
}




%% make figure and table
\newcommand*\listoffiguresandtables{
{\ctexset{chapter={format = {\centering\songbf\zihao{3}}, beforeskip={2.04cm}, afterskip={20bp}}} \chapter*{\NJUST@listfiguresandtablesname}}
\markboth{\NJUST@listfiguresandtablesname}{}
\@mkboth{\MakeUppercase\NJUST@listfiguresandtablesname}
{\MakeUppercase\NJUST@listfiguresandtablesname}
\begingroup
\linespread{1.0}\selectfont
\setlength{\parskip}{0pt}
\renewcommand\@dotsep{0.9}
\fontsize{12bp}{21bp}\selectfont % 婵犵數鍋為崹鍫曞箰閸洖纾块柡灞诲劜閸嬪鏌熼梻瀵稿妽闁绘挶鍎遍湁闁挎繂鎳忛幉鎼佹煛?20bp 闂備浇宕甸崑鐐电矙閹达附鍎楀ù锝堟閻?
\par
{
    \let\oldnumberline\numberline
    \renewcommand{\numberline}{\figurename~\oldnumberline}
    \@starttoc{lof}    % list of figures
}
\nointerlineskip % 濠电姷鏁搁崑鐐哄垂閻㈠憡鍋嬮柟鐐灱閺?LOF 闂?LOT 濠电姷顣藉Σ鍛村垂椤忓牆鐒垫い鎺戝暞閻濐亪鏌涚€ｃ劌鍔︽慨濠傤煼瀹曟帒顫濋悡搴㈩啀婵犵數鍋涢悧濠囧垂閸洘鏅柟閭﹀厴閺€浠嬫煕閳锯偓閺呮粓鍩㈡惔銊︹拻闁稿本鑹鹃埀顒€缍婇獮鎰板礃濞村鐏?
{
    \let\oldnumberline\numberline
    \renewcommand{\numberline}{\tablename~\oldnumberline}
    \@starttoc{lot}    % list of tables
}
\endgroup
}




%% make abbreviations
\newenvironment{abbr}{
\ctexset{chapter={format += {\centering\zihao{3}}}}
{\Nchapter{\NJUST@label@abbr}}
}{}




%% make symbols
\newenvironment{symbols}{
\ctexset{chapter={format += {\centering\zihao{3}}}}
{\Nchapter{\NJUST@label@symbols}}
}{}




%% make bibliography
\newenvironment{newbibliography}{
\ctexset{chapter={format = {\centering\songbf\zihao{3}}, beforeskip={48.8bp}, afterskip={18bp}}}
\NJUST@bodyspacing
\renewcommand*{\bibfont}{\songti\zihao{-4}\linespread{1.0}\fontsize{12bp}{20bp}\selectfont}
\setlength{\bibhang}{0pt}
\setlength{\biblabelsep}{16.06pt}
\setlength{\bibitemsep}{0pt}
\setlength{\bibparsep}{0pt}
\setlength{\parskip}{0pt}
\par
\printbibliography
}




%% make publications
\newenvironment{publications}[1]{
\ctexset{chapter={format = {\centering\songbf\zihao{3}}, beforeskip={48.8bp}, afterskip={20bp}}}
{\Nchapter{\NJUST@label@publications}}
\NJUST@bodyspacing
\par
\@mkboth{\MakeUppercase\NJUST@label@publications}
{\MakeUppercase\NJUST@label@publications}%
\begin{enumerate}[label={}, leftmargin=0pt, itemindent=0pt, labelsep=0pt, parsep=0pt, partopsep=0pt, topsep=0pt]
}{
\end{enumerate}
}




%% make thanks
\renewenvironment{thanks}{
\ctexset{chapter={format = {\centering\songbf\zihao{3}}, beforeskip={48.8bp}, afterskip={20bp}}}
{\Nchapter{\NJUST@label@thanks}}
}{}




%% public vars for thesis
\newcounter{nlgcounter}
\newenvironment{nlglist}{
    \begin{list}{(\arabic{nlgcounter})}{
            \usecounter{nlgcounter}
            \setlength{\leftmargin}{0cm}
            \setlength{\parsep}{\parskip}
            \setlength{\topsep}{1ex}
            \setlength{\itemsep}{0.4ex plus 0.5ex}
            \setlength{\labelsep}{0.3em}
            \setlength{\itemindent}{46pt}
            \setlength{\listparindent}{27pt}
        }}
        {\end{list}}
\renewcommand{\labelenumi}{(\theenumi)}




\endinput

