Return-Path: <open-iscsi+bncBC755V5RXMKBBB767T2AKGQEQ7P2UII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id F278E1B2F6C
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 20:44:24 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id g63sf15074746qkd.7
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 11:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TJpglFjOUnZuZ20t2t2mdz0dwKcCp9Ob0Xfv5SOVZRM=;
        b=ncMyD0iT+Z31LzDRg8BDgWB/TqgqPtpex5A7hJxfxEr3r8N8pmBUuXuBpeCjPlff7K
         0HpbCTV1PkF5IEBnanUIDk0R9qDKsSdBWIlDwoa6GXPCamUnVAWYVtmfgZ/Z1AO3LLih
         /+7BJn8ov6EOEnY8Kdx6ifONHRWJ4Auqo7u9T6f7WsciuYzAcgzN0/QPVl6pdlOrR5qv
         Be2bmj2bEEArK/LamOr+EaERfibGlRiSIWF+/8J5krI2yW+ljs4jaAYI9r5MGPgi8gYv
         Bk9EDsvLXG0yRErdirgFO0JJRJ5vF/xqguJKCtnTGMwgLTnpGgWRJw2TNXi8ZgXN6yhl
         usFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TJpglFjOUnZuZ20t2t2mdz0dwKcCp9Ob0Xfv5SOVZRM=;
        b=HEY55KzLrRDkHL3obpddGjz/yOYkvgZh46f2ub2AmHX7KW50ixPxUB77NcTFxZkRD9
         OhXj3eYCw+eXSax3y2m8goeMsrENoRNvl/oaJmFATj2v1u8UYMKRUMKTxCQbwFLsC2GG
         JhA5ApFWF69Al1iK3Xr7LaL/jx4bdWPIT0rFiCjbMnKBEaQ7eStxzHr50nWva7K0L08I
         S2f5miDs2LfrJ39gqUvULDEzVEmByXBzRyvJCKyxawJX4Jkm8bVJdlyCczCASjwDGegG
         0OUkdu1jw9HXHPOygTdn3GiVvQQtkw22jmcmCqg4LDdADgMtrd57MT/Q7oiz/4L96YrY
         eJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TJpglFjOUnZuZ20t2t2mdz0dwKcCp9Ob0Xfv5SOVZRM=;
        b=ulzQPV5uLxNo97GJrhX7gH47CjKH40eWFR04yk7thzJMU/krmKEUdDJyJuoRWfy3FN
         9PT+O3MwPNsa9+vbkD+9XZR6IuUUvX1tyUsQnzpsl2EE0v99IaVk96ERb+NZVKkLE5yk
         Ux66MnNIO5DRcnq7Eu1n0RBlSV6cPBLdmyDJ9Q00p/clTKO51zh6ZRBCiWvyeEN43QcZ
         GUAmlJHdUDvzo79MOSv5z26G9usxVq3hShNd9Atu+UAKurMYfex617ArawXZJU85cEdb
         sz36Ip4DpBsCl5SGqsYAH/4KqeiGX5it5bqpuCyxcPxOfFzIZExIxS+OBsSNHaaLUBiD
         FuNQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZiAlfzfraZeq7ZsUEFZtDNc1rpuObDHMLJUQYrs7r+27CbpmWQ
	FT1tol0TKJ8D3rpT/Xghn3o=
X-Google-Smtp-Source: APiQypINzCz6P8nSwRhjzzVOCe6IJfOeCFd/1vtw01Fb616r67wdOhRZ5GG7hVWfNklm8tjIqpz0XA==
X-Received: by 2002:ac8:1a2b:: with SMTP id v40mr22748468qtj.170.1587494663779;
        Tue, 21 Apr 2020 11:44:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:528b:: with SMTP id v11ls4907214qvr.9.gmail; Tue, 21 Apr
 2020 11:44:23 -0700 (PDT)
X-Received: by 2002:a0c:9e68:: with SMTP id z40mr20995091qve.242.1587494663234;
        Tue, 21 Apr 2020 11:44:23 -0700 (PDT)
Date: Tue, 21 Apr 2020 11:44:22 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
In-Reply-To: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
Subject: Re: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2350_1321772124.1587494662380"
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

------=_Part_2350_1321772124.1587494662380
Content-Type: multipart/alternative; 
	boundary="----=_Part_2351_979993503.1587494662381"

------=_Part_2351_979993503.1587494662381
Content-Type: text/plain; charset="UTF-8"

On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wrote:
>
> [reposting, as the previous one seems to be lost]
>
> Hi all,
> I have a question regarding udev events when using iscsi disks.
>
> By using "udevadm monitor" I can see that events are generated when I 
> login and logout from an iscsi portal/resource, creating/destroying the 
> relative links under /dev/
>
> However, I can not see anything when the remote machine simple 
> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expiring, I 
> don't see anything about a removed disk (and the links under /dev/ remains 
> unaltered, indeed). At the same time, when the remote machine and disk 
> become available again, no reconnection events happen.
>

Because of the design of iSCSI, there is no way for the initiator to know 
the server has gone away. The only time an initiator might figure this out 
is when it tries to communicate with the target.

This assumes we are not using some sort of directory service, like iSNS, 
which can send asynchronous notifications. But even then, the iSNS server 
would have to somehow know that the target went down. If the target 
crashed, that might be difficult to ascertain.

So in the absence of some asynchronous notification, the initiator only 
knows the target is not responding if it tries to talk to that target.

Normally iscsid defaults to sending periodic NO-OPs to the target every 5 
seconds. So if the target goes away, the initiator usually notices, even if 
no regular I/O is occurring.

But this is where the error recovery gets tricky, because iscsi tries to 
handle "lossy" connections. What if the server will be right back? Maybe 
it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps 
trying to reconnect. As a matter of fact, if you stop iscsid and restart 
it, it sees the failed connection and retries it -- forever, by default. I 
actually added a configuration parameter called reopen_max, that can limit 
the number of retries. But there was pushback on changing the default value 
from 0, which is "retry forever".

So what exactly do you think the system should do when a connection "goes 
away"? How long does it have to be gone to be considered gone for good? If 
the target comes back "later" should it get the same disc name? Should we 
retry, and if so how much before we give up? I'm interested in your views, 
since it seems like a non-trivial problem to me.

>
> I can read here that, years ago, a patch was in progress to give better 
> integration with udev when a device disconnects/reconnects. Did the patch 
> got merged? Or does the one I described above remain the expected behavior? 
> Can be changed?
>

So you're saying as soon as a bad connection is detected (perhaps by a 
NOOP), the device should go away? 

>
> Thanks.
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40googlegroups.com.

------=_Part_2351_979993503.1587494662381
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan =
Danti wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">[=
reposting, as the previous one seems to be lost]<br><br>Hi all,<br>I have a=
 question regarding udev events when using iscsi disks.<br><br>By using &qu=
ot;udevadm monitor&quot; I can see that events are generated when I login a=
nd logout from an iscsi portal/resource, creating/destroying the relative l=
inks under /dev/<br><br>However, I can not see anything when the remote mac=
hine simple dies/reboots/disconnects: while &quot;dmesg&quot; shows the isc=
si timeout expiring, I don&#39;t see anything about a removed disk (and the=
 links under /dev/ remains unaltered, indeed). At the same time, when the r=
emote machine and disk become available again, no reconnection events happe=
n.<br></div></blockquote><div><br></div><div>Because of the design of iSCSI=
, there is no way for the initiator to know the server has gone away. The o=
nly time an initiator might figure this out is when it tries to communicate=
 with the target.</div><div><br></div><div>This assumes we are not using so=
me sort of directory service, like iSNS, which can send asynchronous notifi=
cations. But even then, the iSNS server would have to somehow know that the=
 target went down. If the target crashed, that might be difficult to ascert=
ain.</div><div><br></div><div>So in the absence of some asynchronous notifi=
cation, the initiator only knows the target is not responding if it tries t=
o talk to that target.</div><div><br></div><div>Normally iscsid defaults to=
 sending periodic NO-OPs to the target every 5 seconds. So if the target go=
es away, the initiator usually notices, even if no regular I/O is occurring=
.</div><div><br></div><div>But this is where the error recovery gets tricky=
, because iscsi tries to handle &quot;lossy&quot; connections. What if the =
server will be right back? Maybe it&#39;s rebooting? Maybe the cable will b=
e plugged back in? So iscsi keeps trying to reconnect. As a matter of fact,=
 if you stop iscsid and restart it, it sees the failed connection and retri=
es it -- forever, by default. I actually added a configuration parameter ca=
lled reopen_max, that can limit the number of retries. But there was pushba=
ck on changing the default value from 0, which is &quot;retry forever&quot;=
.</div><div><br></div><div>So what exactly do you think the system should d=
o when a connection &quot;goes away&quot;? How long does it have to be gone=
 to be considered gone for good? If the target comes back &quot;later&quot;=
 should it get the same disc name? Should we retry, and if so how much befo=
re we give up? I&#39;m interested in your views, since it seems like a non-=
trivial problem to me.<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;=
"><div dir=3D"ltr"><br>I can read here that, years ago, a patch was in prog=
ress to give better integration with udev when a device disconnects/reconne=
cts. Did the patch got merged? Or does the one I described above remain the=
 expected behavior? Can be changed?<br></div></blockquote><div><br></div><d=
iv>So you&#39;re saying as soon as a bad connection is detected (perhaps by=
 a NOOP), the device should go away? <br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pad=
ding-left: 1ex;"><div dir=3D"ltr"><br>Thanks.<br></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/7f583720-8a84-4872-8d1a-5cd284295c22%40googlegroups.com</a>.<b=
r />

------=_Part_2351_979993503.1587494662381--

------=_Part_2350_1321772124.1587494662380--
