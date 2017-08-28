INSERT INTO m_content (docid, need, english) VALUES 
(2, false, 'PKG-INFO(8)             FreeBSD System Manager''s Manual            PKG-INFO(8)'),
(2, false, ''),
(2, false, '<a name="NAME" href="#end"><b>NAME</b></a>'),
(2, false, '     <b>pkg</b> <b>info</b> – display information for packages'),
(2, false, ''),
(2, false, '<a name="SYNOPSIS" href="#end"><b>SYNOPSIS</b></a>'),
(2, false, '     <b>pkg</b> <b>info</b> <i>pkg-name</i>'),
(2, false, '     <b>pkg</b> <b>info</b> <b>-a</b>'),
(2, false, '     <b>pkg</b> <b>info</b> [<b>-AbBDdefIklOpqRrs</b>] [<b>-Cgix</b>] <i>pkg-name</i>'),
(2, false, '     <b>pkg</b> <b>info</b> [<b>-AbBDdfIlpqRrs</b>] <b>-F</b> <i>pkg-file</i>'),
(2, false, ''),
(2, false, '     <b>pkg</b> <b>info</b> <i>pkg-name</i>'),
(2, false, '     <b>pkg</b> <b>info</b> <b>--all</b>'),
(2, false, '     <b>pkg</b> <b>info</b> [<b>--{annotations,provided-shlibs,required-shlibs}</b>]'),
(2, false, '              [<b>--{pkg-message,dependencies,exists,full,comment,locked}</b>]'),
(2, false, '              [<b>--{list-files,by-origin,quiet,prefix,raw,required-by,size}</b>]'),
(2, false, '              [<b>--{case-sensitive,glob,case-insensitive,regex}</b>] <i>pkg-name</i>'),
(2, false, '     <b>pkg</b> <b>info</b> [<b>--{annotations,provided-shlibs,required-shlibs}</b>]'),
(2, false, '              [<b>--{pkg-message,dependencies,full,comment,list-files}</b>]'),
(2, false, '              [<b>--{quiet,prefix,raw,required-by,size}</b>] <b>--file</b> <i>pkg-file</i>'),
(2, false, '              [<b>--raw-format</b> <i>format</i>]'),
(2, false, ''),
(2, false, '<a name="DESCRIPTION" href="#end"><b>DESCRIPTION</b></a>'),
(2, false, '     <b>pkg</b> <b>info</b> is used for displaying information for packages.'),
(2, false, ''),
(2, false, '<a name="OPTIONS" href="#end"><b>OPTIONS</b></a>'),
(2, false, '     The following options are supported by <b>pkg</b> <b>info</b>:'),
(2, false, ''),
(2, false, '     <b>-a</b>, <b>--all</b>'),
(2, false, '             Display all installed packages.'),
(2, false, ''),
(2, false, '     <b>-A</b>, <b>--annotations</b>'),
(2, false, '             Display any annotations added to the package.'),
(2, false, ''),
(2, false, '     <b>-C</b>, <b>--case-sensitive</b>'),
(2, false, '             Make the standard or the regular expression (<b>-x</b>) matching against'),
(2, false, '             <i>pkg-name</i> case sensitive.'),
(2, false, ''),
(2, false, '     <b>-f</b>, <b>--full</b>'),
(2, false, '             Display full information about the packages matching <i>pkg-name</i>.'),
(2, false, '             This is the default.'),
(2, false, ''),
(2, false, '     <b>-R</b>, <b>--raw</b>'),
(2, false, '             Display the full manifest (raw) for the packages matching'),
(2, false, '             <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>--raw-format</b> <i>format</i>'),
(2, false, '             Choose the format of the raw output.  The format can be: json,'),
(2, false, '             json-compact, yaml (default).'),
(2, false, ''),
(2, false, '     <b>-e</b>, <b>--exists</b>'),
(2, false, '             If <i>pkg-name</i> is installed and registered in the database, return'),
(2, false, '             0, otherwise return 1.  Useful for checking whether the package'),
(2, false, '             is installed.'),
(2, false, ''),
(2, false, '     <b>-D</b>, <b>--pkg-message</b>'),
(2, false, '             Show the pkg-message for matching packages.'),
(2, false, ''),
(2, false, '     <b>-g</b>, <b>--glob</b>'),
(2, false, '             Treat <i>pkg-name</i> as a shell glob pattern.'),
(2, false, ''),
(2, false, '     <b>-i</b>, <b>--case-insensitive</b>'),
(2, false, '             Make the standard or the regular expression (<b>-x</b>) matching'),
(2, false, '             against <i>pkg-name</i> case insensitive.  This is the default, unless modified'),
(2, false, '             by setting CASE_SENSITIVE_MATCH to true in <i>pkg.conf</i>.'),
(2, false, ''),
(2, false, '     <b>-I</b>, <b>--comment</b>'),
(2, false, '             Display the specified packages and their comments.'),
(2, false, ''),
(2, false, '     <b>-x</b>, <b>--regex</b>'),
(2, false, '             Treat <i>pkg-name</i> as a regular expression according to the "modern"'),
(2, false, '             or "extended" syntax of <a href="/man.cgi?query=re_format&amp;sektion=7&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">re_format(7)</a>.'),
(2, false, ''),
(2, false, '     <b>-d</b>, <b>--dependencies</b>'),
(2, false, '             Display the list of packages on which <i>pkg-name</i> depends.'),
(2, false, ''),
(2, false, '     <b>-r</b>, <b>--required-by</b>'),
(2, false, '             Display the list of packages which require <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>-k</b>, <b>--locked</b>'),
(2, false, '             Show the locking status for <i>pkg-name</i>.  When used in combination'),
(2, false, '             with <b>-d</b> or <b>-r</b>, indicate which packages, dependencies or'),
(2, false, '             requirements are locked by ''(*)''.  Locking status is only'),
(2, false, '             meaningful for installed packages; all locking statuses will show'),
(2, false, '             as unlocked when information about a <i>pkg-file</i> is queried.'),
(2, false, ''),
(2, false, '     <b>-l</b>, <b>--list-files</b>'),
(2, false, '             Display all files installed by <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>-b</b>, <b>--provided-shlibs</b>'),
(2, false, '             Display all shared libraries provided by <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>-B</b>, <b>--required-shlibs</b>'),
(2, false, '             Display all shared libraries used by <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>-s</b>, <b>--size</b>'),
(2, false, '             Display the total size of files installed by <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>-q</b>, <b>--quiet</b>'),
(2, false, '             Be “quiet”.  Prints only the requested information without'),
(2, false, '             displaying many hints.'),
(2, false, ''),
(2, false, '     <b>-O</b>, <b>--by-origin</b>'),
(2, false, '             Search is done by the <i>pkg-name</i> origin.  Added only for Ports'),
(2, false, '             compatibility.'),
(2, false, ''),
(2, false, '     <b>-E</b>, <b>--show-name-only</b>'),
(2, false, '             Hides the full package output and only shows the package name.'),
(2, false, '             This option is deprecated and exists only for Ports'),
(2, false, '             compatibility.'),
(2, false, ''),
(2, false, '     <b>-o</b>, <b>--origin</b>'),
(2, false, '             Display <i>pkg-name</i> origin.'),
(2, false, ''),
(2, false, '     <b>-p</b>, <b>--prefix</b>'),
(2, false, '             Display the installation prefix for each package matching'),
(2, false, '             <i>pkg-name</i>.'),
(2, false, ''),
(2, false, '     <b>-F</b> <i>pkg-file</i>, <b>--file</b> <i>pkg-file</i>'),
(2, false, '             Displays information from the package archive <i>pkg-file</i>.'),
(2, false, ''),
(2, false, '<a name="ENVIRONMENT" href="#end"><b>ENVIRONMENT</b></a>'),
(2, false, '     The following environment variables affect the execution of <b>pkg</b> <b>info</b>.'),
(2, false, '     See <a href="/man.cgi?query=pkg.conf&amp;sektion=5&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg.conf(5)</a> for further description.'),
(2, false, ''),
(2, false, '     PKG_DBDIR'),
(2, false, ''),
(2, false, '     CASE_SENSITIVE_MATCH'),
(2, false, ''),
(2, false, '<a name="FILES" href="#end"><b>FILES</b></a>'),
(2, false, '     See <a href="/man.cgi?query=pkg.conf&amp;sektion=5&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg.conf(5)</a>.'),
(2, false, ''),
(2, false, '<a name="SEE_ALSO" href="#end"><b>SEE ALSO</b></a>'),
(2, false, '     <a href="/man.cgi?query=pkg_printf&amp;sektion=3&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg_printf(3)</a>, <a href="/man.cgi?query=pkg_repos&amp;sektion=3&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg_repos(3)</a>, <a href="/man.cgi?query=pkg-repository&amp;sektion=5&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-repository(5)</a>, <a href="/man.cgi?query=pkg.conf&amp;sektion=5&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg.conf(5)</a>, <a href="/man.cgi?query=pkg&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-add&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-add(8)</a>, <a href="/man.cgi?query=pkg-annotate&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-annotate(8)</a>, <a href="/man.cgi?query=pkg-audit&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-audit(8)</a>, <a href="/man.cgi?query=pkg-autoremove&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-autoremove(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-backup&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-backup(8)</a>, <a href="/man.cgi?query=pkg-check&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-check(8)</a>, <a href="/man.cgi?query=pkg-clean&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-clean(8)</a>, <a href="/man.cgi?query=pkg-config&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-config(8)</a>, <a href="/man.cgi?query=pkg-convert&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-convert(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-create&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-create(8)</a>, <a href="/man.cgi?query=pkg-delete&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-delete(8)</a>, <a href="/man.cgi?query=pkg-fetch&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-fetch(8)</a>, <a href="/man.cgi?query=pkg-install&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-install(8)</a>, <a href="/man.cgi?query=pkg-lock&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-lock(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-query&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-query(8)</a>, <a href="/man.cgi?query=pkg-register&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-register(8)</a>, <a href="/man.cgi?query=pkg-repo&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-repo(8)</a>, <a href="/man.cgi?query=pkg-rquery&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-rquery(8)</a>, <a href="/man.cgi?query=pkg-search&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-search(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-set&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-set(8)</a>, <a href="/man.cgi?query=pkg-shell&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-shell(8)</a>, <a href="/man.cgi?query=pkg-shlib&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-shlib(8)</a>, <a href="/man.cgi?query=pkg-ssh&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-ssh(8)</a>, <a href="/man.cgi?query=pkg-stats&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-stats(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-update&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-update(8)</a>, <a href="/man.cgi?query=pkg-updating&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-updating(8)</a>, <a href="/man.cgi?query=pkg-upgrade&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-upgrade(8)</a>, <a href="/man.cgi?query=pkg-version&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-version(8)</a>,'),
(2, false, '     <a href="/man.cgi?query=pkg-which&amp;sektion=8&amp;apropos=0&amp;manpath=FreeBSD+11.0-RELEASE">pkg-which(8)</a>'),
(2, false, ''),
(2, false, 'FreeBSD 11.0-RELEASE-p1        December 1, 2014        FreeBSD 11.0-RELEASE-p1'),
(2, false, '');