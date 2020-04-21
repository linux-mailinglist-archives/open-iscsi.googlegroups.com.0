Return-Path: <open-iscsi+bncBC6MFJWO34DBBN4B732AKGQE37YTKVQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D6D1B3302
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 01:24:39 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id i10sf109489wrq.8
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 16:24:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587511479; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+1wQdZ6/VjsiQGVwnhLtRCmxPB68yx5pGGRRVFdNl7LRXKHrm0H0nGY1qof6JiKM8
         JOJYgRcbwZ3DcG9I18MJURFeOCDvvTRP9jCg2T1WLBjpaMtGZFM1JowBss7XLmIWrSyw
         VMzOvTAIKuTd+R8VKgf1ASVj9I2uL4V2DSNcM3zGWYBURitUTUOa1zph7FkjSMd1J5wc
         Y+Yruwvk5JZ18MkeqiAdH/ePfCHbbjD4/WfBKwKfIG1BaHQCetSCZp7kiX6nOjcDOel9
         7ptH3yZmZWbVtARypUDY6/j/WI+25A+ZEajpXRSSgD36JqoBE2lrKYbYzRGFvO2b1VM2
         E/3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :references:subject:to:from:date:message-id:sender:dkim-signature;
        bh=X8+SgZXPQNch6qxZ297DvF2987zpiVF7pixYZJkoUps=;
        b=nuf0mJQTOQJDQzi868JqDe6HbMTIEVKBlrKg0ARIxsvlyfI5LKfdShajncowHJqzGv
         YE1KvfJu02IPotzYik/ARx1BlIJm7HB2EAdycykzfw7uqnpi/peQKAdnKYDBm11oJIel
         Q7HSyvQacCUdusztgLZSkyEDh8Kg2imUngBHvH9ow1RNUtGKp3CAlMI4vvDEoVW119Ku
         YZ+wQMCsNNoogZZfaIiREJqhrihFJFemuBrUtIsVKjgRa0dPSx5mNONBbWxHh1Eowm43
         CiYFCOTOxRqyOfxrKL7Lzx5qsCRmWCxLdoW2t0i2Y3NPNX9gRxXAblo+lLIjlMb/uA4D
         mzlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X8+SgZXPQNch6qxZ297DvF2987zpiVF7pixYZJkoUps=;
        b=jC/HQfDT2wu9CMCZ5Xr7EO4+Y9eclbeS7GL0Wfy6itSlnDQ3B1yQt5NDdkydkURub0
         2DOzwIZNV5IzIFM4EVNjqbZvqZSety+6YlPaw42n4xDUpoA9MPEsl9SF3Xua4IzCMLzZ
         KHxMCWG6qOWBzq3A9vO2+3F6x/t6EqiLh6GKgqQlwlbfZR/ySUN864hoRTg8kIKL9H84
         zREqwze8Hq6OlJQUHitNooOx42p80CjEZCkm6KKb2cj+y2NBnfIV/tqdDJ/+0a9TcpiP
         kksljrngWXTMTMl+7fOieXEaZc5UDZr2aDhkWVPuLI2pCJJ/mpH+4abYCLE8FBQGth2r
         p5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8+SgZXPQNch6qxZ297DvF2987zpiVF7pixYZJkoUps=;
        b=Dguhu1BSJjy+Gm1Ho6GNX++YJox8XGEGQHK3AQwoMAhB+GaTDekiZgqw3szXISHUeg
         V4kJneyN7MSbOqKYDeJKGPu8gilDhhjSpYHGTZFBBqJa45hPrdSTIoOcq7iXJ28j4aq1
         hYzP9BOt7bvtMZmiPrv+tmwnGZuxzC29YpDSjDG5wU9xfTDNqbQ310lXH5T9ZAaEZJ1r
         jF9FBiCrYmgqXCpfrlWnUZgy1W5x0jI3sxc1XPH5eZPqJrX1aWBLWarfg6B5c+4zR54j
         UNBLIA4GXhZYosMwXYXW1tagq/CwtoZE7tJCippaml0+OQ9dS3o5Z7hDB/Js1rVUaF7a
         7y2g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0PuYNUOESwMHG/U8km4jbidmam8CIP7RsryXceW0aeELAr1x6fHua
	z0KewkLSsW7Hv6BnnIq/Dqo=
X-Google-Smtp-Source: APiQypL1VNFn0oeOa9rvvy5a6x5z6Y99pMy+cWa7xZKlBn+MLGHSZwOekvlsswo0oFzigHk78C8Cvw==
X-Received: by 2002:a1c:2d14:: with SMTP id t20mr7531497wmt.28.1587511479476;
        Tue, 21 Apr 2020 16:24:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls293335wru.3.gmail; Tue, 21 Apr
 2020 16:24:39 -0700 (PDT)
X-Received: by 2002:a5d:6503:: with SMTP id x3mr29063950wru.153.1587511478938;
        Tue, 21 Apr 2020 16:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587511478; cv=none;
        d=google.com; s=arc-20160816;
        b=f5WoI/+C6qKuv4jK7HymlLcyIIbTI1pJAiUNuo4KJRB2vZKMzCS2J01vB7WqiYUJdH
         ghvP9+kucTjLxElPxygKUO/VgTTL+pyVr+MQJ64vhF/xOQXlechdwKubOOcE31FFpdBS
         zgXGFNI1w0vtjk2sPgj3+U16MT01uDIsKuVudWQCwjFGtcDwoWaVCjpdTF6AW4EMuIvY
         woULO2jXun1szTcsvfpoqh3E8Dj3OOhVOLFWhDGCLwXYDNl3FV6E8Pm579kSnnhvA+n0
         SJD179W7EQTDZ5PtsHjvmTMOzTHlOA3rin0upMdNee+TAGf++4vGg4VN6azJWZqxXDEG
         1lmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:references:subject:to:from:date:message-id;
        bh=uZfYHbdI81Oc/StI6/BNXUrFijwtGZRlycf1Lc88dpM=;
        b=mPN035qqOV3V09SQBcRLQskhSvH8Ms7FK2mAUrVJf99VImVO6fNOPxrIoFrST3hRvK
         lwdKQWVb1aHbWAbnkZNOBp3dl8c5wjEpLW/b1AfayaJli2NsJX0fjZHJF8ojbn58q60N
         4cRhEhdYSVqbeZQW84z8qy/VIssEJxw6H6K8/kfViJqTZ52wDKgpDsJxVF2im59XAQEE
         io/k7RqrMtS2wYJAlzGCBz4b/xKvDH8WPwBeay5of/WGLfsCdriGmuq1D5lW6gFI0UaQ
         lxmajpCxhR9h3eYMJUP0VmgUvYGCL/655DMkOLAFogRtyly5TIHzdmFvf2w/AS2qBlxK
         dXJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id t22si203977wmt.0.2020.04.21.16.24.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Apr 2020 16:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E12C16000051
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 01:24:36 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 7F3E9600004F
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 01:24:36 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 22 Apr 2020 01:24:36 +0200
Message-Id: <5E9F80B2020000A10003875F@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Wed, 22 Apr 2020 01:24:34 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: <open-iscsi@googlegroups.com>
Subject: Aw:  [EXT] Re: udev events for iscsi
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <26512_1587482422_5E9F0F36_26512_250_1_9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
In-Reply-To: <26512_1587482422_5E9F0F36_26512_250_1_9D54680A-F97E-4465-BA6C-566562C5DC91@eyeconsultantspc.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="=__Part8BB447A2.0__="
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

This is a MIME message. If you are reading this text, you may want to 
consider changing to a mail reader or gateway that understands how to 
properly handle MIME multipart messages.

--=__Part8BB447A2.0__=
Content-Type: multipart/alternative; boundary="=__Part8BB447A2.1__="

--=__Part8BB447A2.1__=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>>> <robert@eyeconsultantspc.com> 21.04.2020, 17:20 >>>Wondering myself.> O=
n
Apr 21, 2020, at 2:31 AM, Gionatan Danti <gionatan.danti@gmail.com> wrote:>=
 >
=EF=BB=BF> [reposting, as the previous one seems to be lost]> > Hi all,> I =
have a
question regarding udev events when using iscsi disks.> > By using "udevadm
monitor" I can see that events are generated when I login and logout from a=
n
iscsi portal/resource, creating/destroying the relative links under /dev/So
running =E2=80=9Cudevadm monitor=E2=80=9D on the initiator, you can see whe=
n a block device
becomes available locally.   > > However, I can not see anything when the
remote machine simple dies/reboots/disconnects: while "dmesg" shows the isc=
si
timeout expiring, I don't see anything about a removed disk (and the links
under /dev/ remains unaltered, indeed). At the same time, when the remote
machine and disk become available again, no reconnection events happen.As
someone who has had an inordinate amount of experience with the iSCSi
connection breaking ( power outage, Network switch dies,  wrong ethernet ca=
ble
pulled, the target server machine hardware crashes, ...) in the middle of
production, the more info the better.   Udev event triggers would help.   I
wonder exactly how XenServer handles this as it itself seemed more resilien=
t.=20
XenServer host initiators  do something correct to recover and wonder how t=
hat
compares to the normal iSCSi initiator.   But unfortunately, XenServer
LVM-over-iSCSi  does not pass the message along to its Linux virtual drives=
 and
VMs in the same way as Windows VMs.    When the target drives became availa=
ble
again,   MS Windows virtual machines would gracefully recover on their own.=
  =20
All Linux VM  filesystems went read only and those VM machines required
forceful  rebooting.   mount remount would not work. > > I can read here th=
at,
years ago, a patch was in progress to give better integration with udev whe=
n a
device disconnects/reconnects. Did the patch got merged? Or does the one I
described above remain the expected behavior? Can be changed?> > Thanks.> -=
- >
You received this message because you are subscribed to the Google Groups
"open-iscsi" group.> To unsubscribe from this group and stop receiving emai=
ls
from it, send an email to open-iscsi+unsubscribe@googlegroups.com.> To view
this discussion on the web visit
https://groups.google.com/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41ee=
c5fb5b%40googlegroups.com.--
You received this message because you are subscribed to the Google Groups
"open-iscsi" group.To unsubscribe from this group and stop receiving emails
from it, send an email to open-iscsi+unsubscribe@googlegroups.com.To view t=
his
discussion on the web visit
https://groups.google.com/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562=
C5DC91%40eyeconsultantspc.com.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/5E9F80B2020000A10003875F%40gwsmtp.uni-regensburg.de.

--=__Part8BB447A2.1__=
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Description: HTML Document

<div>Hi!</div><div><br></div><div>Sorry, for top-posting, the stupid MUA he=
re can't quote...</div><div><br></div><div>On Linux and read-only: If the k=
ernel wanted to write a block, but got an I/O error (after waiting and retr=
ying), what should it do? The block to write wasn't written...</div><div>Se=
tting the filesystem to read-only is like pulling the plug in panic, but yo=
u can still see what you had on disk...</div><div><br></div><div>If the dis=
k becomes online again (and you detect that), the kernel would have to turn=
 back time to retry the op that failed (and all subsequent ones)...</div><d=
iv><br></div><div>So reboot (letting the user to roll back time, i.e.: redo=
 anything) is the better choice IMHO.</div><div><br></div><div>There's a go=
od reason for NFS hard-mounts, waiting "forever". Maybe iSCSI needs that ,t=
oo ;-)</div><div><br></div><div>Regards,</div><div>Ulrich<br></div><br><div=
 class=3D"GroupWiseMessageBody"><span class=3D"GroupwiseReplyHeader">

&gt;&gt;&gt; &lt;robert@eyeconsultantspc.com&gt; 21.04.2020, 17:20 &gt;&gt;=
&gt;

<br></span><div>Wondering myself.</div><br><div dir=3D"ltr"><blockquote typ=
e=3D"cite">On Apr 21, 2020, at 2:31 AM, Gionatan Danti &lt;gionatan.danti@g=
mail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">[reposting, as the previous one see=
ms to be lost]<br><br>Hi all,<br>I have a question regarding udev events wh=
en using iscsi disks.<br><br>By using "udevadm monitor" I can see that even=
ts are generated when I login and logout from an iscsi portal/resource, cre=
ating/destroying the relative links under /dev/<br></div></div></blockquote=
><div><br></div><div>So running =E2=80=9Cudevadm monitor=E2=80=9D on the in=
itiator, you can see when a block device becomes available locally. &nbsp;&=
nbsp;</div><div><br></div><br><blockquote type=3D"cite"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><br></div></div></blockquote><blockquote type=3D"cite"><div =
dir=3D"ltr"><div dir=3D"ltr">However, I can not see anything when the remot=
e machine simple dies/reboots/disconnects: while "dmesg" shows the iscsi ti=
meout expiring, I don't see anything about a removed disk (and the links un=
der /dev/ remains unaltered, indeed). At the same time, when the remote mac=
hine and disk become available again, no reconnection events happen.<br></d=
iv></div></blockquote><div><br></div><div>As someone who has had an inordin=
ate amount of experience with the iSCSi connection breaking ( power outage,=
 Network switch dies, &nbsp;wrong ethernet cable pulled, the target server =
machine hardware crashes, ...) in the middle of production, the more info t=
he better. &nbsp; Udev event triggers would help. &nbsp; I wonder exactly h=
ow XenServer handles this as it itself seemed more resilient. &nbsp;</div><=
div><br></div><div>XenServer host initiators &nbsp;do something correct to =
recover and wonder how that compares to the normal iSCSi initiator. &nbsp;&=
nbsp;</div><div><br></div><div><div>But unfortunately, XenServer LVM-over-i=
SCSi &nbsp;does not pass the message along to its Linux virtual drives and =
VMs in the same way as Windows VMs. &nbsp; &nbsp;</div><div><br></div><div>=
When the target drives became available again, &nbsp; MS Windows virtual ma=
chines would gracefully recover on their own. &nbsp; &nbsp;All Linux VM &nb=
sp;filesystems went read only and those VM machines required forceful &nbsp=
;rebooting. &nbsp; mount remount would not work.&nbsp;</div></div><div><br>=
</div><div><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D=
"ltr"><br>I can read here that, years ago, a patch was in progress to give =
better integration with udev when a device disconnects/reconnects. Did the =
patch got merged? Or does the one I described above remain the expected beh=
avior? Can be changed?<br><br>Thanks.<br></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/13d4c963-b633-4672-97d9-dd41eec5fb5b%40g=
ooglegroups.com</a>.<br>
</div></blockquote>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91%40eyeconsultants=
pc.com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https:=
//groups.google.com/d/msgid/open-iscsi/9D54680A-F97E-4465-BA6C-566562C5DC91=
%40eyeconsultantspc.com</a>.<br>
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/5E9F80B2020000A10003875F%40gwsmtp.uni-regensburg.de?u=
tm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/op=
en-iscsi/5E9F80B2020000A10003875F%40gwsmtp.uni-regensburg.de</a>.<br />

--=__Part8BB447A2.1__=--

--=__Part8BB447A2.0__=--
