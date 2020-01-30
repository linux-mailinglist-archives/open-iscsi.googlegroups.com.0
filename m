Return-Path: <open-iscsi+bncBC755V5RXMKBBGG5ZTYQKGQESHKYYGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7379414E340
	for <lists+open-iscsi@lfdr.de>; Thu, 30 Jan 2020 20:29:29 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id a13sf2983280qtp.8
        for <lists+open-iscsi@lfdr.de>; Thu, 30 Jan 2020 11:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=shen3Jnt6+4ZwDZd5cRUrqN0xxvyZ1zZuxvyQNP7m8Q=;
        b=DTMvKX/R+/nEq48iUjY8/Wx3oTCy2xT9GfV5+4vmbUyezryFEvEdbKVfeVDbzq73AC
         nibo4ylUkJbp9Rib/3M2jfWCeNyyLCUTFQc1Ml6LZg1caYJQOp1uvRalUzUxQIky+a5X
         f7vus6aHJPYWlLgu/O+83EUvZnQEci6lFOTJQ5a8omT1RFmP5ctpgdWTX586HFzNd6+p
         ZNA2dgDl1CRHgq700Oe/mnq1GHT4iybTeUeDZb5FOLxFv2bSsaaLpSzoQDm81QkoN0TC
         DTYogmtPRpv83OfRIFNmfCh9rDFny9cV1jl0+J2CV8L5Dju/RFtAt8eaRqHUyD6uaJMp
         ETMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=shen3Jnt6+4ZwDZd5cRUrqN0xxvyZ1zZuxvyQNP7m8Q=;
        b=aPuEt8o7aM5vYglMoSogzF7zKqbbOiRX9kA2C+SWN/ISoUnC1rWrAezu/NGbep+uhk
         QbVqBOf/IFfzZsS6keEgU8lVHr4TCGAg9B4lfBqpWIm14D2jfh9RsLRCUqlEulI+MWr5
         LrmI4wj7Wx/NwRMA7atj1Hhlw0X1Kw4dChKqc7wmjPwVw0+OqSopHqifnrm0ZNpcfNUe
         jx/fQZyw5xKR/YKlSXW5xICpe837wU5/xicGJzQxMqf6W7/G8ZqpsAD3tI0y9/limZcj
         2UCNU3LSLTt54OA/eseamMnn554A+T2MVxBqacFZ6xSXqx/G/Jhzw/hIdGfpp/I0MPt6
         aCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=shen3Jnt6+4ZwDZd5cRUrqN0xxvyZ1zZuxvyQNP7m8Q=;
        b=ab0HKKfkL7BKpwxoPPzYKKvRqEShv5O9SBs2NTT38cpBt1OFxo+zs1i1wKKyRa4M1T
         eQs9sCH6kLD5UZPiWIXvA5zk0QDJO2RnnerN1frcOMp7a/KR5Qm9ml7duUPI5goZjdOe
         o55fcZL8YhDR4N9rYQ+FQFfeRgSihIzUQg5+gC7sHHYTUSZcjzL3KYz+9opr0/v/BkUd
         CO7x6Fhf9dpr93iDuXa412v+LBzIdX08MEkWJqhF5h0jusetELwRBRjGRZUEzdgrz/6Z
         phZ2jwOnSsNq4A+BaSskH9L+2dh16hPCoKT2S4yQ0VWix6eF0RnNMF7D1GfCF5C16v23
         z2qg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV+RfB8Uk6kgiu5rtnLyzLdxq6STdRk3WZXKIMpk01BcGk0i4y4
	6TmboEwwydy6R2lNrbKgB9o=
X-Google-Smtp-Source: APXvYqzGU5kENCP6etj2jn4gnPAbZNgC2iT3B8lB/ZHLB8I5sbWNptfzGWWBjEOT+EQJcKnOYypN2Q==
X-Received: by 2002:ac8:1184:: with SMTP id d4mr6737463qtj.104.1580412568280;
        Thu, 30 Jan 2020 11:29:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:73d8:: with SMTP id v24ls1625515qtp.3.gmail; Thu, 30 Jan
 2020 11:29:27 -0800 (PST)
X-Received: by 2002:ac8:65d3:: with SMTP id t19mr6676416qto.369.1580412567673;
        Thu, 30 Jan 2020 11:29:27 -0800 (PST)
Date: Thu, 30 Jan 2020 11:29:26 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <cd66a3d8-6351-41b3-8126-3ab22341e6d8@googlegroups.com>
In-Reply-To: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
References: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
Subject: Re: iSCSI and Ceph RBD
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1634_711450994.1580412566820"
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

------=_Part_1634_711450994.1580412566820
Content-Type: multipart/alternative; 
	boundary="----=_Part_1635_521219499.1580412566820"

------=_Part_1635_521219499.1580412566820
Content-Type: text/plain; charset="UTF-8"

Did Donald answer your question(s)?

On Friday, January 24, 2020 at 1:50:28 PM UTC-8, Bobby wrote:
>
> Hi,
>
> I have some questions regarding iSCSI and Ceph RBD. If I have understood 
> correctly, the RBD backstore module 
> on target side can translate SCSI IO into Ceph OSD requests. The iSCSI 
> target driver with rbd.ko can expose Ceph cluster
> on iSCSI protocol. If correct, then that all is happening on target side.  
>
> My confusion is what is  happening on client side?
>
> Meaning, does linux mainline kernel code called "rbd" has any role with  
> Open-iSCSI initiator on client side? To put it more simple, 
> is there any common ground for both protocols (iSCSI and rbd) in the linux 
> kernel  of the client side? 
>
> Thanks :-)
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cd66a3d8-6351-41b3-8126-3ab22341e6d8%40googlegroups.com.

------=_Part_1635_521219499.1580412566820
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did Donald answer your question(s)?<br><br>On Friday, Janu=
ary 24, 2020 at 1:50:28 PM UTC-8, Bobby wrote:<blockquote class=3D"gmail_qu=
ote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padd=
ing-left: 1ex;"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have s=
ome questions regarding iSCSI and Ceph RBD. If I have understood correctly,=
 the RBD backstore module=C2=A0</div><div>on target side can translate SCSI=
 IO into Ceph OSD requests. The iSCSI target driver with rbd.ko can expose =
Ceph cluster</div><div>on iSCSI protocol. If correct, then that all is happ=
ening on target side.=C2=A0=C2=A0</div><div><br></div><div>My confusion is =
what is=C2=A0 happening on client side?</div><div><br></div><div>Meaning, d=
oes linux mainline kernel code called &quot;rbd&quot; has any role with=C2=
=A0 Open-iSCSI initiator on client side? To put it more simple,=C2=A0</div>=
<div>is there any common ground for both protocols (iSCSI and rbd) in the l=
inux kernel=C2=A0 of the client side?=C2=A0</div><div><br></div><div>Thanks=
 :-)</div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cd66a3d8-6351-41b3-8126-3ab22341e6d8%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/cd66a3d8-6351-41b3-8126-3ab22341e6d8%40googlegroups.com</a>.<b=
r />

------=_Part_1635_521219499.1580412566820--

------=_Part_1634_711450994.1580412566820--
