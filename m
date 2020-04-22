Return-Path: <open-iscsi+bncBC6MFJWO34DBBEOZ772AKGQEHYN7NXI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A374E1B386E
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 09:04:49 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id s11sf601460wru.6
        for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 00:04:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587539089; cv=pass;
        d=google.com; s=arc-20160816;
        b=aXfe+dt+bWZYnnG1qjsKn5I//QPRGt+jiCW5OgdAoF2o42mM/lOUCYK2RrrQeKLm8z
         teWgmJkFrA1hgSDdzOkeakHf0bKMZw12lNk4p0Uh1Zz1L3F+jCbjrdCINeQa+9JKPCxr
         LLHZoOw02inLqYGdCbryBL37uq6tI6pFZ1uw5dAZuhyoq9gXY7KX36FURRl+5+cZc7qz
         IsYnfd18fP1ePrfKEWz1aFfALeJACZU6PgXAhN0lQQMRpLMUyQ8EEp9XzAm/VEJHbQQK
         OXh843fS4AZNcFWfOIz7nnN//MWn5pJwkgz7Vt+Ps3St9XgytRRou+ChUyzEEVXrBjyh
         mZYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:to:from:date:message-id:sender:dkim-signature;
        bh=JdyU0oT0wg8/tRBu1CINH80waqLLqFRotOKuefSt39Q=;
        b=ZQC8gO+Jn7zfcmcbX6kk5RHuXTF9fVXuFOHnbx88Y00eilo3lzAiN8ksBjX/rEVSVz
         zi2L5q+sZTiUN/r2u0AXhemMdgIGis0KLk6WDJotq/rPjXlxmq05zMsO3KfOZxI3Kmd+
         8F+UWZ7wYGq6LG44xwgZ7yKnRT/ghund45F/zsB6j6VuxTOm8rXUliK6sd4BU5U/pRa0
         gsLEvtvpXUMZnhRyr47N5ZZ+EnZeTFgTOdmP/GbBy5mv46X49WMSp8qD7/cNadk95p6G
         sLg1NinyLYUQ9MN8WFedgWlaK8d8NXV1nOoywGxSIry7z/h0bnBeYRDpqTin6SH3t6Tm
         B2ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdyU0oT0wg8/tRBu1CINH80waqLLqFRotOKuefSt39Q=;
        b=f+jzhAvOqUyl9lpHvJBu38M0XRpfG63X5whiZQyo11gO2tuc59ydiJzen3/Y8Vl6zP
         Nl7oDsBln8H0bWJSfibKzN7wsbLdB4u+WN6Jfy1w8yQiLtsJCLxB4i5jDw6a+f0pYQ29
         wI9+Ss4m+mm+ugRRfm9FyoezM0h5kUKtUKgbNYe5jIUwkC2hXyq5L1QT4YL1DDs6x0FD
         VbgGTz9ZuRCl3TcF5iQHxcIYXxdCcgty8B5ziVIcDuJoEhpRIeGzv5s1IXYllIfRsZTz
         oVM+SbNQOuI00eJIrTxV+EPk1T+hdL5rS+bMF1gAf+ePlp126p9LwG59IgkgVbVtwRcO
         nQ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdyU0oT0wg8/tRBu1CINH80waqLLqFRotOKuefSt39Q=;
        b=FzxuqycKl8XDk0R/QDI+GMjygcxWXx+rh+sqDvx7fY0nOztIkUS1dC6AYRtRhvJgcm
         c0GIbeYavnr9YT/aCTECucbZ7Y2FFvM5UCX6qsmHyuX9u1fvTrXOEqhaXrjKAHcyl19C
         blGH64PHhLbdzYxXw0V3wbkDKTDEG5ze0z2LDc0WwSip+ScaxBIN0qekCpMUPRKp6tuj
         71p4RksKyG2RUs2e07tJeYkOXV/qj3q8cv3+hL5j+EGTovsqudVKyD3BrEzR3Zm7izzm
         RtMy8GmuyQ4HJHgx5qeyOoDBNhExDsOODkEyJRkqhJZNgEPGvJkaM7V8e+sqBhBzS17k
         sivA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuY095RiFIM9lkxvchKWkMYR/KDo4SORhr62FxbGoSjGimPaECJ7
	pIK6JZmM+ga0TMg2KIsxnu8=
X-Google-Smtp-Source: APiQypI2mD9WwJcex8HjXtSII1e+9vHtfDkLXX4q+DQqdIr+zI1q3w2yh7xHR2/lQCuMivVoyQo+GA==
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr29290361wrw.139.1587539089377;
        Wed, 22 Apr 2020 00:04:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:a9c4:: with SMTP id s187ls1549530wme.0.canary-gmail;
 Wed, 22 Apr 2020 00:04:48 -0700 (PDT)
X-Received: by 2002:a1c:b144:: with SMTP id a65mr9583292wmf.54.1587539088821;
        Wed, 22 Apr 2020 00:04:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587539088; cv=none;
        d=google.com; s=arc-20160816;
        b=ekEnXZQwRuAlCwsTKIo/NLfuPdWct6CEu9Bp/lok59RP6yiLP8Qk1Qj/ZDrpxGv+/U
         17VMMu/du0ENWkETsdmedvwEDOYZB6DmSkS9O4RvH4yr0gJu2doZyjB2cLZaWhT5zXjD
         VCLm1ehPcH83++Qo+m/CSO3DZlh55h4723fw9POy04BqTdskKgaclZFxh1j9+a1BA9Zc
         Il9pgPyXzHXOwLXJnc8WvE2r0DmKR4s0bDzprGWwKC7rH1jbp7QgPmmizrSvjALNBNxq
         z5H3/djR+yqPSnfXWNwav6lrfKFr+GJEtPUzE8VrdoZ2zCVWwrFQq/CB/s8tc/5wlKau
         kStQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=12FC2dizSAV07y0skHXEzVic0LXoYb3sP3Br1lSrFoM=;
        b=oUcBX3CuiKIoUd8kQ9zn6mTxhKeidOS1kUG+12Z+D3aTpRuA5S5/8AbSc5wr1M7YVI
         +k7AaPlU1igf4fJpScAMWaTYpLrClGsYtJ3TWZ0+EBaAHL3D+r6jl52X+b8xgI4ZufOJ
         JcjgxBlxJP9m8LRgGSQqjTmUG2ATKLtNKsT5yjOCJUCLNqv5/SwnkIe+cf/rQNpx8x4N
         2oqtExmfPlqAxNEvOHZVp20/VZsPI3+ZhuyU/RYcTyPoCIs+qDuJGAZyuQqmm3r3jFZC
         rCGLsf0l9hOkKHYbgqvtOCef7AZ2KF0g7rWUAcDnoU5kbg9fBShV8bFdPEnYBrcvpgwh
         MGFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx3.uni-regensburg.de (mx3.uni-regensburg.de. [194.94.157.148])
        by gmr-mx.google.com with ESMTPS id w6si320409wrt.0.2020.04.22.00.04.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 00:04:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.148 as permitted sender) client-ip=194.94.157.148;
Received: from mx3.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 103926000051
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 09:04:48 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx3.uni-regensburg.de (Postfix) with ESMTP id CFCAE600004F
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 09:04:47 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 22 Apr 2020 09:04:47 +0200
Message-Id: <5E9FEC8E020000A1000387D7@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Wed, 22 Apr 2020 09:04:46 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: udev events for iscsi
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
 <30147_1587494977_5E9F4041_30147_801_1_CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=Fj1OT_LEQ+CZyZUkg@mail.gmail.com>
In-Reply-To: <30147_1587494977_5E9F4041_30147_801_1_CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=Fj1OT_LEQ+CZyZUkg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.148 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Donald Williams <don.e.williams@gmail.com> schrieb am 21.04.2020 um 20:=
49 in
Nachricht
<30147_1587494977_5E9F4041_30147_801_1_CAK3e-EawwxYGb3Gw74+P-yBmrnE0ktOL=3D=
Fj1OT_L
Q+CZyZUkg@mail.gmail.com>:
> Hello,
>=20
>  If the loss exceeds the timeout value yes.  If the 'drive' doesn't come
> back in 30 to 60 seconds it's not likely a transitory event like a cable
> pull.
>=20
> NOOP-IN and NOOP-OUT are also know as KeepAlive.  That's when the

Actually I think that's two different mechanisms: Keepalive just prevents t=
he connection from being discarded (some firewall like to do that), while t=
he No_op actually is an end-to-end (almost at least) connection test.

> connection is up but the target or initiator isn't responding.   If those
> timeout the connection will be dropped and a new connection attempt made.

I think the original intention for SCSI timeouts was to conclude a device h=
as failed if it does not respond within time (actually there are different =
timeouts depending on the operation (like the famous rewinding of a long ta=
pe)). Next step for the OS would be to block I/O to a seemingly failed devi=
ce. Recent operating systems like Linux have the choice to remove the devic=
e logically, requiring it to re-appear before it can be used. In some cases=
 it seems preferrable to keep the device, because otherwise there could be =
a cascading effect like killing processes that have the device open (UNIX p=
rocesses do not like it when opened devices suddenly disappear).

Regards,
Ulrich

>=20
>  Don
>=20
>=20
> On Tue, Apr 21, 2020 at 2:44 PM The Lee-Man <leeman.duncan@gmail.com> wro=
te:
>=20
>> On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wrote:
>>>
>>> [reposting, as the previous one seems to be lost]
>>>
>>> Hi all,
>>> I have a question regarding udev events when using iscsi disks.
>>>
>>> By using "udevadm monitor" I can see that events are generated when I
>>> login and logout from an iscsi portal/resource, creating/destroying the
>>> relative links under /dev/
>>>
>>> However, I can not see anything when the remote machine simple
>>> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expirin=
g, I
>>> don't see anything about a removed disk (and the links under /dev/ rema=
ins
>>> unaltered, indeed). At the same time, when the remote machine and disk
>>> become available again, no reconnection events happen.
>>>
>>
>> Because of the design of iSCSI, there is no way for the initiator to kno=
w
>> the server has gone away. The only time an initiator might figure this o=
ut
>> is when it tries to communicate with the target.
>>
>> This assumes we are not using some sort of directory service, like iSNS,
>> which can send asynchronous notifications. But even then, the iSNS serve=
r
>> would have to somehow know that the target went down. If the target
>> crashed, that might be difficult to ascertain.
>>
>> So in the absence of some asynchronous notification, the initiator only
>> knows the target is not responding if it tries to talk to that target.
>>
>> Normally iscsid defaults to sending periodic NO-OPs to the target every =
5
>> seconds. So if the target goes away, the initiator usually notices, even=
 if
>> no regular I/O is occurring.
>>
>> But this is where the error recovery gets tricky, because iscsi tries to
>> handle "lossy" connections. What if the server will be right back? Maybe
>> it's rebooting? Maybe the cable will be plugged back in? So iscsi keeps
>> trying to reconnect. As a matter of fact, if you stop iscsid and restart
>> it, it sees the failed connection and retries it -- forever, by default.=
 I
>> actually added a configuration parameter called reopen_max, that can lim=
it
>> the number of retries. But there was pushback on changing the default va=
lue
>> from 0, which is "retry forever".
>>
>> So what exactly do you think the system should do when a connection "goe=
s
>> away"? How long does it have to be gone to be considered gone for good? =
If
>> the target comes back "later" should it get the same disc name? Should w=
e
>> retry, and if so how much before we give up? I'm interested in your view=
s,
>> since it seems like a non-trivial problem to me.
>>
>>>
>>> I can read here that, years ago, a patch was in progress to give better
>>> integration with udev when a device disconnects/reconnects. Did the pat=
ch
>>> got merged? Or does the one I described above remain the expected behav=
ior?
>>> Can be changed?
>>>
>>
>> So you're saying as soon as a bad connection is detected (perhaps by a
>> NOOP), the device should go away?
>>
>>>
>>> Thanks.
>>>
>> --
>> You received this message because you are subscribed to the Google Group=
s
>> "open-iscsi" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n
>> email to open-iscsi+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit
>>=20
> https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd2=
8429=20
> 5c22%40googlegroups.com
>>=20
> <https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd=
28429=20
> 5c22%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
>> .
>>
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/open-iscsi/CAK3e-EawwxYGb3Gw74%2BP-yBmr=
nE0k=20
> tOL%3DFj1OT_LEQ%2BCZyZUkg%40mail.gmail.com.



--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/5E9FEC8E020000A1000387D7%40gwsmtp.uni-regensburg.de.
