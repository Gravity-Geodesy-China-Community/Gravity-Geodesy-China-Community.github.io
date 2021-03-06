---
title: 连续重力数据处理
linktitle: 绝对重力数据处理
description: "绝对重力值仪器直接测量得到重力场的绝对值"
date: 2021-02-01
publishdate: 2021-08-19
lastmod: 2021-08-19
categories: [gravity data process]
keywords: []
draft: false
menu:
  docs:
    parent: "gravity-data"
    weight: 40
weight: 40
sections_weight: 40
aliases: []
toc: false
---

{{% note "Rendering Local Files" %}}
连续重力一般指相对重力连续测量
{{% /note %}}

The `.File` object contains the following fields:

.File.Path
: the original relative path of the page, relative to the content dir (e.g., `posts/foo.en.md`)

.File.LogicalName
: the name of the content file that represents a page (e.g., `foo.en.md`)

.File.TranslationBaseName
: the filename without extension or optional language identifier (e.g., `foo`)

.File.ContentBaseName
: is a either TranslationBaseName or name of containing folder if file is a leaf bundle.

.File.BaseFileName
: the filename without extension (e.g., `foo.en`)

.File.Ext
: the file extension of the content file (e.g., `md`); this can also be called using `.File.Extension` as well. Note that it is *only* the extension without `.`.

.File.Lang
: the language associated with the given file if Hugo's [Multilingual features][multilingual] are enabled (e.g., `en`)

.File.Dir
: given the path `content/posts/dir1/dir2/`, the relative directory path of the content file will be returned (e.g., `posts/dir1/dir2/`). Note that the path separator (`\` or `/`) could be dependent on the operating system.

.File.UniqueID
: the MD5-checksum of the content file's path.

[Multilingual]: /content-management/multilingual/

