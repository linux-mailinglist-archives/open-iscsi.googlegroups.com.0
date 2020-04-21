Return-Path: <open-iscsi+bncBDLINFGG5UCBBTOC7L2AKGQEAYD2THY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3081B1FE1
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 09:31:26 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id g63sf13171664qkd.7
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 00:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RcNcuzSqIJDKm2gNMpOjFoXvH4Ut82ruSCLa1prbqYM=;
        b=fFYm0hp+DlrLc4dHqPUHMxeZdDfdkv+97587rMlno8D4zRaNHenyenHqV4WRnbAd0w
         l3zo7jyDyaKshmEWKCdeme0ztEsQL6+0ljSQo/J3DanJQhj2gk/SG+QG2zRRGopSE6HZ
         DhbwdRp3MS3m3NNUKIR3NQ/3OTMVvWG1CZmB5yYiZoUGHajt3SxEA4QEsCm018EQgK99
         Xctep2WKMn/HEEkH+4O//AmwBQBI21C6TBr5mmVxfp8e3FKlQhP+++pUSO86gIrLkIei
         s4kq8yOhj6HNpthEP2OBBEjgSirOv8dk9iJMpKhlWxKxRzWnsXck9XF6wRPv+vLZKiNy
         jBjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RcNcuzSqIJDKm2gNMpOjFoXvH4Ut82ruSCLa1prbqYM=;
        b=LzcyvFXQyQpW+6w2zQxLmbqssRJVTuoW34eLcwSYeOaFS9w7Fwq9QoWYkhRCqmfev2
         j43BrVtyKaLYrRHV9GJathsGH/tb8+Dw0s9wxCy5rBcu+fjmgdnvPbCntPY6lkuNsxhK
         3bOzkv1UQk54Ex/c59GANiSZzp9tFKS46ZDEYf+/kknO6cuTzO5B7EJ5eBnLNuGwjC1l
         jMSS9r85nXYo/oJi0zEyiVQFIUku96sS69qp4OE8uRDRWj2N6vQ2S1RVeVG1m+YQyfNL
         KeR8LbSAVYO8t/Ts5ki0QFHPyvcyAhMN7Z+GcgWiC6DbpX9CDJbK7fHdac4IDDsheD1g
         4v+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RcNcuzSqIJDKm2gNMpOjFoXvH4Ut82ruSCLa1prbqYM=;
        b=ZpHCN9885bJiOFyIwpxOA9q2U1eU7pBa5anmy1WRPea8YOGQoFZkVRQpKZ3JFfWCQf
         AbZxNOtwIextlAOvHMRb4GfXSsO7yTrr29b8iaHwCqGWKdkWwUT44A6nQONhszg9mn52
         7rqy3uCF5/JDg5burh0k7Tpkov1RrC1ChJXq5oyI8HTnMlFXWe/qCZMCocvVZB38Z43m
         J9yKwxyOpbRry55jzgXyrRehxmNVakyhV+zUEi10/yzA6TOl/ccY6HagPICzBuirJ23X
         xrT+vNXZuK4B93RdErUi0OPyteguDBGs3ccLMT5XQh3oRQt71+JNv6b2z6YTFNvR8EkZ
         m3kQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYfE40bPQsk4eXV5UuY4rs1bqM7XTAx9PuS9mRxfE2VnOF2sLZD
	I3JwRLkhOICT3GLSB9RHm8A=
X-Google-Smtp-Source: APiQypKqAp5cqwdC2lbj1/NtzT+7hSJdMt0AYIDx7TwcO2qNsbknVRosMEfDmhkxNLqXM3d61xX8wg==
X-Received: by 2002:ad4:45f0:: with SMTP id q16mr19282090qvu.89.1587454285461;
        Tue, 21 Apr 2020 00:31:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b3d4:: with SMTP id b20ls4330179qvf.11.gmail; Tue, 21
 Apr 2020 00:31:25 -0700 (PDT)
X-Received: by 2002:a0c:f34b:: with SMTP id e11mr15675487qvm.76.1587454284898;
        Tue, 21 Apr 2020 00:31:24 -0700 (PDT)
Date: Tue, 21 Apr 2020 00:31:24 -0700 (PDT)
From: Gionatan Danti <gionatan.danti@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
Subject: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_994_2566253.1587454284398"
X-Original-Sender: gionatan.danti@gmail.com
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

------=_Part_994_2566253.1587454284398
Content-Type: multipart/alternative; 
	boundary="----=_Part_995_1128437079.1587454284398"

------=_Part_995_1128437079.1587454284398
Content-Type: text/plain; charset="UTF-8"

[reposting, as the previous one seems to be lost]

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

I can read here that, years ago, a patch was in progress to give better 
integration with udev when a device disconnects/reconnects. Did the patch 
got merged? Or does the one I described above remain the expected behavior? 
Can be changed?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.com.

------=_Part_995_1128437079.1587454284398
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">[reposting, as the previous one seems to be lost]<br><br>H=
i all,<br>I have a question regarding udev events when using iscsi disks.<b=
r><br>By using &quot;udevadm monitor&quot; I can see that events are genera=
ted when I login and logout from an iscsi portal/resource, creating/destroy=
ing the relative links under /dev/<br><br>However, I can not see anything w=
hen the remote machine simple dies/reboots/disconnects: while &quot;dmesg&q=
uot; shows the iscsi timeout expiring, I don&#39;t see anything about a rem=
oved disk (and the links under /dev/ remains unaltered, indeed). At the sam=
e time, when the remote machine and disk become available again, no reconne=
ction events happen.<br><br>I can read here that, years ago, a patch was in=
 progress to give better integration with udev when a device disconnects/re=
connects. Did the patch got merged? Or does the one I described above remai=
n the expected behavior? Can be changed?<br><br>Thanks.<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.com</a>.<b=
r />

------=_Part_995_1128437079.1587454284398--

------=_Part_994_2566253.1587454284398--
