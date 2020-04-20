Return-Path: <open-iscsi+bncBDLINFGG5UCBBSM67T2AKGQEO7F35BI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD911B2B03
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 17:20:43 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id g63sf14406510qkd.7
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 08:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NAfjm0IgylE8/rPexk9CVxCytt1MH7mLEipXnVqRHVs=;
        b=NEKyWYUDsZZyWvMGF8BirUTJP/EouCscd2yKRxrgqBFGAADy9WRFJKKPWvSBJySiUi
         /kNePoxTGsmFkb4SHjBGT5XOxQBAj/AfD588paq+oTNmt90Zc542F824lGp1ldycme0R
         k+A5dv+ZlAQf7di8UrqH1cmWTvqSmhqDDgNdOSed5oGv8iC/FpVjrWIRAXC6zqtcZ5eH
         fht/G0qFBy61afmUsEyVUrotHtSeL3PglpVY/jgCpS7OEvgKlzprtpyD2k2mR5+Is+uv
         Gr0Ft0yvdWHeeNftR3SkrjIzLDFErZqMw6mR9pBnD2g+KCtyJYWLy3T0upeRHSe7whGB
         QDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NAfjm0IgylE8/rPexk9CVxCytt1MH7mLEipXnVqRHVs=;
        b=QwUQA/veawz4puYC1BIsOCMjgtIDCILta+fbYeDAyBifpm54pdfNYtQSQKtBUJOu7+
         k1Pq/90Mmsu0KywdzJiyHtQdThE/SXQQxVLsKWvT6B/X6Wg+I9kkUX+eql01lM5Ckz4N
         hiOaAAoDA96EGJd86SoB56zMjebAE2fFsB7KdBwy4nfmyu2yEokUfsc2zXO050x5wC5L
         ev8z45bOR0IdUEMCzAjvY7BoXHca3cXtOIDOF55C29xXh8ViFZmDKHJo+kvO7cTRBj9R
         etN07pdrSsaF9PiZOvMwQV+8mBtqqDtCbhBB9QLzx1+XRkbWbb0UHenf06AmZmjqztXv
         F45g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuaHpV0xif8ee5Ne0GJdgWxTGhVhDjKmIzy/0ZcyDACwU7zgQnAl
	HznJZXmJdeWcqj0x4nBKld8=
X-Google-Smtp-Source: APiQypLReKY2dqg2Cuf9sWYv2A9LttgIfIzeEmaB6TjlwZtp4bbbGDQ/dReO1hw2fg5ACBG3hoT6gQ==
X-Received: by 2002:a37:451:: with SMTP id 78mr22084966qke.376.1587482441800;
        Tue, 21 Apr 2020 08:20:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:504:: with SMTP id v4ls4186545qvw.2.gmail; Tue, 21
 Apr 2020 08:20:41 -0700 (PDT)
X-Received: by 2002:ad4:4e65:: with SMTP id ec5mr11471990qvb.32.1587482441133;
        Tue, 21 Apr 2020 08:20:41 -0700 (PDT)
Received: by 2002:ae9:e8c3:0:0:0:0:0 with SMTP id a186msqkg;
        Mon, 20 Apr 2020 12:57:45 -0700 (PDT)
X-Received: by 2002:a05:620a:22a4:: with SMTP id p4mr4244691qkh.459.1587412664943;
        Mon, 20 Apr 2020 12:57:44 -0700 (PDT)
Date: Mon, 20 Apr 2020 12:57:44 -0700 (PDT)
From: gionatan.danti@gmail.com
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <efc571ca-92db-4f58-a8a5-cff9a33dee98@googlegroups.com>
Subject: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1785_770781077.1587412664760"
X-Original-Sender: gionatan.danti@gmail.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_1785_770781077.1587412664760
Content-Type: multipart/alternative; 
	boundary="----=_Part_1786_1446075799.1587412664760"

------=_Part_1786_1446075799.1587412664760
Content-Type: text/plain; charset="UTF-8"

Hi all,
I have a question regarding udev events when using iscsi disks.

By using "udevadm monitor" I can see that events are generated when I login 
and logout from an iscsi portal/resource, creating/destroying the relative 
links under /dev/

However, I can not see anything when the remote machine simple 
dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expiring, I 
don't see anything about a removed disk (and the links under /dev/ remains 
unaltered, indeed). At the same time, when the remote machine and disk 
become available again, no reconnection events happen.

I read a quite old thread here 
<https://groups.google.com/d/msg/open-iscsi/uN0jFsT1TI8/KD7rEHhrO5sJ> were 
it was stated that a patch to better integrate iscsi with udev events was 
in progress. Did something changed/happened during these years? Is the 
behavior I observed (and described above) to be expected?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/efc571ca-92db-4f58-a8a5-cff9a33dee98%40googlegroups.com.

------=_Part_1786_1446075799.1587412664760
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"box-sizing: border-box; color: rgb(44, 54, =
58); font-family: monospace; font-size: 14px; white-space: nowrap;">Hi=C2=
=A0all,</span><br style=3D"box-sizing: border-box; color: rgb(44, 54, 58); =
font-family: monospace; font-size: 14px;"><span style=3D"box-sizing: border=
-box; color: rgb(44, 54, 58); font-family: monospace; font-size: 14px; whit=
e-space: nowrap;">I=C2=A0have=C2=A0a=C2=A0question=C2=A0regarding=C2=A0udev=
=C2=A0events=C2=A0when=C2=A0using=C2=A0iscsi=C2=A0disks.</span><br style=3D=
"box-sizing: border-box; color: rgb(44, 54, 58); font-family: monospace; fo=
nt-size: 14px;"><br style=3D"box-sizing: border-box; color: rgb(44, 54, 58)=
; font-family: monospace; font-size: 14px;"><span style=3D"color: rgb(44, 5=
4, 58); font-family: monospace; font-size: 14px;">By using &quot;udevadm mo=
nitor&quot; I can see that events are generated when I login and logout fro=
m an iscsi portal/resource, creating/destroying the relative links under /d=
ev/</span><br style=3D"box-sizing: border-box; color: rgb(44, 54, 58); font=
-family: monospace; font-size: 14px;"><br style=3D"box-sizing: border-box; =
color: rgb(44, 54, 58); font-family: monospace; font-size: 14px;"><span sty=
le=3D"color: rgb(44, 54, 58); font-family: monospace; font-size: 14px;">How=
ever, I can not see anything when the remote machine simple dies/reboots/di=
sconnects: while &quot;dmesg&quot; shows the iscsi timeout expiring, I don&=
#39;t see anything about a removed disk (and the links under /dev/ remains =
unaltered, indeed). At the same time, when the remote machine and disk beco=
me available again, no reconnection events happen.</span><br><div><span sty=
le=3D"color: rgb(44, 54, 58); font-family: monospace; font-size: 14px;"><br=
></span></div><div><span style=3D"color: rgb(44, 54, 58); font-family: mono=
space; font-size: 14px;">I read a quite old thread <a href=3D"https://group=
s.google.com/d/msg/open-iscsi/uN0jFsT1TI8/KD7rEHhrO5sJ">here</a>=C2=A0were =
it was stated that a patch to better integrate iscsi with udev events was i=
n progress. Did something changed/happened during these years? Is the behav=
ior I observed (and described above) to be expected?</span></div><div><span=
 style=3D"color: rgb(44, 54, 58); font-family: monospace; font-size: 14px;"=
><br></span></div><div><span style=3D"color: rgb(44, 54, 58); font-family: =
monospace; font-size: 14px;">Thanks.</span></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/efc571ca-92db-4f58-a8a5-cff9a33dee98%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/efc571ca-92db-4f58-a8a5-cff9a33dee98%40googlegroups.com</a>.<b=
r />

------=_Part_1786_1446075799.1587412664760--

------=_Part_1785_770781077.1587412664760--
