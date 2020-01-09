Return-Path: <open-iscsi+bncBC24JGEJRMKRBDVX3XYAKGQE5QO547Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F405135ECE
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jan 2020 17:57:51 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id n128sf4553331qke.19
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Jan 2020 08:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nSpmH7/H8DQBUY9dqED1KjlHEow9QyQEbKplw+tRifs=;
        b=WpTTZ8MUwlcfGLgIL4cMSatuGM+fmP0nAThMTBI9NWd6aaozfhX8E6/qPvUTVUHDoW
         MiqJ1rO3P01FgjZyU/Mw3jmaATJiVeUth0FspYNTZL2EdjkesiVHT8/jOW/+Iw25EPmT
         3UHl5/QWIzFZHAWuvbxKa48+ZKMu2G980FC7CLmpPPjzAMauZYcOttWoCrCW8XOySuFK
         dCQ6mBF4r8PiCGHhDBlVHD+jYJUiXxkS623QAL1htNh1iKg2IOgIWA9hUPu47FnpaL5h
         n0bdEuMXaEpT/sXCNJemFCF3NLGT9rz8yPgGvBSQiFfWGbBteNxgpRVrckPabMZ/sOnT
         ivMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nSpmH7/H8DQBUY9dqED1KjlHEow9QyQEbKplw+tRifs=;
        b=NtRxU3dAA05jAlQZ50oItERPc+EnRM0szyv3vYzFq8AQ4Dw6fcqb+l12qPm4ECSIN0
         pj22IDpY6aYoiHNQIuwZFHfu1XEjnR+oMHszU/kvDVUIFbzP9iprkWW8XUE4jVDTqUpm
         5qi0vna+yEoXojpdPwuawbfeugzyPwp4FpfxSZ9gtewOzciST4Y8lM8ZMt+NNGc1IcjH
         UUfFAj97wkH8RjYORSZ3rGfilKhF0u9Yy63SFOxXO5K95cF9y4YG1/YL0QRWvuZSRU8k
         WZy8fq6o3EGBs4eV9vYAII6Z8yf5UpMrTS9cqivsP3AeztYq0pjyiObx8ouzbcmffx4U
         cZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSpmH7/H8DQBUY9dqED1KjlHEow9QyQEbKplw+tRifs=;
        b=l2JqmITqpEz9SNgy4kaJTyqfA1NQn7M1y3ICY7HEhQCrD3LpF/nqPIgPr1JGpLULtc
         WLHIQrV9KTed7bnldb0VfvZPf9DFtpDbbqbrFgZDCuYNVJo9CclHVnvzqZdJkSfD3An6
         Sp+3h1NfqYylF/nSF8pyNqw3HBhqcdhT1//lrovgm/ZST9T0Yz97DglhSmbVHuMzzQFH
         +cUA7NW+tqRl22dTD/MZBGsaZdADvcu1Sn5bhuoIZUKgLQ27gNLj8TD26uwQYJnLH/RF
         XScGaXMaFYxVcOcLIQxrJUi3isUUv0tlsGujd2CwHIg4WpInt2WSdfUYSJkizTR17KUZ
         K+zA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAU73vC9SdgHsmNuBWZv/4sO7fHckHnl4WtY6IMx5uzhF2jttbRN
	WtU6Mr3g10+72A4sWbIH2Bk=
X-Google-Smtp-Source: APXvYqxiarwkn+yyC8OjoI0yIMSGJOJ8jpIXh10gep91a0Ssl1amf2lPy3hL9hRLCZvaiT+Xm29x5Q==
X-Received: by 2002:ac8:3fd5:: with SMTP id v21mr8654954qtk.345.1578589070145;
        Thu, 09 Jan 2020 08:57:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e881:: with SMTP id a123ls1037362qkg.15.gmail; Thu, 09
 Jan 2020 08:57:49 -0800 (PST)
X-Received: by 2002:a05:620a:98f:: with SMTP id x15mr10342790qkx.462.1578589068582;
        Thu, 09 Jan 2020 08:57:48 -0800 (PST)
Date: Thu, 9 Jan 2020 08:57:47 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <587116d0-ebce-45b9-b5cf-e6fbc3437b41@googlegroups.com>
Subject: Two types of initiator stacks
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_357_122714118.1578589067824"
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

------=_Part_357_122714118.1578589067824
Content-Type: multipart/alternative; 
	boundary="----=_Part_358_1266801155.1578589067824"

------=_Part_358_1266801155.1578589067824
Content-Type: text/plain; charset="UTF-8"

Under section "How to setup iSCSI interfaces (iface) for binding" of 
README, there is this paragraph:

" To manage both types of initiator stacks, iscsiadm uses the interface (iface)
structure. For each HBA port or for software iscsi for each network
device (ethX) or NIC, that you wish to bind sessions to you must create
a iface config /etc/iscsi/ifaces. "



 Here I am confused. Which both types of initiator stacks we mean here?



Thanks !

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com.

------=_Part_358_1266801155.1578589067824
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Under section &quot;<span style=3D"color: rgb(36, 41,=
 46); font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, M=
enlo, monospace; font-size: 12px; white-space: pre-wrap;">How to setup iSCS=
I interfaces (iface) for binding&quot; of README, there is this paragraph:<=
/span></div><div><br></div><div><pre style=3D"box-sizing: border-box; font-=
family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monos=
pace; font-size: 12px; color: rgb(36, 41, 46); white-space: pre-wrap;">&quo=
t; To manage both types of initiator stacks, iscsiadm uses the interface (i=
face)
structure. For each HBA port or for software iscsi for each network
device (ethX) or NIC, that you wish to bind sessions to you must create
a iface config /etc/iscsi/ifaces. &quot;</pre><pre style=3D"box-sizing: bor=
der-box; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quot;=
, Menlo, monospace; font-size: 12px; color: rgb(36, 41, 46); white-space: p=
re-wrap;"><br></pre><pre style=3D"box-sizing: border-box; font-family: SFMo=
no-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monospace; font-s=
ize: 12px; color: rgb(36, 41, 46); white-space: pre-wrap;"><br></pre><pre s=
tyle=3D"box-sizing: border-box; font-family: SFMono-Regular, Consolas, &quo=
t;Liberation Mono&quot;, Menlo, monospace; font-size: 12px; color: rgb(36, =
41, 46); white-space: pre-wrap;"><span style=3D"color: rgb(34, 34, 34); fon=
t-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: norma=
l;">=C2=A0Here I am confused. Which both types of initiator stacks we mean =
here?</span><br></pre><pre style=3D"box-sizing: border-box; font-family: SF=
Mono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monospace; font=
-size: 12px; color: rgb(36, 41, 46); white-space: pre-wrap;"><span style=3D=
"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-si=
ze: 13px; white-space: normal;"><br></span></pre><pre style=3D"box-sizing: =
border-box; font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&qu=
ot;, Menlo, monospace; font-size: 12px; color: rgb(36, 41, 46); white-space=
: pre-wrap;"><span style=3D"color: rgb(34, 34, 34); font-family: Arial, Hel=
vetica, sans-serif; font-size: 13px; white-space: normal;"><br></span></pre=
><pre style=3D"box-sizing: border-box; font-family: SFMono-Regular, Consola=
s, &quot;Liberation Mono&quot;, Menlo, monospace; font-size: 12px; color: r=
gb(36, 41, 46); white-space: pre-wrap;"><span style=3D"color: rgb(34, 34, 3=
4); font-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space=
: normal;">Thanks !</span></pre></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/587116d0-ebce-45b9-b5cf-e6fbc3437b41%40googlegroups.com</a>.<b=
r />

------=_Part_358_1266801155.1578589067824--

------=_Part_357_122714118.1578589067824--
