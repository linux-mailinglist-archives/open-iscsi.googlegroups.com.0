Return-Path: <open-iscsi+bncBC24JGEJRMKRBVWT4LYAKGQEJUKX5BI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4AB1373EA
	for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 17:44:07 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id 24sf1537317qka.16
        for <lists+open-iscsi@lfdr.de>; Fri, 10 Jan 2020 08:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Luwuy3cuQnIeax1LsfNWdde0Aza32I/O70smbBjKgK8=;
        b=krtW43ERQnY+T3YGSAMLdsleK4Wt/x5qvHpDRbAwjrrbSmkfaf9l8C3nXL68VRVBKQ
         Mhb+I9CS+kEC2E28HQygUGkmuggwgg8e8KuzG6XXWP3FsT17uRGJMAmVOtrTuN76bohi
         ChmRlXt3UpyOkUxoDtFiSUNovBf0Ke0DmOOB9Lq+uYKQzAalXIpvn9I7QQmomKCvl0tM
         2kafkKj5g1B7JCWMh5EbC/s3s+mKG2B5FaDq8uJ6c6xaCBWIL00K+es7p377n6GKGL22
         xYq2PaytVJ+Fi4Y+iczEdoXbe3LMQsdsBVoAeZvT0BF9D8IoqoJVSGGKLbPoSkTqA1lN
         hzUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Luwuy3cuQnIeax1LsfNWdde0Aza32I/O70smbBjKgK8=;
        b=PKAtzZfhkIpT8JOitpPXUPS1rMmU/PcAHQQruqbBhghzDOBRHctuzncFhmEvQ+iAho
         pQrL+p41zUbqHCFL/IgGh3OR3RfXdZ+RMIrjkewL2LVui7nsZkvVPJtCvGv8rSdeWmAv
         ivjpHeNupt5YlikVxN5naZV9JZmOEIX1T1ms/LyA/HoBITsgv27X1Jv6VZun2nZzS2OJ
         OgiePeGIxFGYFNN40R/VIpZhx/IlCDaQPSKMLgJEehaStGtdNFteH/nSMjEv8dzPJOUN
         RKkhHbzGQL3SaLcvE9KVN8PWYUmIEm+e6mvGq01qtvSf2js0BD3dr3qXnL1DpqXz/mL6
         YgKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Luwuy3cuQnIeax1LsfNWdde0Aza32I/O70smbBjKgK8=;
        b=TbsxFYKhZE78+2zT6ZmKyAViKslHjhoTf9SVriKG9ZtctG/TkZA99VyvO/LXvCLVq5
         Op7XE0Wiu2ZI5kCoOGwTGbD/FuYzx/noPmI7QGkVA4DMzWIjHc3yubA1qP2F/mryewvl
         z/A9VFZE9b/yoim5lXDmm+GoL8X8NvQOtJ4s0hTTx7330ACQLHuzqnI5k0tPAc6fPSNI
         LVgN6IbYGw8rh7stM+IsbqmFvDzQEA3KEPfmN1A50jyICFNXCD0D/ZNWIHGofg4ZIrwA
         srCf98RLTHMTlXp7EuEkDWrj3MzTh8H0wZ0OXPUeKb9V9Y0XP+ktdoOfNnGLGk3tQ1N8
         vrIw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXnU1o5hYnkKEpjkWeZy2uoa/KcdCCWgXgUs7Uew2DUYmky1ab7
	OT6FHEPG0U6RaNTfKVPL7R8=
X-Google-Smtp-Source: APXvYqwEa8/FceYci/Rt2o1KWJ3+l6oEyktV466aQPVT16vkgPz1w+d9cCDs1ZIRTk1HWNg4KRfnMA==
X-Received: by 2002:ad4:4e6b:: with SMTP id ec11mr3523336qvb.149.1578674646139;
        Fri, 10 Jan 2020 08:44:06 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:279b:: with SMTP id a27ls1644710qtd.9.gmail; Fri, 10 Jan
 2020 08:44:05 -0800 (PST)
X-Received: by 2002:ac8:2b26:: with SMTP id 35mr3212275qtu.341.1578674645660;
        Fri, 10 Jan 2020 08:44:05 -0800 (PST)
Date: Fri, 10 Jan 2020 08:44:04 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1306f306-ef08-4e79-b98a-6d1e6ee42f25@googlegroups.com>
In-Reply-To: <1116889886.16262.47.camel@beastie>
References: <000c01c55fd9$36d18590$03031eac@ivivity.com>
 <1116889886.16262.47.camel@beastie>
Subject: Re: how it works
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_842_1175141637.1578674644994"
X-Original-Sender: Italienisch1987@gmail.com
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

------=_Part_842_1175141637.1578674644994
Content-Type: multipart/alternative; 
	boundary="----=_Part_843_1653468388.1578674644994"

------=_Part_843_1653468388.1578674644994
Content-Type: text/plain; charset="UTF-8"


Hi,


-  Question 1: The kernel still contains 2 files?
-  Question  2:  Do we still have those diagrams available online?


On Tuesday, May 24, 2005 at 1:11:26 AM UTC+2, Dmitry Yusupov wrote:
>
> On Mon, 2005-05-23 at 16:51 -0400, Eddy Quicksall wrote: 
> > Is there an explanation someplace as to how the iSCSI initiator works? 
> > e.g., the meaning of each .c file, an explanation of each function. 
>
> open-iscsi/linux kernel part contains of two C-files: 
>
> - scsi_transport_iscsi.c 
>
>         SCSI transport class implements iSCSI sysfs abstraction, transport 
> API 
> and user/kernel NETLINK IPC. 
>
> - iscsi_tcp.c 
>
>         implements data-path mover over TCP/IP. Uses zero-copy PDU 
> processing, 
> sendfile-like receive and sendpages-like transmit. Very optimized. 
>
> userspace stuff... who cares how many C-files in there? 
>
> there are some diagrams on http://www.open-iscsi.org 
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1306f306-ef08-4e79-b98a-6d1e6ee42f25%40googlegroups.com.

------=_Part_843_1653468388.1578674644994
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi,<div><br><br>-=C2=A0 Question 1: The kernel still c=
ontains 2 files?<br>-=C2=A0 Question=C2=A0 2:=C2=A0 Do we still have those =
diagrams available online?<br><br><br>On Tuesday, May 24, 2005 at 1:11:26 A=
M UTC+2, Dmitry Yusupov wrote:<blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">=
On Mon, 2005-05-23 at 16:51 -0400, Eddy Quicksall wrote:
<br>&gt; Is there an explanation someplace as to how the iSCSI initiator wo=
rks?
<br>&gt; e.g., the meaning of each .c file, an explanation of each function=
.
<br>
<br>open-iscsi/linux kernel part contains of two C-files:
<br>
<br>- scsi_transport_iscsi.c
<br>
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0SCSI transport class im=
plements iSCSI sysfs abstraction, transport API
<br>and user/kernel NETLINK IPC.
<br>
<br>- iscsi_tcp.c
<br>
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0implements data-path mo=
ver over TCP/IP. Uses zero-copy PDU processing,
<br>sendfile-like receive and sendpages-like transmit. Very optimized.
<br>
<br>userspace stuff... who cares how many C-files in there?
<br>
<br>there are some diagrams on <a href=3D"http://www.open-iscsi.org" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.goo=
gle.com/url?q\x3dhttp%3A%2F%2Fwww.open-iscsi.org\x26sa\x3dD\x26sntz\x3d1\x2=
6usg\x3dAFQjCNGE7Xq9g8OBP9T_dK7GIejCTTncQQ&#39;;return true;" onclick=3D"th=
is.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fwww.open-iscsi.o=
rg\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGE7Xq9g8OBP9T_dK7GIejCTTncQQ&#39=
;;return true;">http://www.open-iscsi.org</a>
<br>
<br></blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1306f306-ef08-4e79-b98a-6d1e6ee42f25%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/1306f306-ef08-4e79-b98a-6d1e6ee42f25%40googlegroups.com</a>.<b=
r />

------=_Part_843_1653468388.1578674644994--

------=_Part_842_1175141637.1578674644994--
