Return-Path: <open-iscsi+bncBC6MFJWO34DBBFGV772AKGQEOYHZ2GI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id A37D01B384A
	for <lists+open-iscsi@lfdr.de>; Wed, 22 Apr 2020 08:56:20 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id t62sf444446wma.0
        for <lists+open-iscsi@lfdr.de>; Tue, 21 Apr 2020 23:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587538580; cv=pass;
        d=google.com; s=arc-20160816;
        b=kp8LN5biK+oSSwrjnsMA0y0BJkDvhGrUgzygbHySYy8kFuZ0isOG+gb0/c/A7Y7SMS
         aO6fjb4q8S0d6P0ef8xyPxGLHF7Q/vLcwYlztCymKovd9Pw9Hakj2ttp6drYS8rNOpte
         sygBbI60T3ybjN/ECAOxMaM1A4rfXv2Ake9z+grpz/hG25FXet/HOVOTpoBK79oZC7De
         ItYNjBxMA9wBR656NQIoGh/4kNmijZ+0YbtUsC9V/B/U/jr0KNv7EHmhTSAtgAeYN1Or
         pK3jJXqRV2e6JyqRT9v514T3Hb2Xt2BWrF2RPuMpikSpqQNXjoNWDKlE/RocyA92BagI
         P+Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:to:from:date:message-id:sender:dkim-signature;
        bh=sA381dQJptsD2LLYtaZI/9k1HgV8166qHKFYkWbYAp0=;
        b=qlWjIKIEHaU0MWLYK/pVpO56I5mM8BBOjt5/K1XnHcqqz0E7qjFtlMRPnbLrXU+QS6
         n9KaRL+HQgD/M8c9xIyF7sg59sPORRPZBssskk5TwOJJuNM/Cd3Om3wuAmZeJlHId+bg
         A06TU7421zXwtvwFeQbRSnxG+zPmOFrwRyUagYHkD6wVnNIYsO4jf7JY4iOj8IooR3p+
         ZX0vWTdPC+HmLTLWi9zzQAyoBacRamW8VMdCsfqo76ydKAU9P3VTPmBTSCRD2WYyLdg0
         DF09LSi98LTrq/cClCmxaY/rUOJjxzPQrgXBOZzu3QCLOmDmXTYWot/MbkbIqeeFLc3d
         Qydg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sA381dQJptsD2LLYtaZI/9k1HgV8166qHKFYkWbYAp0=;
        b=h++FlDzoKN2voOM6tQUvy9Mw1KvBjdcTJAjPPGFtEWbASHNQs9ou+6uMXTcQi++gK+
         Sy599n7R1GdM0jwXQc1LqBUK7xhIOlKmJR7U6oZrb+57cwDVgkaS5B5hrlXWEW0S47de
         hTh4zU20QdzZVxoS5QvOOc+zBgCTP1zZGejiJb7pWPSAAs+8IIQGKyaLSyrRFY49hH7o
         7z5dfPkSrkRn7axvgBUV7j2ranOrHOYvObVlm/scxLRgb0w/xMIAAvdo6UczsDYx3/Ul
         Z2zEhwJhR4JT7JxW4z1GlH0lgmc4aqtkm5Hy/YlNNmRcEuJ0VowNUUCAGRmqw6HfQO7q
         fa+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sA381dQJptsD2LLYtaZI/9k1HgV8166qHKFYkWbYAp0=;
        b=e3yVgUwaBz09l2T91kamsTwtng7qsV1PXM0btLKjLsKyG1PV/uMGruKqBDqeMwiB5T
         Uu7sL+zhnTrVgM+u9ntZ0qxr8GPJGirdekSEw6dyuyVcqITJesBlskxWNJm25+yEwO6X
         nYzg8xcuk9pRmD0KvdUUno2KPAURQhecvGjs3zzCb0OjpmeEg7OB9aOzooXXLMC6dgJy
         KgT6v30zWCnY6B6YA2aojqAwyLTmuq95bvPqUTEr/gKefkIEjfCGeCTe/354VNoNm1WK
         V1tilvbsQhg+/GK0CEd3Y9i48JE5+IKFuebpeU+hU/1QcTBqmZov6WjJGn7I4+uNa/Lj
         7xkA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AGi0Puat0VSFxg8ldvQC5exYb1CIVZ2CReUORkeRQ7WJmwbJyrk7Nong
	9GszJsiKqQBDtwN0nZZOi48=
X-Google-Smtp-Source: APiQypJY3ssZY9/xjp1EXte0hxAUtZ61nP5z+TLnYoosfod5DUWOwhV+n1ASHtpDcklFoMJwa4sdLA==
X-Received: by 2002:adf:fed2:: with SMTP id q18mr22096898wrs.157.1587538580365;
        Tue, 21 Apr 2020 23:56:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:668b:: with SMTP id l11ls935020wru.0.gmail; Tue, 21 Apr
 2020 23:56:19 -0700 (PDT)
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr28620941wrt.302.1587538579788;
        Tue, 21 Apr 2020 23:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587538579; cv=none;
        d=google.com; s=arc-20160816;
        b=b/zE/PHTOF1HoTNqI2VUF99VlXJgXXU/LkrjZ46cNMoHe5FV780QrMA+132Dyu99v0
         wB5yGyYRLe6p7tmCla62aRKCvsp00G8IrxCfPB4GXgeqGAK+YRowouIC4mRdJ6shNAEx
         BuEV8RK25pxkzgwps1Ti2uzre78/p2aNaXLjEwmpXC3fcXEuE4kkV2BTx06/YjLQK9Qs
         Ht06OmMPLkwL6RqQCDsV2MPBGGVqJ0GLLuDjIDg1ujSM7Q9ghenF6P0Bnm20gZt1E7fK
         oj5EpFCz1CegUThYECMdUXtKcm2J67s2ckAJDY7eujpqvY7J4tyRdkZXB4v2bB30qpj/
         5a/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=zUMDOTVxjojNIHNjJlkVHxIN6C+MUkea5wXhgAVkArw=;
        b=fpIyb1QCFmPUg5CWTiJctiBqiT/3sWteiigXLo/9H3En3Jv9rYEJTYYSDUOsHrMVKT
         266SphpN4QiLk8OfbEECVarTRkWU34NOjn3td2vEn7496zTm/g6fighdW6c0+LcWIhPs
         sAF2ZeGfJrXaLuAFQ1GdDGCH+xFSrnoscJzHptSGoOxSeHVHEOr+boNAyb+b1t8nhvke
         hoLLqF1fxVOvdp2sdzjyvyjHnvMw6nzepJ6jnIWe9ffpRT2OWxNnrWs2IGDvcvqLwdSh
         aqmjkGmXyO2fEoUs/EiCrju76jtOPDkngGbyho8JaxOl+CnFyOp0pvuzvM6focAsNMSP
         LdRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id y1si259561wrh.1.2020.04.21.23.56.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Apr 2020 23:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E01936000052
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 08:56:18 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 97B83600004D
	for <open-iscsi@googlegroups.com>; Wed, 22 Apr 2020 08:56:18 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 22 Apr 2020 08:56:18 +0200
Message-Id: <5E9FEA90020000A1000387D3@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Wed, 22 Apr 2020 08:56:16 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: udev events for iscsi
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <618_1587494664_5E9F3F08_618_445_1_7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
In-Reply-To: <618_1587494664_5E9F3F08_618_445_1_7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> The Lee-Man <leeman.duncan@gmail.com> schrieb am 21.04.2020 um 20:44 in
Nachricht
<618_1587494664_5E9F3F08_618_445_1_7f583720-8a84-4872-8d1a-5cd284295c22@goo=
glegr
ups.com>:
> On Tuesday, April 21, 2020 at 12:31:24 AM UTC-7, Gionatan Danti wrote:
>>
>> [reposting, as the previous one seems to be lost]
>>
>> Hi all,
>> I have a question regarding udev events when using iscsi disks.
>>
>> By using "udevadm monitor" I can see that events are generated when I=20
>> login and logout from an iscsi portal/resource, creating/destroying the=
=20
>> relative links under /dev/
>>
>> However, I can not see anything when the remote machine simple=20
>> dies/reboots/disconnects: while "dmesg" shows the iscsi timeout expiring=
, I=20
>> don't see anything about a removed disk (and the links under /dev/ remai=
ns=20
>> unaltered, indeed). At the same time, when the remote machine and disk=
=20
>> become available again, no reconnection events happen.
>>
>=20
> Because of the design of iSCSI, there is no way for the initiator to know=
=20
> the server has gone away. The only time an initiator might figure this ou=
t=20
> is when it tries to communicate with the target.

My knowlege of the SCSI stack is quite poor, but I think the last revisions=
 of parallel SCSI (like Ultra 320 (or was it 160?)) had a concept of "domai=
n validation". AFAIK the leatter meant measuring the quality of the wires, =
adjusting the transfer speed.
While basically SCSI assumes "the bus" won't go away magically, a future iS=
CSI standard might contain  regular "bus checks" to trigger recovery action=
s if the "bus" (network transport connection) seems to be gone.

>=20
> This assumes we are not using some sort of directory service, like iSNS,=
=20
> which can send asynchronous notifications. But even then, the iSNS server=
=20
> would have to somehow know that the target went down. If the target=20
> crashed, that might be difficult to ascertain.

To be picky: If the traget went down (like a classical failing SCSI disk), =
it could issue some attention message, but when the transport went down, no=
 such message can be received. So I think there's a difference between "tar=
get down" (device not present, device fails to respond) and "bus down" (no =
communication possible any more). In the second case no assumptions can be =
made about the health of the traget device.

>=20
> So in the absence of some asynchronous notification, the initiator only=
=20
> knows the target is not responding if it tries to talk to that target.
>=20
> Normally iscsid defaults to sending periodic NO-OPs to the target every 5=
=20
> seconds. So if the target goes away, the initiator usually notices, even =
if=20
> no regular I/O is occurring.

So the target went away, or the bus went down?

>=20
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
>=20
> So what exactly do you think the system should do when a connection "goes=
=20
> away"? How long does it have to be gone to be considered gone for good? I=
f=20
> the target comes back "later" should it get the same disc name? Should we=
=20
> retry, and if so how much before we give up? I'm interested in your views=
,=20
> since it seems like a non-trivial problem to me.

IMHO a "bus down" is a critical event affecting _all_ devices on that bus, =
not just a single target. Well, it might be some extra noise if those other=
 targets have no I/O outstanding, but it's better to know that the bus is d=
own before initiating a transfer rather than concluding seconds later that =
the target seems unreachable for some reasons unknown.

>=20
>>
>> I can read here that, years ago, a patch was in progress to give better=
=20
>> integration with udev when a device disconnects/reconnects. Did the patc=
h=20
>> got merged? Or does the one I described above remain the expected behavi=
or?=20
>> Can be changed?
>>
>=20
> So you're saying as soon as a bad connection is detected (perhaps by a=20
> NOOP), the device should go away?=20

Maybe the state should be similar to a device being in power-save mode: It'=
s not accessible right now, but should be woke up ASAP. See my earlier comp=
arison to NFS hard-mounts...

Regards,
Ulrich

>=20
>>
>> Thanks.
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
> https://groups.google.com/d/msgid/open-iscsi/7f583720-8a84-4872-8d1a-5cd2=
8429=20
> 5c22%40googlegroups.com.



--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/5E9FEA90020000A1000387D3%40gwsmtp.uni-regensburg.de.
