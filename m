Return-Path: <open-iscsi+bncBC755V5RXMKBBV7F4PYAKGQEAAKAMHQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 421DF1378BA
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 22:55:36 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id f16sf2054277qvr.7
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 13:55:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1aNH0hKm/3OmXP+z3bCWZma3vv22K72fuKW5+TSPuKc=;
        b=F4LBq2O7FmdAM28ZN+MaeSz9GiQroiV0zDKx7P5Rxsw7PopWsSkCnYqcAh0hJFwkiM
         +w1S42wx+xlOKpapxxAJ2308YsZZC8V7vLdJFpCYHKfFj4W5Q0cXDAjhBC3x67ieuY4y
         K8R30vFsQ64K1kpTSOB+7GXWe/zRDqcCs/aTT+/cfU3WeqD1+ywGhkdYJsQ/2CGADp/1
         j6lryWUFpcNXxJ5w36I10agVcv6G4LCl3No7kGoUczYSxTJZcULvdFf/7WivX2pMvJsS
         D2f2wjddKMPZw4fTVFsCTZiBcX8xRiINxIHgh4gpRfwK/ZQNfsB99JlwM1OTMg3u48jY
         ciMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1aNH0hKm/3OmXP+z3bCWZma3vv22K72fuKW5+TSPuKc=;
        b=h+eMGxm20OAmzGrLf972bc1vxbLkrImBVHCtynTlyqbEu61XpCUXnL/YbqmljbUjKZ
         Lat4z9Uv6oWiTT0+4ykjfNl9BWzmm0XkOlrVDip0ck7M7VwQAH0MA5TnXj6w6OMuJ/q0
         1vLPLIne/EfYojSboZpCbAkNRhSqrcdo2PznxOMtMZo+MTUM0617l0rJhWYbkKtc0U/F
         r4pEX+ax3o0PmnQ/naAmRHw+eP7ThQM6xhHmecupNSiz/nhijgQYDJTkIkvVtQKzNigJ
         RVbhbg1amCo/Z+gMQxo4gC01v1t0Qo6OCWWBN7vEpUN/jObaJuiJlVth92+zJ9EnBJ5R
         Nadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1aNH0hKm/3OmXP+z3bCWZma3vv22K72fuKW5+TSPuKc=;
        b=WuZk2yr0+YNQKSInD1xiT6dbjOpTZ/zehmRNE20qoqrqS/xo7dlmsMnRLmZyImhNtw
         q/cMhjrL9OFQUzb5qm7tDKoThm2d80XqumbPJ+2oXdijlup5snxJwVqHwCScrqzOCprd
         +tIGDL8vIrWa3OPe/VEZ+rsddC4TqLFDK373n/p5mceB5S7zRTJir/SZkk407Va7DVIn
         329TCeTLH5eWQn643g/YkzJQUkFGtUI5IIShuCWTKcDmwf4mkgme/C1dC1a/Cdr8wP0A
         j3Ev08U3iRPL8SW1HOhDR+qO5FYmY9oVf0cavaioKC7u4+VmcfAHwmlGt41quW9fWnV+
         I2Lg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUMB+1FHBTlLZXx+W7CYhjKg4tyepK1cykFWbrHKAeNvhcWwIxe
	pGMTbSvHKX0L9guHGrmh1PI=
X-Google-Smtp-Source: APXvYqzQSoC/Wc8P8zGEAzruX9ywCGbGorkagN6hqmx2T1I2bWOndzOnwPjAK4E/S6C+vjQqRhJbqw==
X-Received: by 2002:ac8:425a:: with SMTP id r26mr4353313qtm.138.1578693335304;
        Fri, 10 Jan 2020 13:55:35 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:3262:: with SMTP id y89ls1881135qtd.8.gmail; Fri, 10 Jan
 2020 13:55:34 -0800 (PST)
X-Received: by 2002:ac8:3703:: with SMTP id o3mr597004qtb.208.1578693334860;
        Fri, 10 Jan 2020 13:55:34 -0800 (PST)
Date: Fri, 10 Jan 2020 13:55:34 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <9745153a-66eb-4abb-8628-23e2ba1b28fd@googlegroups.com>
In-Reply-To: <1306f306-ef08-4e79-b98a-6d1e6ee42f25@googlegroups.com>
References: <000c01c55fd9$36d18590$03031eac@ivivity.com>
 <1116889886.16262.47.camel@beastie>
 <1306f306-ef08-4e79-b98a-6d1e6ee42f25@googlegroups.com>
Subject: Re: how it works
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_908_560971668.1578693334178"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_908_560971668.1578693334178
Content-Type: multipart/alternative; 
	boundary="----=_Part_909_855664009.1578693334178"

------=_Part_909_855664009.1578693334178
Content-Type: text/plain; charset="UTF-8"

On Friday, January 10, 2020 at 8:44:05 AM UTC-8, Bobby wrote:
>
>
> Hi,
>
>
> -  Question 1: The kernel still contains 2 files?
> -  Question  2:  Do we still have those diagrams available online?
>
>
> The kernel has many files, but those two files are still present for 
open-iscsi. If you look in drivers/scsi/*iscsi*.[ch], each of those files 
are either initiator or target files.

I don't know what diagrams were around in the past, but we no longer have 
any on the web page, which is hosted by github now. A simple google of 
"open-iscsi architecture diagrams" yields quite a few pictures, though, 
such as this one: 
https://www.researchgate.net/figure/General-iSCSI-architecture_fig1_221396996

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/9745153a-66eb-4abb-8628-23e2ba1b28fd%40googlegroups.com.

------=_Part_909_855664009.1578693334178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, January 10, 2020 at 8:44:05 AM UTC-8, Bobby wro=
te:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr"><br>Hi,<di=
v><br><br>-=C2=A0 Question 1: The kernel still contains 2 files?<br>-=C2=A0=
 Question=C2=A0 2:=C2=A0 Do we still have those diagrams available online?<=
br><br><br></div></div></blockquote><div>The kernel has many files, but tho=
se two files are still present for open-iscsi. If you look in drivers/scsi/=
*iscsi*.[ch], each of those files are either initiator or target files.</di=
v><div><br></div><div>I don&#39;t know what diagrams were around in the pas=
t, but we no longer have any on the web page, which is hosted by github now=
. A simple google of &quot;open-iscsi architecture diagrams&quot; yields qu=
ite a few pictures, though, such as this one: <a href=3D"https://www.resear=
chgate.net/figure/General-iSCSI-architecture_fig1_221396996">https://www.re=
searchgate.net/figure/General-iSCSI-architecture_fig1_221396996</a><br></di=
v></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9745153a-66eb-4abb-8628-23e2ba1b28fd%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/9745153a-66eb-4abb-8628-23e2ba1b28fd%40googlegroups.com</a>.<b=
r />

------=_Part_909_855664009.1578693334178--

------=_Part_908_560971668.1578693334178--
