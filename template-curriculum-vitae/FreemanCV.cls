%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Freeman Curriculum Vitae
% Class File
% Version 3.0 (September 3, 2021)
%
% This class originates from:
% https://www.LaTeXTemplates.com
%
% Authors:
% Vel (vel@LaTeXTemplates.com)
% Alessandro Plasmati
%
% License:
% CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modifications by navkovs
% 2023-10-26
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------
%   CLASS CONFIGURATION
%------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FreemanCV}[2021/09/03 Freeman CV Class v3.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any extra options specified to the base class
\ProcessOptions\relax % Process class options

\LoadClass{article} % Load the base class

%------------------------------------------------
%   REQUIRED PACKAGES AND MISC CONFIGURATIONS
%------------------------------------------------

\usepackage{etoolbox} % Required for conditional logic and changing commands

\setlength{\parindent}{0pt} % Paragraph indentation

\usepackage{supertabular} % Required for the supertabular environment which allows tables to span multiple pages so sections with tables correctly wrap across pages

\usepackage{tabularx}

\usepackage{extsizes} % Allows using more default font sizes as a class option

\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{comment}

\usepackage[ngerman]{babel}
\usepackage{csquotes}

\usepackage{hyphenat}
\hyphenation{Mathe-matik wieder-gewinnen}

\usepackage{tikz}
% \usepackage[framemethod=TikZ]{mdframed}

\usepackage{datetime}

\usepackage[
    pdfauthor={Author},
    pdftitle={Curriculum Vitae - Name},
    pdfsubject={},
    pdfkeywords={Curriculum Vitae, Name},
    pdfproducer={Latex with hyperref},
    pdfcreator={xelatex},
    pdfpagelabels % this is used that one warning is not present anymore
]{hyperref} % meta data definition

\usepackage{calc}

\usepackage{pdfpages}

\usepackage{adjustbox}
\MakeOuterQuote{"}

%------------------------------------------------
%   MARGINS
%------------------------------------------------

\usepackage[
    a4paper, % Paper size
    top=1.69cm, % Top margin
    bottom=1.69cm, % Bottom margin
    left=2.41cm, % Left margin
    right=2cm, % Right margin
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm, % Space from the top margin to the baseline of the header
    headheight=1cm, % Height of the header
    % showframe % Uncomment to show frames around the margins for debugging purposes
]{geometry}

%------------------------------------------------
%   FONTS
%------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts under XeLaTeX

\defaultfontfeatures{Ligatures=TeX} % To support LaTeX ligatures (e.g. `` and --)
\defaultfontfeatures{Path=fonts/} % Specify the location of font files

% The serif font used by default or explicitly with \textrm{}/\rmfamily
\setmainfont{EBGaramond}[
    UprightFont=*-Regular.ttf,
    BoldFont=*-Bold.ttf,
    BoldItalicFont=*-BoldItalic.ttf,
    ItalicFont=*-Italic.ttf,
    SmallCapsFont=*-SC.ttf
]

% The sans serif font used explicitly with \textsf{}\sffamily
\setsansfont{LibertinusSans}[
    UprightFont=*-Regular.otf,
    BoldFont=*-Bold.otf,
    ItalicFont=*-Italic.otf
]

\newfontfamily{\cursivefont}{freebooterscript} % New font family for the cursive font Freebooter Script

\newfontfamily{\FA}{FontAwesome} % Create a new font family for FontAwesome icons
\input{fonts/fontawesomesymbols-xeluatex.tex} % Load a file to create shortcuts to the icons, see icon examples and their shortcuts in fontawesome.pdf in the Fonts folder

%------------------------------------------------
%   HEADERS & FOOTERS
%------------------------------------------------

\usepackage{fancyhdr} % Required for customizing headers and footers
\pagestyle{fancy} % Enable custom headers and footers

\renewcommand{\headrulewidth}{0pt} % Remove the default rule under the header

\fancyhf{} % Clear default headers/footers by default, add headers and footers in the template file as per the example

%------------------------------------------------
%   SECTIONS
%------------------------------------------------

\usepackage[nobottomtitles*]{titlesec} % Required for modifying sections, the nobottomtitles* pushes section titles to the next page when they are close to the bottom of the page

\renewcommand{\bottomtitlespace}{0.05\textheight} % The minimal space required from the bottom margin so a section title isn't moved to the next page

\titleformat
    {\section} % Section type being modified
    [block] % Section layout type, can be: hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame
    {\color{headings}\scshape\Large\raggedright} % Text formatting of the whole section, i.e. label and title
    {} % Section label (e.g. number) and its formatting
    {0pt} % Horizontal space between the section label and title
    {} % Code before the section title
    [\color{headings}\titlerule] % Code after the section title

\titlespacing*{\section}{0pt}{0pt}{8pt} % Spacing around section titles, the order is: left, before and after

%------------------------------------------------

\titleformat
    {\subsection} % Section type being modified
    [block] % Section layout type, can be: hang, block, display, runin, leftmargin, rightmargin, drop, wrap, frame
    {\itshape} % Text formatting of the whole section, i.e. label and title
    {} % Section label (e.g. number) and its formatting
    {0pt} % Horizontal space between the section label and title
    {} % Code before the section title
    [] % Code after the section title

\titlespacing*{\subsection}{0pt}{0pt}{0pt} % Spacing around section titles, the order is: left, before and after

%------------------------------------------------
%   COLORS
%------------------------------------------------

% \usepackage[usenames, svgnames]{xcolor} % Required for defining and using custom colors
\definecolor{text}{HTML}{2b2b2b} % Main document text color, off-black
% \definecolor{headings}{HTML}{701112} % Dark red color for headings
\definecolor{headings}{HTML}{185978} % Dark green color for headings
% \definecolor{shade}{HTML}{ffecb3} % Peach color for the contact information box
\definecolor{shade}{HTML}{ffe082} % Peach color for the contact information box
\definecolor{linkcolor}{HTML}{185978} % 25% desaturated headings color for links

\color{text} % Set the default text color

%------------------------------------------------
%   LINKS
%------------------------------------------------

\usepackage{hyperref} % Required for links

\hypersetup{
    colorlinks=true, % Whether to color the text of links
    urlcolor=linkcolor, % Color for \url and \href links
    linkcolor=linkcolor, % Color for \nameref links
}

%------------------------------------------------
%   CUSTOM COMMANDS
%------------------------------------------------

\newcommand{\parboxtitle}[1]{
    \parbox[t]{3.2cm}{\raggedleft #1}
}

% Command for adding a new job entry (work experience)
\newcommand{\jobentry}[5]{
    \parboxtitle{\expandafter\ifstrequal\expandafter{#3}{}{}{{\raggedright\large #3}\hfill#1\\}}
    \expandafter\ifstrequal\expandafter{#4}{}{}{{\raggedright\large{\textbf{#4}}}\\}
    \expandafter\ifstrequal\expandafter{#5}{}{}{{#5}\smallskip\\}
}

% Command for new project.
\newcommand{\projectentry}[4]{
    \parboxtitle{\textsc{#1}} & \textbf{#2} - {#3}\\
    \expandafter\ifstrequal\expandafter{#4}{}{}{& {\parbox[c]{\linewidth-4.05cm}{\raggedright #4}\smallskip}\\}
}

% Command for entering a new qualification (education)
\newcommand{\qualificationentry}[6]{
    \parboxtitle{\textsc{#1}} & \textbf{#2} #4\\
    \expandafter\ifstrequal\expandafter{#3}{}{}{& {\small\textsc{#3}}\\}
    \expandafter\ifstrequal\expandafter{#5}{}{}{& {#5}\\}
    \expandafter\ifstrequal\expandafter{#6}{}{}{& {#6 \smallskip}\\}
}

% Command for 2 column table where the first column is stuck to the top.
\newcommand{\tableentry}[2]{
    \parboxtitle{\textsc{#1}} & \begin{tabular}[t]{@{}p{\linewidth-4cm}l@{}}#2\end{tabular}\smallskip\\
}
