Return-Path: <open-iscsi+bncBDLINFGG5UCBB5NP7X2AKGQE2FBI4FY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 448F61B3135
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 22:30:46 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id z3sf2661887qtb.6
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 13:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pOCKX1bcSSeAhuJ+7nJM+ELfyKS/NksbdLtqwjgCHFU=;
        b=acRacWYu7x5leo0oTJbL9MDGMK3otgCM+cLzA1mpNUN8Hz8NXGoR0YRliDUWUuCt2t
         x3cVuKXmBUHFYsupatwM80nyXu7/Nl6mDwRDV+bk8MHKTrxxbfp6HlzE6msOWFlEUnI7
         LMHl/2AuzUB86Vl78PiZsKcX2uq1uyCcUt9PjXFgpTXNokjvTDrOPih2mYWnLvCW4UwV
         GYdrwBWA/6RtwibTL6T8/kHI/eIibZerX0BS+Omy/Pl4IlNEY0yUhNkZD2UqWNQhJyKo
         323PzD6PBzZYN5q2Mv4gtKwFC/9WDMnjiJ5sppUGwitDY0f8+SLbdr5uKRLCbzKre3MH
         +TWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pOCKX1bcSSeAhuJ+7nJM+ELfyKS/NksbdLtqwjgCHFU=;
        b=WTD/SBdisMjpsD6upejPT1eTz2drA+AchZ8T5Zsn4aTvIYXV2HAUsBFu/hopvT0S/C
         pWncHKBUN/qbdpkdzzIoEkyMDAm90Mhvjb4/NaCDQ87vaVlaYOT4jS+qkLkobyggL9Yd
         s+tI/vvu8Yo+r1H25jV2W1Ifpjo7aOsBObVNUF4IA+i+7h5Kv1jyZwrA2juxHCn7Ujf6
         ajUjmiM5l9UJm1tRd+GUv2iF7Na7OB/PkxNGAeH/3aArlYEZCzwDraf+1KFRCpE1zuM9
         cIDdhx7YjZuMFzSjuUZ0joEoXF8QwTGsfmExAdLF9GyAicv+YONINKxxmjmQmwZpdy/b
         ++Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pOCKX1bcSSeAhuJ+7nJM+ELfyKS/NksbdLtqwjgCHFU=;
        b=mGJZIg/moJ3+OwDE6KEMUFj13nwfOGyYOfNtfmJMHtNiH8oNtL4BpZeh6dt/k1a/ge
         l4+pCYiHG9Vg21GUwULhhm9HUSFe81n0Lm1HBnzaOK7qfU5cVjk1Bbon0iUQfVH8acmY
         6Al+YftCMZg1YjW6Y2lJtuYMl6r81K9VyDugEfNzyPrgFmvzOIYtRus/BNrvMaPY0tcP
         dsf2ecH189yTuA7xO7HhcZdEGhaoXw1r5Ym+fCo0MjiCgY20WaFurglZ5tCAwLQzFYrC
         dx/CNYPxW7D9Gag/8NqOizJPqwswcVMHQR3339lemvlwRX7rJZMep1nmDF3Dm/otKE2R
         D70g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuZl1q6pAQ3PgSwRqtC1RH1HXtcDv6DEvfWhi6w/CPUE+MqkOZE0
	cSsp0m6dNRq0vY40ABGz6Vg=
X-Google-Smtp-Source: APiQypJMa3mnFiYqW7AOu8zvAe/ZszQYN9fILdalEpoYMgCcWVPlKj2GNmHXhYxd4BGtgMQNtXT/rw==
X-Received: by 2002:a05:620a:1458:: with SMTP id i24mr22835433qkl.279.1587501045309;
        Tue, 21 Apr 2020 13:30:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:232:: with SMTP id u18ls1355003qkm.9.gmail; Tue, 21
 Apr 2020 13:30:45 -0700 (PDT)
X-Received: by 2002:a37:91c6:: with SMTP id t189mr22800314qkd.280.1587501044749;
        Tue, 21 Apr 2020 13:30:44 -0700 (PDT)
Date: Tue, 21 Apr 2020 13:30:43 -0700 (PDT)
From: Gionatan Danti <gionatan.danti@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <67349dca-9647-4dbd-affc-ded6e8f01ee9@googlegroups.com>
In-Reply-To: <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
Subject: Re: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2478_1193425629.1587501044080"
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

------=_Part_2478_1193425629.1587501044080
Content-Type: multipart/alternative; 
	boundary="----=_Part_2479_1934920708.1587501044080"

------=_Part_2479_1934920708.1587501044080
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Il giorno marted=C3=AC 21 aprile 2020 20:44:22 UTC+2, The Lee-Man ha scritt=
o:
>
>
> Because of the design of iSCSI, there is no way for the initiator to know=
=20
> the server has gone away. The only time an initiator might figure this ou=
t=20
> is when it tries to communicate with the target.
>
> This assumes we are not using some sort of directory service, like iSNS,=
=20
> which can send asynchronous notifications. But even then, the iSNS server=
=20
> would have to somehow know that the target went down. If the target=20
> crashed, that might be difficult to ascertain.
>
> So in the absence of some asynchronous notification, the initiator only=
=20
> knows the target is not responding if it tries to talk to that target.
>
> Normally iscsid defaults to sending periodic NO-OPs to the target every 5=
=20
> seconds. So if the target goes away, the initiator usually notices, even =
if=20
> no regular I/O is occurring.
>

True.
=20

>
> But this is where the error recovery gets tricky, because iscsi tries to=
=20
> handle "lossy" connections. What if the server will be right back? Maybe=
=20
> it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps=
=20
> trying to reconnect. As a matter of fact, if you stop iscsid and restart=
=20
> it, it sees the failed connection and retries it -- forever, by default. =
I=20
> actually added a configuration parameter called reopen_max, that can limi=
t=20
> the number of retries. But there was pushback on changing the default val=
ue=20
> from 0, which is "retry forever".
>
> So what exactly do you think the system should do when a connection "goes=
=20
> away"? How long does it have to be gone to be considered gone for good? I=
f=20
> the target comes back "later" should it get the same disc name? Should we=
=20
> retry, and if so how much before we give up? I'm interested in your views=
,=20
> since it seems like a non-trivial problem to me.
>

Well, for short disconnections the re-try approach is surely the better=20
one. But I naively assumed that a longer disconnection, as described by the=
=20
node.session.timeo.replacement_timeout parameter, would tear down the=20
device with a corresponding udev event. Udev should have no problem=20
assigning the device a sensible persistent name, right?
=20

>
> So you're saying as soon as a bad connection is detected (perhaps by a=20
> NOOP), the device should go away?=20
>

I would say that the device should go away not a the first NOOP failing,=20
but when the replacement_timeout (or another sensible timeout) expires.

This open the door to another question: from iscsid.conf=20
<https://github.com/open-iscsi/open-iscsi/blob/master/etc/iscsid.conf#L99>=
=20
and README=20
<https://github.com/open-iscsi/open-iscsi/blob/master/README#L1476> files I=
=20
(wrongly?) understand that replacement_timeout come into play only when the=
=20
SCSI EH is running, while in the other cases different timeouts as=20
node.session.err_timeo.lu_reset_timeout and=20
node.session.err_timeo.tgt_reset_timeout should affect the (dis)connection.=
=20
However, in all my tests, I only saw replacement_timeout being honored,=20
still I did not catch a single running instance of SCSI EH via the proposed=
=20
command iscsiadm -m session -P 3

What I am missing?
Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/67349dca-9647-4dbd-affc-ded6e8f01ee9%40googlegroups.com.

------=_Part_2479_1934920708.1587501044080
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Il giorno marted=C3=AC 21 aprile 2020 20:44:22 UTC+2, =
The Lee-Man ha scritto:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div di=
r=3D"ltr"><div><br></div><div>Because of the design of iSCSI, there is no w=
ay for the initiator to know the server has gone away. The only time an ini=
tiator might figure this out is when it tries to communicate with the targe=
t.</div><div><br></div><div>This assumes we are not using some sort of dire=
ctory service, like iSNS, which can send asynchronous notifications. But ev=
en then, the iSNS server would have to somehow know that the target went do=
wn. If the target crashed, that might be difficult to ascertain.</div><div>=
<br></div><div>So in the absence of some asynchronous notification, the ini=
tiator only knows the target is not responding if it tries to talk to that =
target.</div><div><br></div><div>Normally iscsid defaults to sending period=
ic NO-OPs to the target every 5 seconds. So if the target goes away, the in=
itiator usually notices, even if no regular I/O is occurring.</div></div></=
blockquote><div><br></div><div>True.</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #c=
cc solid;padding-left: 1ex;"><div dir=3D"ltr"><div><br></div><div>But this =
is where the error recovery gets tricky, because iscsi tries to handle &quo=
t;lossy&quot; connections. What if the server will be right back? Maybe it&=
#39;s rebooting? Maybe the cable will be plugged back in? So iscsi keeps tr=
ying to reconnect. As a matter of fact, if you stop iscsid and restart it, =
it sees the failed connection and retries it -- forever, by default. I actu=
ally added a configuration parameter called reopen_max, that can limit the =
number of retries. But there was pushback on changing the default value fro=
m 0, which is &quot;retry forever&quot;.</div><div><br></div><div>So what e=
xactly do you think the system should do when a connection &quot;goes away&=
quot;? How long does it have to be gone to be considered gone for good? If =
the target comes back &quot;later&quot; should it get the same disc name? S=
hould we retry, and if so how much before we give up? I&#39;m interested in=
 your views, since it seems like a non-trivial problem to me.</div></div></=
blockquote><div><br></div><div>Well, for short disconnections the re-try ap=
proach is surely the better one. But I naively assumed that a longer discon=
nection, as described by the=C2=A0<span style=3D"color: rgb(36, 41, 46); fo=
nt-size: 12px; white-space: pre;"><font face=3D"courier new, monospace">nod=
e.session.timeo.replacement_timeout</font></span><span style=3D"color: rgb(=
36, 41, 46); font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&q=
uot;, Menlo, monospace; font-size: 12px; white-space: pre;"> </span>paramet=
er, would tear down the device with a corresponding udev event. Udev should=
 have no problem assigning the device a sensible persistent name, right?</d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0;ma=
rgin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=
=3D"ltr"><div><br></div><div>So you&#39;re saying as soon as a bad connecti=
on is detected (perhaps by a NOOP), the device should go away? <br></div></=
div></blockquote><div><br></div><div>I would say that the device should go =
away not a the first NOOP failing, but when the <font face=3D"courier new, =
monospace">replacement_timeout </font>(or another sensible timeout) expires=
.</div><div><br></div><div>This open the door to another question: from <a =
href=3D"https://github.com/open-iscsi/open-iscsi/blob/master/etc/iscsid.con=
f#L99">iscsid.conf</a> and <a href=3D"https://github.com/open-iscsi/open-is=
csi/blob/master/README#L1476">README</a>=C2=A0files I (wrongly?) understand=
 that <font face=3D"courier new, monospace">replacement_timeout </font>come=
 into play only when the SCSI EH is running, while in the other cases diffe=
rent timeouts as=C2=A0<font face=3D"courier new, monospace">node.session.er=
r_timeo.lu_reset_timeout</font><span style=3D"color: rgb(36, 41, 46); font-=
family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monos=
pace; font-size: 12px; white-space: pre;">=C2=A0</span>and <font face=3D"co=
urier new, monospace">node.session.err_timeo.tgt_reset_timeout=C2=A0</font>=
should affect the (dis)connection. However, in all my tests, I only saw=C2=
=A0<span style=3D"font-family: &quot;courier new&quot;, monospace;">replace=
ment_timeout=C2=A0</span>being honored, still I did not catch a single runn=
ing instance of SCSI EH via the proposed command=C2=A0<span style=3D"color:=
 rgb(36, 41, 46); font-size: 12px; white-space: pre;"><font face=3D"courier=
 new, monospace">iscsiadm -m session -P 3</font></span></div><div><span sty=
le=3D"color: rgb(36, 41, 46); font-size: 12px; white-space: pre;"><font fac=
e=3D"courier new, monospace"><br></font></span></div><div><span style=3D"co=
lor: rgb(36, 41, 46); font-size: 12px; white-space: pre;"><font face=3D"ari=
al, sans-serif">What I am missing?</font></span></div><div><span style=3D"c=
olor: rgb(36, 41, 46); font-size: 12px; white-space: pre;"><font face=3D"ar=
ial, sans-serif">Thanks.</font></span></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/67349dca-9647-4dbd-affc-ded6e8f01ee9%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/67349dca-9647-4dbd-affc-ded6e8f01ee9%40googlegroups.com</a>.<b=
r />

------=_Part_2479_1934920708.1587501044080--

------=_Part_2478_1193425629.1587501044080--
