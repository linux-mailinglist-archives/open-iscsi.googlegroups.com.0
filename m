Return-Path: <open-iscsi+bncBC755V5RXMKBB2PJXKUQMGQEM63KCDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x37.google.com (mail-oa1-x37.google.com [IPv6:2001:4860:4864:20::37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6B67CC8AB
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Oct 2023 18:23:08 +0200 (CEST)
Received: by mail-oa1-x37.google.com with SMTP id 586e51a60fabf-1e9f6006f9csf5417759fac.3
        for <lists+open-iscsi@lfdr.de>; Tue, 17 Oct 2023 09:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1697559786; x=1698164586; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8kX62wLNs30d3dZX5gFiQf0Oi2X/UBVgznCbEcoIaqw=;
        b=BBBCWZbIEQkd0HSns4Fm/JsBcWZggZ783BLzDmj3uijRiVTMLvUY4EdlN5jj9te4dw
         oE7Jz5q38+dlikmxPAInVrgPxeAOdbpXfJH3dLt6tUDC4Y2pGkghA/NLsLHvn1cKkYqU
         jFnIyYUkDH3KHBCgi8ozBVuhXld51eRtje+a4TF0730PTctWy2HX9uZsEzPIchqhowR4
         Fd9/OU+QOGmd5TEQYgsL59Mw4VveJf3N1Fug1MhxJ9/YS++72dyari5EIFiCbXeGtZ5S
         /PM7UAUOvP3FX3JDpGwBl6dIuLHxDbEshbq0bl3Ulk0ew/XfFFhL32RYHLKiebVhF4Wg
         Mjug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697559786; x=1698164586; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8kX62wLNs30d3dZX5gFiQf0Oi2X/UBVgznCbEcoIaqw=;
        b=EKXbWzcDOE1BNYhye1oyF18oaarKfAtCT14oQPoh2ud9C09qm551lOmer/AIVjqNx/
         CPXseHDpFmlwgMNOeojXttlQOmUA8cV7Gq+7zsdBSWM8g4j4iLlwe4w8TuvBUCdK3H2H
         pniEZ/yFp7BnNlJ0e68lkzRWCO1EqGzBzM2n6pG5ixnBrVOuu/1QrIM6QuJWokC0oGHT
         kUy6xKvCQSTjSGubZJteYKnm7uW63EvypBl4Qjw1fspXkPRvztahKDHomBhZ4PjUCNTU
         kKkjImB+fVy/1lB0KDylrtfIURPWyU+FF5yExC84+OgffVBMkjlZXElYEVtjok3Bq3OB
         3NSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697559786; x=1698164586;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8kX62wLNs30d3dZX5gFiQf0Oi2X/UBVgznCbEcoIaqw=;
        b=EztraUz2N5c55o3Yc2dLnBZW83J5DBc1wqPaUrcaqFzRoeh49pl23fBvjLTbWtE8Yo
         P2bU3Mn+KzQcochcpKiByfeppqgQW2/3p96X9JGX/e8h86lNwKWp03XtcT8LpEpdExxf
         A0SNqN+Z2DmgKEDnQ5HaVdOjqX1I3bkuK48cdM1rNWMp5LliIXgrCVl5XKtPt5xF1LOp
         hgpeq9O8WDD5CW5Gc1eABGrfE7mhl4E9JQXAn/aPEKqjo/S7YvpEzfvPaotPYnPasgLG
         G2FIweZ3+wMoe5q4p5yhplBLDskUqC65gxaBvYSC8J+Ctm19Zh6cqEYx0wFyWMGsJ3o5
         kRvg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0Yw6nQ7CDEk4QNZx7i3Pm5IZ8lgwMY7BElvThDMa1zaNyKgTc8US
	zcKAwneQAk+vkp5d4zuT/5g=
X-Google-Smtp-Source: AGHT+IFqMOT/in5DFoiOmHlPO4mAWcYINACS9vXP5CJuqVUcDxN7rYMpMIeKPO3h2FAA0ZEuoLZmDA==
X-Received: by 2002:a05:6870:6c0f:b0:1ea:137:7dba with SMTP id na15-20020a0568706c0f00b001ea01377dbamr2958894oab.10.1697559786693;
        Tue, 17 Oct 2023 09:23:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6871:3144:b0:1dc:797a:dae8 with SMTP id
 lu4-20020a056871314400b001dc797adae8ls1281327oac.0.-pod-prod-01-us; Tue, 17
 Oct 2023 09:23:03 -0700 (PDT)
X-Received: by 2002:a05:6808:3602:b0:3ae:61f:335e with SMTP id ct2-20020a056808360200b003ae061f335emr935148oib.5.1697559783211;
        Tue, 17 Oct 2023 09:23:03 -0700 (PDT)
Date: Tue, 17 Oct 2023 09:23:02 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <e0441182-8487-46d0-a7b7-a226b57e7514n@googlegroups.com>
Subject: Updatges to iscsiuio
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1098_98400001.1697559782574"
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

------=_Part_1098_98400001.1697559782574
Content-Type: multipart/alternative; 
	boundary="----=_Part_1099_577359490.1697559782574"

------=_Part_1099_577359490.1697559782574
Content-Type: text/plain; charset="UTF-8"

Hi All:

A co-worker and I have recently pushed some updates to iscsiuio to make it 
more reliable. The first wave has been merged, and I have just submitted a 
pull request on github for the 2nd (and last) group of changes.

If you care to review them, please check out github pull request 428 
<https://github.com/open-iscsi/open-iscsi/pull/428>

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e0441182-8487-46d0-a7b7-a226b57e7514n%40googlegroups.com.

------=_Part_1099_577359490.1697559782574
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All:</div><div><br /></div><div>A co-worker and I have recently pus=
hed some updates to iscsiuio to make it more reliable. The first wave has b=
een merged, and I have just submitted a pull request on github for the 2nd =
(and last) group of changes.</div><div><br /></div><div>If you care to revi=
ew them, please check out <a href=3D"https://github.com/open-iscsi/open-isc=
si/pull/428">github pull request 428</a></div><div><br /></div><div>Thanks!=
<br /></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/e0441182-8487-46d0-a7b7-a226b57e7514n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/e0441182-8487-46d0-a7b7-a226b57e7514n%40googlegroups.com</a>.=
<br />

------=_Part_1099_577359490.1697559782574--

------=_Part_1098_98400001.1697559782574--
