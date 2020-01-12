Return-Path: <open-iscsi+bncBCEJDZGXJAIMXHXK6ACRUBDZ3GILU@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 711B91384A3
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:15:25 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id m30sf4292884qtb.2
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+F1+V+48oMTn0YXmXrvNmRVrExjLdglZSxbGfuO7SYc=;
        b=GUmitgwdCV7J6cOzvwCmN7pisfBjsiKpdvE+m0NbUrQiiRQOOfXUAbJbehIQ9SXfbA
         Vfuk0f2f9yjJrD4LyDbL4x5vVbMKeNxgsSm4KBHtadxyYtZSVUSvBMKOpOZ1KHQ+J//A
         Cku+7BNH94SUHn/HBdmO2VH4rbb1Cv04g5TIM3yzScSwqu1mWBfIlnSXuzhVRUGW2fYH
         G7uU8IMGaQkoZ7x5Rdqro+dOGuQnVcogy4mNmjOT9mH74TRVUoysGLckbiaeELBfQsCz
         q55/+BJ/Utu04c0mpli7JsyiSDdj/bxQa10M3mOC/ff6ulKlnafg2ebqZLMsy4YlTz73
         q+8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+F1+V+48oMTn0YXmXrvNmRVrExjLdglZSxbGfuO7SYc=;
        b=E+hmaKagtNitzT6HJXGD5ZS1tqg7+i3nvR0HQcwRceqQJPHseqzitxXux6DaIHc9gT
         B1MXVW8ZEHzDp6/XBX4dfxifSaKPsy3gWNu//ecGCiMzYhXlu70x1q6TTkn6vNyo+Tco
         h7N0MADBL0T2xj5p748c0/96dESiiRCBrc+OoTNUeSW+/OkYI24du71EtTYrxs06q/lT
         cj2odMoJFSKQYd4pjABAUObp46uXl0tV2QZoza+SLp5uJyawA0wEOYS6mekN/KvGUjPs
         pmVU51ZVNAFL+as5beUWORuF8s4TtNcE3JwT1EhXBununE/vhDwAZaGmNHkO1rl8Qi8O
         eDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+F1+V+48oMTn0YXmXrvNmRVrExjLdglZSxbGfuO7SYc=;
        b=tKBVYyCkADEgyYZAcVH8EyBmgKrjwYOQ+9nqjQt4ZR3OcLwbGnpeMK2WMYdCcLMGzH
         fvviCYJk9zrdT1FIbeJcUobzm8s8rBQvCS7ssX2geAmto4lWVUQ2orlHB3dJ6BKcWIeS
         4eng5KzstRvFJ1LDIifWDqK6WtNQp9JsJR3R5SKG8wrwDxLOpmfWsDMnY9qvGpls+/tO
         Ct/4tYjqvmADtblxgteTd7DownMy6lMv48qZUbQEpPOxejbsKcHprV0XFjb3+TRmJYeI
         8kbLPN5yGc08aZjd9R1HG5wOy+TKIjwbQ/vnCIdtQuNVYn+f7fkAogYLYLZck49+jsAo
         xeMg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVQvoTOywVFyFgTslNZAsb3ict7v7Dw0vHn6LGhik2mTXZvNOoy
	nw2bFVBo9M4XIMeocJsTeOE=
X-Google-Smtp-Source: APXvYqyK//qURTBxAm7iOWaCycEPI6Bse8dwNp3RboBY33NeJ0a8xTz0n0UgVmtIr3Sm/VixR0Yd6g==
X-Received: by 2002:ac8:76d0:: with SMTP id q16mr9272542qtr.24.1578798924007;
        Sat, 11 Jan 2020 19:15:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:1246:: with SMTP id a6ls182811qkl.5.gmail; Sat, 11
 Jan 2020 19:15:23 -0800 (PST)
X-Received: by 2002:a37:ae07:: with SMTP id x7mr10388896qke.28.1578798923523;
        Sat, 11 Jan 2020 19:15:23 -0800 (PST)
Date: Sat, 11 Jan 2020 19:15:22 -0800 (PST)
From: can zhu <zhucan.k8s@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <6769914f-f770-495b-886e-7dcc5569274d@googlegroups.com>
In-Reply-To: <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com>
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
 <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
 <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com>
Subject: Re: Who know more about this issue for iscsid?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1335_1466597429.1578798923028"
X-Original-Sender: zhucan.k8s@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1335_1466597429.1578798923028
Content-Type: multipart/alternative; 
	boundary="----=_Part_1336_1156321671.1578798923028"

------=_Part_1336_1156321671.1578798923028
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hmmm, I use the default config, I hadn't do other sets for it.

=E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E6=97=A5 UTC=
+8=E4=B8=8A=E5=8D=8811:13:31=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=9A
>
> On Jan 11, 2020, at 7:41 AM, can zhu <zhuc...@gmail.com <javascript:>>=20
> wrote:
>
>
> I did not set the auth.
>
>
> Please share how your systems is configured. Did you set up your targets?
>
> Assuming you set up your targets, and they are on targetcli, can you shar=
e=20
> your configuration file?
>
> Also, can you ensure you have no auth set up on your initiator?
>
> =E2=80=94=20
> Lee
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/6769914f-f770-495b-886e-7dcc5569274d%40googlegroups.com.

------=_Part_1336_1156321671.1578798923028
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hmmm, I use the default config, I hadn&#39;t do other sets=
 for it.<br><br>=E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=
=9F=E6=97=A5 UTC+8=E4=B8=8A=E5=8D=8811:13:31=EF=BC=8CThe Lee-Man=E5=86=99=
=E9=81=93=EF=BC=9A<blockquote class=3D"gmail_quote" style=3D"margin: 0;marg=
in-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div style=
=3D"word-wrap:break-word;line-break:after-white-space">On Jan 11, 2020, at =
7:41 AM, can zhu &lt;<a href=3D"javascript:" target=3D"_blank" gdf-obfuscat=
ed-mailto=3D"T38xiTb2DwAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39=
;javascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39=
;;return true;">zhuc...@gmail.com</a>&gt; wrote:<br><div><blockquote type=
=3D"cite"><br><div><div dir=3D"ltr" style=3D"font-family:Helvetica;font-siz=
e:12px;font-style:normal;font-weight:normal;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;text-decoration:none">I did not set the auth.<br><br></div></div></blo=
ckquote><br></div><div>Please share how your systems is configured. Did you=
 set up your targets?</div><div><br></div><div>Assuming you set up your tar=
gets, and they are on targetcli, can you share your configuration file?</di=
v><div><br></div><div>Also, can you ensure you have no auth set up on your =
initiator?</div><div><br></div><div>=E2=80=94=C2=A0</div><div>Lee</div><div=
><br></div><br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/6769914f-f770-495b-886e-7dcc5569274d%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/6769914f-f770-495b-886e-7dcc5569274d%40googlegroups.com</a>.<b=
r />

------=_Part_1336_1156321671.1578798923028--

------=_Part_1335_1466597429.1578798923028--
