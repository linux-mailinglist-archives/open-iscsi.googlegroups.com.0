Return-Path: <open-iscsi+bncBDUI3A7H4EORBNE67T2AKGQEXQGDSVI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 065981B2B00
	for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 17:20:22 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id y12sf11663028plk.23
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 08:20:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587482420; cv=pass;
        d=google.com; s=arc-20160816;
        b=XbWyq7gq4Agd4lx5qCQxbnOVcp13+aT6jvEhqvYup8II9loEMmmizqeWWzqmwHBd2d
         IviiBJ9dh5hpVVSZerZpyS6Dtmw1Hp11C2bzJ7bcIYrU1d7wPxngBzb4pZvi9nAQYzcW
         NT7+xHZwJQ1ZZLCicyeyK7tQaE1wRsnftrxhyQYZVq3DVwbHbVdo3D+bnnrNbWQ8yVIp
         H0/BC5SyPX70+mpb6RLtrMEBas9QNmolXVwBwguPn7ksfaTDEm159vLETzcbz7zSCYWJ
         A8EBiOSS2kEPZElBbBHRc5F0bxA5QclE87gA4LdXaAGl21uUijCMDeALekAhIu1yLxV6
         lDAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:in-reply-to:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=irMps444Gdl51ybvBk859Bznw148e2vaiOM6DJOMrZ4=;
        b=oS6DmeQI2Rcl2yzirS6hwce6Kl7lobyVxBC/7nITWf6r2PJUeQpjYrP/h23cr+mviy
         fQiUaOUsn9gJvcHTop9Y5ndTxnu9fVy9ywPvp7O2W+WhSUoCPcK10hfJvZVp/qISsmps
         t1yg056d1PnvejabQV4VJW/tEaHEJ7JPALYOkX6aNBiOzhOIJ32jgIC0Bf7ExcLalA6p
         w+D2R/FAyTI3D5W+tg1bEDHyhYAmviQfg2EdQSHqea0lQmFcSv9w+SoMuJdkCktq1ZD4
         LYw53lRKevycaCbF0/3MCK/gm5QP52g7lFwqmTPAD8WRpzIA3b03qYo4tk5Um2+KQ+wY
         EpHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623 header.b=BP9ZhLwP;
       spf=pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:in-reply-to:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=irMps444Gdl51ybvBk859Bznw148e2vaiOM6DJOMrZ4=;
        b=Z5RRKfC252vdkrRQPpBLx5WD3RzGu987kVLQgPQu94KGNF7gT//UcA10igolJhaTR9
         7GvsR1579f53lZtJiqUVDrIr/HYh+TmHbOPJJfBQ8mv2RnAR5bKIhcIsv75+GbYnHlyJ
         wtW8SBWhdwycn0aZhru4WGt9QiRUQTBQugR6cwdbdiMajCbUytPTZjltHJEKKfvk9YWP
         WOqwNbu/bknKGqzWHDHPKvMMV1z13caBzFYEjjDREkRXQAPctBwUaVeqgnJOYdkUjwjR
         wTLhU5LjoA8akRq56fmmuIxSR/vkUNOhrCn2W/roocoMYthm+91oxCeDDVEPMYQkwoAM
         gCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:in-reply-to:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=irMps444Gdl51ybvBk859Bznw148e2vaiOM6DJOMrZ4=;
        b=icpMGBap7GCx6FEsydLY0wENXlV2QWKWe55WWwfHKWmDDVDbSpgi8hx3XEJzhTiRXC
         cgqWgbpjJgYInN69XS1UEwK9jAZq9/irOLejogzNHdh89kmW6JJVLuJ/lO/+/NpeodXM
         uEcZUhm50hEhcJyhdn0SPygjK3bks3807XGx7aXRUp9s5GhPiZ6BxDF2HkuXW5cG4zpk
         gT1wN+VTNiCEzdiiN5FQ31KrxarX32sa5tCuciOQ2jXoU8vIXXg9/Si2CAIn5z2XAFzC
         Xfy4v87vL1rsx/SZP7HehM7kNZjSprCJUpRdZBlRoszAGN5rJ6VpOZNqNxldkguVG7m7
         7N7A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PubAy5gp86N8/2Vyira870SkUSdc+3J1t6kuxXmLXAjDkpWB9jBo
	NsqOywXd7/TCdVfZvQSk4MQ=
X-Google-Smtp-Source: APiQypLcONd0ZVFZhJJ+oPVvTPaAiV1tDuVAcT78RDAzwCG+eHM3u1dTXJTNeMJ0pCgHrce2FVIRZw==
X-Received: by 2002:a62:1d1:: with SMTP id 200mr2889366pfb.286.1587482420670;
        Tue, 21 Apr 2020 08:20:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:370c:: with SMTP id u12ls4151117pjb.2.gmail; Tue, 21
 Apr 2020 08:20:19 -0700 (PDT)
X-Received: by 2002:a17:90b:1a87:: with SMTP id ng7mr6404156pjb.84.1587482419727;
        Tue, 21 Apr 2020 08:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587482419; cv=none;
        d=google.com; s=arc-20160816;
        b=R8YF9Ja1fVn58t+AdqezVDArX9XcmvX6oJVBvRCKd831Wr/B0kOUkcHaUehr5vUjKa
         rNn6Yfy3r11J8q8vNrSBrINoMT1q1QAvtYQ+Hgu1nQEvbIbjba451/mZRvZB7/8674CU
         HO1yelAZ3NZIo6eK6HFaxSS9+zKGgDpNJfPJBx8l18g9U7X8FR4OIpZAlgM6ccCtiHRA
         gxZvCHOXMt6py4HcOM3F2D0tlQkdJVGxLgpomsRCCjYpJAvhHns43e4SJ+74CR/0SmZL
         qBKo71vW0GkItNmLMAOyQk1fgemg6wuw7/a17a4GQ1FJP8n6z+9/zbfvrO9r6Pe6w/9N
         gR7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:date:subject:mime-version:from
         :content-transfer-encoding:dkim-signature;
        bh=rnhx07mlTfODY/H/ztLvwAQGkVQbvDS0NECBb07rXqk=;
        b=kadKALQgny2/5NkG3sKecqWUx8n78TW7AHECYE74XXqz8NGy03dQIRMn9CEjlMyX0d
         I7e2rOoPp9r/ArncX7375R4gSVw3NBSGp23pqhrnyG06NVJOV+zqI+vdGW6r3NYfxHvZ
         XOmvRdrmpwGYBdcAkBG7H9HFNL0LuofOtViKz5IihVrRxCHumyZUuW5UiXIx+Mi3Fw+L
         7DviLOJVH8eQA2cJDXHYPbIHMgifDfjllDYdyi6rWux48+hmQTCZY86Ndxq7LEB4vqfo
         JcujomiRu4ZDiAqrArWbW2QvS8Bbeprm3yoEOTKq8AyUHlNyDBsU1CCPMlHuF6sOoCe7
         wSZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623 header.b=BP9ZhLwP;
       spf=pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com. [2607:f8b0:4864:20::f2f])
        by gmr-mx.google.com with ESMTPS id g6si261062pjl.1.2020.04.21.08.20.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 08:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert@eyeconsultantspc.com designates 2607:f8b0:4864:20::f2f as permitted sender) client-ip=2607:f8b0:4864:20::f2f;
Received: by mail-qv1-xf2f.google.com with SMTP id y19so6716300qvv.4
        for <open-iscsi@googlegroups.com>; Tue, 21 Apr 2020 08:20:19 -0700 (PDT)
X-Received: by 2002:ad4:548b:: with SMTP id q11mr20231131qvy.129.1587482417405;
        Tue, 21 Apr 2020 08:20:17 -0700 (PDT)
Received: from [10.58.0.159] (wsip-184-178-40-226.om.om.cox.net. [184.178.40.226])
        by smtp.gmail.com with ESMTPSA id w79sm1920419qkb.97.2020.04.21.08.20.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 08:20:16 -0700 (PDT)
Content-Type: multipart/alternative; boundary=Apple-Mail-627AB171-EB27-4EE6-84C4-6112CC3BEE80
Content-Transfer-Encoding: 7bit
From: robert@eyeconsultantspc.com
Mime-Version: 1.0 (1.0)
Subject: Re: udev events for iscsi
Date: Tue, 21 Apr 2020 10:20:15 -0500
Message-Id: <9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
In-Reply-To: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
To: open-iscsi@googlegroups.com
X-Mailer: iPhone Mail (17E262)
X-Original-Sender: robert@eyeconsultantspc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@eyeconsultantspc-com.20150623.gappssmtp.com header.s=20150623
 header.b=BP9ZhLwP;       spf=pass (google.com: domain of robert@eyeconsultantspc.com
 designates 2607:f8b0:4864:20::f2f as permitted sender) smtp.mailfrom=robert@eyeconsultantspc.com
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


--Apple-Mail-627AB171-EB27-4EE6-84C4-6112CC3BEE80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wondering myself.

> On Apr 21, 2020, at 2:31 AM, Gionatan Danti <gionatan.danti@gmail.com> wr=
ote:
>=20
> =EF=BB=BF
> [reposting, as the previous one seems to be lost]
>=20
> Hi all,
> I have a question regarding udev events when using iscsi disks.
>=20
> By using "udevadm monitor" I can see that events are generated when I log=
in and logout from an iscsi portal/resource, creating/destroying the relati=
ve links under /dev/

So running =E2=80=9Cudevadm monitor=E2=80=9D on the initiator, you can see =
when a block device becomes available locally.  =20


>=20
> However, I can not see anything when the remote machine simple dies/reboo=
ts/disconnects: while "dmesg" shows the iscsi timeout expiring, I don't see=
 anything about a removed disk (and the links under /dev/ remains unaltered=
, indeed). At the same time, when the remote machine and disk become availa=
ble again, no reconnection events happen.

As someone who has had an inordinate amount of experience with the iSCSi co=
nnection breaking ( power outage, Network switch dies,  wrong ethernet cabl=
e pulled, the target server machine hardware crashes, ...) in the middle of=
 production, the more info the better.   Udev event triggers would help.   =
I wonder exactly how XenServer handles this as it itself seemed more resili=
ent. =20

XenServer host initiators  do something correct to recover and wonder how t=
hat compares to the normal iSCSi initiator.  =20

But unfortunately, XenServer LVM-over-iSCSi  does not pass the message alon=
g to its Linux virtual drives and VMs in the same way as Windows VMs.   =20

When the target drives became available again,   MS Windows virtual machine=
s would gracefully recover on their own.    All Linux VM  filesystems went =
read only and those VM machines required forceful  rebooting.   mount remou=
nt would not work.=20


>=20
> I can read here that, years ago, a patch was in progress to give better i=
ntegration with udev when a device disconnects/reconnects. Did the patch go=
t merged? Or does the one I described above remain the expected behavior? C=
an be changed?
>=20
> Thanks.
> --=20
> You received this message because you are subscribed to the Google Groups=
 "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.com.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91%40eyeconsultantspc.com.

--Apple-Mail-627AB171-EB27-4EE6-84C4-6112CC3BEE80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto"><div>Wondering myself.</div><br><div di=
r=3D"ltr"><blockquote type=3D"cite">On Apr 21, 2020, at 2:31 AM, Gionatan D=
anti &lt;gionatan.danti@gmail.com&gt; wrote:<br><br></blockquote></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">[reposting=
, as the previous one seems to be lost]<br><br>Hi all,<br>I have a question=
 regarding udev events when using iscsi disks.<br><br>By using "udevadm mon=
itor" I can see that events are generated when I login and logout from an i=
scsi portal/resource, creating/destroying the relative links under /dev/<br=
></div></div></blockquote><div><br></div><div>So running =E2=80=9Cudevadm m=
onitor=E2=80=9D on the initiator, you can see when a block device becomes a=
vailable locally. &nbsp;&nbsp;</div><div><br></div><br><blockquote type=3D"=
cite"><div dir=3D"ltr"><div dir=3D"ltr"><br></div></div></blockquote><block=
quote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">However, I can not se=
e anything when the remote machine simple dies/reboots/disconnects: while "=
dmesg" shows the iscsi timeout expiring, I don't see anything about a remov=
ed disk (and the links under /dev/ remains unaltered, indeed). At the same =
time, when the remote machine and disk become available again, no reconnect=
ion events happen.<br></div></div></blockquote><div><br></div><div>As someo=
ne who has had an inordinate amount of experience with the iSCSi connection=
 breaking ( power outage, Network switch dies, &nbsp;wrong ethernet cable p=
ulled, the target server machine hardware crashes, ...) in the middle of pr=
oduction, the more info the better. &nbsp; Udev event triggers would help. =
&nbsp; I wonder exactly how XenServer handles this as it itself seemed more=
 resilient. &nbsp;</div><div><br></div><div>XenServer host initiators &nbsp=
;do something correct to recover and wonder how that compares to the normal=
 iSCSi initiator. &nbsp;&nbsp;</div><div><br></div><div><div>But unfortunat=
ely, XenServer LVM-over-iSCSi &nbsp;does not pass the message along to its =
Linux virtual drives and VMs in the same way as Windows VMs. &nbsp; &nbsp;<=
/div><div><br></div><div>When the target drives became available again, &nb=
sp; MS Windows virtual machines would gracefully recover on their own. &nbs=
p; &nbsp;All Linux VM &nbsp;filesystems went read only and those VM machine=
s required forceful &nbsp;rebooting. &nbsp; mount remount would not work.&n=
bsp;</div></div><div><br></div><div><br></div><blockquote type=3D"cite"><di=
v dir=3D"ltr"><div dir=3D"ltr"><br>I can read here that, years ago, a patch=
 was in progress to give better integration with udev when a device disconn=
ects/reconnects. Did the patch got merged? Or does the one I described abov=
e remain the expected behavior? Can be changed?<br><br>Thanks.<br></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d/=
msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.com</a=
>.<br>
</div></blockquote></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91%40eyeconsultants=
pc.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/=
msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91%40eyeconsultantspc.co=
m</a>.<br />

--Apple-Mail-627AB171-EB27-4EE6-84C4-6112CC3BEE80--
