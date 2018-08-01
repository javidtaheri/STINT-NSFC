\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stint-cv}[2011/03/26 My custom CV class]
\LoadClass[9pt]{extarticle}


\RequirePackage{scrextend}
\RequirePackage{geometry}
\RequirePackage{fontawesome}
\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage{xhfill}
%\RequirePackage{array}
%\RequirePackage{multirow}
%\RequirePackage{ifthen}
%\RequirePackage{graphicx}
\RequirePackage{eurosym}
\RequirePackage{bibentry}
\RequirePackage{enumitem}
\RequirePackage{tikz}
\usetikzlibrary{calc}
%\RequirePackage{pgffor}
\RequirePackage{colortbl}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\renewcommand{\@dotsep}{10000} 
\newcommand{\customlabel}[2]{\protected@write \@auxout {}{\string \newlabel {#1}{{#2}{}}}}

\geometry{left=1.5cm, top=1.5cm, right=1.5cm, bottom=1.4cm, footskip=1.0cm, headsep=0.5cm}
\pagestyle{fancy}

\newcommand{\resetfont}{\renewcommand{\familydefault}{cmtt}\normalfont}
\newcommand{\changefont}[1]{
	%\resetfont
	\renewcommand{\familydefault}{#1}
	\fontfamily{#1}
	\selectfont
}

%\DeclareOption{cmr}{\changefont{cmr}}
%\DeclareOption{lmr}{\changefont{lmr}}
%\DeclareOption{pbk}{\changefont{pbk}}
%\DeclareOption{bch}{\changefont{bch}}
%\DeclareOption{pnc}{\changefont{pnc}}
%\DeclareOption{ppl}{\changefont{ppl}}
%\DeclareOption{ptm}{\changefont{ptm}}
%
%\DeclareOption{cmss}{\changefont{cmss}}
%\DeclareOption{lmss}{\changefont{lmss}}
%\DeclareOption{pag}{\changefont{pag}}
%\DeclareOption{phv}{\changefont{phv}}
%
%\DeclareOption{cmtt}{\changefont{cmtt}}
%\DeclareOption{lmtt}{\changefont{lmtt}}
%\DeclareOption{pcr}{\changefont{pcr}}


%Abbreviation	Font Name
%cmr	Computer Modern Roman (default)
%lmr	Latin Modern Roman
%pbk	Bookman
%bch	Charter
%pnc	New Century Schoolbook
%ppl	Palatino
%ptm	Times
%Sans Serif Fonts
%Abbreviation	Font Name
%cmss	Computer Modern Sans Serif (default)
%lmss	Latin Modern Sans Serif
%pag	Avant Garde
%phv	Helvetica
%Typewriter Fonts
%Abbreviation	Font Name
%cmtt	Computer Modern Typewriter (default)
%lmtt	Latin Modern
%pcr	Courier

%\ExecuteOptions{phv}


\newcommand{\cvLMstep}{0.2cm}
\newcommand{\cvRMstep}{0cm}

\newcommand\xHuge{\@setfontsize\Huge{15}{25}}
\newcommand\xxHuge{\@setfontsize\Huge{20}{30}}

\newcommand\cvFontxHuge{\@setfontsize\Huge{20}{30}}
\newcommand\cvFontHuge{\@setfontsize\Huge{12}{18}}
\newcommand\cvFontLarge{\@setfontsize\Huge{10}{15}}

\newcommand{\cvHeadingTwoPageCV}[1]{
	{
		\bigbreak
		\begin{addmargin}[-\cvLMstep]{0cm}
			{\cvFontHuge #1} \xrfill[0pt]{1pt}[gray]
		\end{addmargin}
	}
}

\newenvironment{cvItemize}{
	\newcommand{\cvItem}[1]{\item ##1}
	\newcommand{\cvDatedItem}[2]{\item ##1 \hfill ##2}
	\newcommand{\cvLongDatedItem}[3]{\item ##1 \hfill ##3\\##2}
	\newcommand{\cvNoItem}[1]{##1}
	\newcommand{\cvGrantItem}[3]{\item ##1 \hfill ##3\\{\small ##2 \vspace{0.5em}}}
	\newcommand{\cvLongGrantItem}[4]{\item ##1 \hfill ##4\\{\hspace*{0.5cm} ##2}\\{\small ##3 \vspace{0.5em}}}
	
	\vspace{-0.5em}
	\begin{itemize}
		\itemsep=-0.3em
		\itemindent=-0.3em 
	}{
	\end{itemize}
}

\newcommand{\cvPersonalInfoLogo}[9]{
	\begin{center}
		\begin{tabular}{L{0.15\textwidth} C{0.65\textwidth} C{0.15\columnwidth}}
			\begin{center}
				\vspace{-2cm}
				\includegraphics[width=0.11\columnwidth]{#1}
			\end{center}
			& 
			\begin{center}
				\vspace{-0.5cm}
				\textsc{\cvFontxHuge #2} \\
				\vspace{0.15cm}
				{\cvFontHuge #3} \\
				\vspace{0.15cm}
				{\cvFontLarge #4} \\
				\vspace{0.15cm}
				 {\cvFontLarge \faMobilePhone}~#5 \hspace{0.2cm} \faPhone~#6 \hspace{0.2cm} \faEnvelope ~~#7\\
			 	\vspace{0.1cm}
				\faInternetExplorer~ #8\\
				\vspace{0.1cm}
				\faGraduationCap~#9
			\end{center}
			& 
		\end{tabular}
	\end{center}
}
%\cvPersonalInfoLogoX{kau-logo}
%{Javid Taheri}
%{Associate Professor \& Docent}
%{Department of Computer Science, Karlstad University, Sweden}
%{+46 722 80 20 67}{+46 54 700 2429}{javid.taheri@kau.se}
%{https://sites.google.com/site/javidtaheri75/home}
%{https://scholar.google.co.uk/citations?user=QTNsnbAAAAAJ}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand{\cvMakeHeaderFooter}[2]{%
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[L]{\small #1}%Curriculum Vitae}
	\fancyhead[R]{\small #2}%Javid Taheri, PhD}
	\fancyfoot[L]{\small \cvToday}
	\fancyfoot[R]{\small \thepage}
}
