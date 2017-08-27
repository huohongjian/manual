/*
**	database: 	manual
**	date:		2017-08-27
*/


-- 类别表，用于分类 --
DROP TABLE IF EXISTS m_cat CASCADE;
DROP SEQUENCE IF EXISTS m_cat_id_seq;
CREATE SEQUENCE m_cat_id_seq;
CREATE TABLE m_cat
(
	id 		integer NOT NULL DEFAULT nextval('m_cat_id_seq'::regclass),
	name  	text,
	CONSTRAINT m_cat_pkey PRIMARY KEY (id)
);



-- man文档表 --
DROP TABLE IF EXISTS m_doc CASCADE;
DROP SEQUENCE IF EXISTS m_doc_id_seq;
CREATE SEQUENCE m_doc_id_seq;
CREATE TABLE m_doc
(
	id 			integer NOT NULL DEFAULT nextval('m_doc_id_seq'::regclass),
	name  		text,		-- man文件名
	catid		integer,	-- 类别id
	userid		integer,	-- 管理本条目翻译的人员id
	status		integer NOT NULL DEFAULT 0,	-- 0:未完成 1:提交 2:审定
	updatetime 	timestamp(0) without time zone NOT NULL DEFAULT now(),
	CONSTRAINT m_doc_pkey PRIMARY KEY (id)
);
CREATE INDEX m_doc_name_idx 		ON m_doc (name); 
CREATE INDEX m_doc_updatetime_idx 	ON m_doc (updatetime);



-- 文档内容表，文档显示的每一行为一个记录 --
DROP TABLE IF EXISTS m_content CASCADE;
DROP SEQUENCE IF EXISTS m_content_id_seq;
CREATE SEQUENCE m_content_id_seq;
CREATE TABLE m_content
(
	id 			integer NOT NULL DEFAULT nextval('m_content_id_seq'::regclass),
	docid		integer,						-- 文档id
	need 		boolean NOT NULL DEFAULT TRUE,	-- 是否需要翻译
	english		text,							-- 原文
	trans 		text,							-- 译文
	updatetime 	timestamp(0) without time zone NOT NULL DEFAULT now(),
	suggest 	jsonb,							-- 修改建议
	CONSTRAINT m_content_pkey PRIMARY KEY (id)
);
CREATE INDEX m_content_docid_idx ON m_content (docid); 



-- 用户表，用于注册、登录、权限管理 
DROP TABLE IF EXISTS m_user CASCADE;
DROP SEQUENCE IF EXISTS m_user_id_seq;
CREATE SEQUENCE m_user_id_seq;
CREATE TABLE m_user
(
	id 			integer NOT NULL DEFAULT nextval('m_user_id_seq'::regclass),
	name		text UNIQUE,
	password	text,
	CONSTRAINT m_user_pkey PRIMARY KEY (id)
);
CREATE INDEX m_user_name_idx ON m_user (name); 



INSERT INTO m_doc (name, userid) VALUES ('PKG-INFO', 1);
INSERT INTO m_user (name, password) VALUES ('hhj', '123');
INSERT INTO m_content (docid, english, need) VALUES 
(1, '<span class="Dd">FreeBSD系统管理员手册</span>', false),
(1, '<b class="Sh">名称</b>', false),
(1, '<b class="Nm">pkg info</b><span class="Nd"> - display information for packages</span>', false),
(1, '<b class="Sh">命令提纲</b>', false),
(1, '<b class="Nm">pkg info</b> <i class="Ar">pkg-name</i>', false),
(1, '<b class="Nm">pkg info</b> <b class="Fl">-a</b>', false),
(1, '<b class="Nm">pkg info</b> [<b class="Op_Fl">-AbBDdefIklOpqRrs</b>] [<b class="Op_Fl">-Cgix</b>] <i class="Ar">pkg-name</i>', false),
(1, '<b class="Nm">pkg info</b> [<b class="Op_Fl">-AbBDdfIlpqRrs</b>] <b class="Fl">-F</b><i class="Fl__Ar"> pkg-file</i>',false),
(1, '<b class="Nm">pkg info</b> <i class="Ar">pkg-name</i>', false),
(1, '<b class="Nm">pkg info</b> <b class="Cm">--all</b>',false),
(1, '<b class="Nm">pkg info</b><b class="Op_Cm">[--{annotations,provided-shlibs,required-shlibs}</b>]', false),
(1, '<b class="Op_Cm">[--{pkg-message,dependencies,exists,full,comment,locked}</b>]',false),
(1, '<b class="Op_Cm">[--{list-files,by-origin,quiet,prefix,raw,required-by,size}</b>]',false),
(1, '<b class="Op_Cm">[--{case-sensitive,glob,case-insensitive,regex}</b>] <i class="Ar">pkg-name</i>',false),
(1, '<b class="Nm">pkg info</b><b class="Op_Cm"> [--{annotations,provided-shlibs,required-shlibs}</b>]', false),
(1, '<b class="Op_Cm">[--{pkg-message,dependencies,full,comment,list-files}</b>]',false),
(1, '<b class="Op_Cm">[--{quiet,prefix,raw,required-by,size}</b>] <b class="Cm">--file</b><i class=".Cm__Ar"> pkg-file</i>',false),
(1, '<b class="Op_Fl">[--raw-format</b><i class="Op_Fl_Ar"> format</i>]',false),




(1, '<b class="Sh">命令简述</b>', false),
(1, '<b class="Nm">pkg info</b><span class="en">is used for displaying information for packages.</span>', true),
(1, '<b class="Sh">命令选项</b>', false),
(1, '<span class="en">The following options are supported by <b class="Nm">pkg info</b></span>', false),
(1, '<b class="It_Fl">-a</b>, <b class="It_Fl_ass_Cm"> --all</b>', false),
(1, '<span class="en">Display all installed packages.</span>', true),
(1, '<b class="It_Fl">-A</b>, <b class="It_Fl_ass_Cm"> --annotations</b>', false),
(1, '<span class="en">Display any annotations added to the package.</span>', true),
(1, '<b class="It_Fl">-C</b>, <b class="It_Fl_ass_Cm"> --case-sensitive</b>', false),
(1, '<span class="en">Make the standard or the regular expression <b class="Fl">-( x )</b> matching against <i class="Ar">pkg-name</i> case sensitive.</span>', true);



