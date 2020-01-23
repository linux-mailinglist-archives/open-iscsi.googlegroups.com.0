Return-Path: <open-iscsi+bncBC755V5RXMKBB6VVVDYQKGQEKZULMFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E07F1473A1
	for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 23:15:23 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id l5sf87762qte.10
        for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 14:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V4q7wfWSJA8dAc2BLVLswJLhsPeBlWLZn5HMhu24D9w=;
        b=BbHxHEcpbQ9Q2+eYcGJmzg2MjkxDrQ6Jg/NJ1KXOW0a8uv3Q58GTBdRSZoA45DgDss
         N51FNyNpugi13CMQ4xgfHeI96GP/6bPfWxPBta2f6Pb0ljThgm/vUpmprYwiCLtxfBZu
         aAQ6ZMfjPorX5pstwVOcwtQJIbJFYTchfSR5axC/XzR3j4tfl5SE7efAFplNGDGL6+lT
         oRudpt5MAA3mGNfAXXT6wMzcX84JMbQet6b81K35BOtDCgjk5sGcXA5j3uaoN55o75NY
         TLYFzZE/aelDNpkTXPxH7uUod25wpwM1RE1hbTKd2QslqM345+ycc4sm0miLWsP3cTxm
         rhMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V4q7wfWSJA8dAc2BLVLswJLhsPeBlWLZn5HMhu24D9w=;
        b=tw6MPQ3+j21Rg3ly3kFuQFr/w8MYWuKjTTTx01t6QCT0qo/dEeKZbYlwvcn2odp2Mu
         z4+1C1j+oKWD9xOotzbIaoUQghzvIPUFZmxZMRckWjmuKoGkXOek8Jrmh2tmTaeZi0B2
         V+SgEcMKo4Cg6JU+QJP5+yAVgxk5XHf2OckhE3lqvLKehVCC/HxXJJPAyIIrPblLZPMk
         2XhPfLbZVDeoipfAazrJWWpVGHR25+MVO2k6ESOehMzmRK8aP6ptTWJOl1LeYceZqf69
         SzqrSUCwh2FRwrNoUp2TetfsO4t+wl25M4lzqKZEk9YQSfKQVRsjk02YUWFj/JS/EFSC
         wa1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V4q7wfWSJA8dAc2BLVLswJLhsPeBlWLZn5HMhu24D9w=;
        b=bQDwlsTlnaCZ8M9eAkKtSiyNoQ8wpZb3CeLWfKlUMsr2uJjf+PnJ2AbjlLrGmjSIvE
         VXrw1+Uc1dm3mWQRSi4ek7uW1F+9frnWGLP01LSAnRHWJN6s1W0YPHVFyrnGsmYjt5yA
         JVkLyEPI/qACMrH5OwaHh3ayHTznMxR5d2OI0ITeyKAE84Xf6zTBOVg7tqc2krSgWcP5
         m1M/GfjCXCziSTxuGd3GNIf6TKqpEyyvmguKxeEB5cLBcB3oWIPPrvjAYgndYo88BRqW
         pkgIlh1mAa67PDqO726EHHWWTwBCX644y83jleRBvl7tweFtOPv/KBjdg16raAe+eC1m
         j4Kw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXdp/eTMZmU1oKE4czC3tRx/4JY2CDR+r0sh2PX5aGQIlL++7OH
	USv15zltXaxhdt9cELeZyF0=
X-Google-Smtp-Source: APXvYqxj9jIgKeT4JAk5C9sWmdNc47XyGpdCawGovazhKd/4rGhv5ijrmQddAbz2BWgCNhFbbZe/Xw==
X-Received: by 2002:a05:620a:1030:: with SMTP id a16mr430223qkk.1.1579817722410;
        Thu, 23 Jan 2020 14:15:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:312d:: with SMTP id g42ls4414qtb.8.gmail; Thu, 23 Jan
 2020 14:15:22 -0800 (PST)
X-Received: by 2002:ac8:4092:: with SMTP id p18mr423168qtl.19.1579817721916;
        Thu, 23 Jan 2020 14:15:21 -0800 (PST)
Date: Thu, 23 Jan 2020 14:15:21 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f980a812-7db6-4c1e-94e3-bae0eefb3ec4@googlegroups.com>
Subject: Version v0.100 of open-isns released
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3020_1040138623.1579817721349"
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

------=_Part_3020_1040138623.1579817721349
Content-Type: multipart/alternative; 
	boundary="----=_Part_3021_1744585116.1579817721350"

------=_Part_3021_1744585116.1579817721350
Content-Type: text/plain; charset="UTF-8"

Hello:

I've released version v0.100 of open-isns. This version includes:

* fixes to IPv6 handling
* fixes to existing test suite for openssl
* adding new python3-based unittests, to replace deprecated perl-based tests

Please help yourself, at https://github.com/open-iscsi/open-isns


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f980a812-7db6-4c1e-94e3-bae0eefb3ec4%40googlegroups.com.

------=_Part_3021_1744585116.1579817721350
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello:</div><div><br></div><div>I&#39;ve released ver=
sion v0.100 of open-isns. This version includes:</div><div><br></div><div>*=
 fixes to IPv6 handling</div><div>* fixes to existing test suite for openss=
l</div><div>* adding new python3-based unittests, to replace deprecated per=
l-based tests</div><div><br></div><div>Please help yourself, at https://git=
hub.com/open-iscsi/open-isns</div><div><br></div><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f980a812-7db6-4c1e-94e3-bae0eefb3ec4%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/f980a812-7db6-4c1e-94e3-bae0eefb3ec4%40googlegroups.com</a>.<b=
r />

------=_Part_3021_1744585116.1579817721350--

------=_Part_3020_1040138623.1579817721349--
