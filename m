Return-Path: <open-iscsi+bncBC24JGEJRMKRBCPNS3XAKGQE6HKZA3I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C18F539F
	for <lists+open-iscsi@lfdr.de>; Fri,  8 Nov 2019 19:40:10 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id 2sf8224475qtg.8
        for <lists+open-iscsi@lfdr.de>; Fri, 08 Nov 2019 10:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9prIl9vWcUZGKqu2z7z+FDRMfWyA6dkW5dafjwIBMtg=;
        b=Qa6Bj8UiAAjV3QV/uwVzq2aT6RRlx7eHF/q4Da0c37PgJIrbQtEoCBvCSStAgl/6jm
         AbdIORTiHmpaKkYS4Mn93BbIvSPvtyoLmemmBtzHoQTjNseXwtUzA6VxCBB2kg+HBh9A
         fPt46OrbaKmvxOcn/tlXJiW76LdAa2MKajZUa0ElinfcqI6efO14oyC+qVcUAEG4/dlA
         Z4Bh9qraopoa5+78wbP/VAjoLyvnTWvV3MDQxHJ7exm6CWK3qsb43QT1+wEuxIu1FvY8
         BR5HPbeUv+WMA8NuOnphhmo1VglusPhj97s8gPGX/Avc9IEfFvtHGYJxo6S47sbda7m1
         mA2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9prIl9vWcUZGKqu2z7z+FDRMfWyA6dkW5dafjwIBMtg=;
        b=iRTlSSFJmdHDjObLU0zuLE5CqR2T0wZHzB8wDoCnRww/+gEgXcRe8gLnMrli0tWhm9
         MQD7yQKp+Qhs3YJF6zR+vcG/SvGa7ynt2GuYWa+dYoWXlU83ksY4X3ulrOkqz1k7Mu5D
         g8w9uaNqJQQsKJKb+sV+gjfkl0HAFxdHZCAL4XtcCPyInGrJDP7aqOpzoY6YipNh9Zx+
         vApfLqFogfXBIxeXT9PkOl8SpLEXMhIVlwL3d7isNDZhqLB9FHkZST1AQmT5qGMIuUFN
         7jQ/kBtThQT0Afr1SVn7jql46uwCp0+/GVpeUZL5pdcVSxmPP5suvOQJvPjpawi4/juI
         KfhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9prIl9vWcUZGKqu2z7z+FDRMfWyA6dkW5dafjwIBMtg=;
        b=HvHWt34uqnK8DwIy9Fi6RuLB4Gqyn3fOBZ3gaMoD1mWZWFK1IH10KpxqCydiXToeTQ
         cab5droA2zuUbeLaQUO1NJIuNRZgltcRw7V/P4fq2SPsM1ShWLHbxqMXg6UluW24L3Zj
         /WqdmFsdeQ/cSI65ZX3WvpjD8zvsZW/arXnI1W2SMBZmFbB72fvL8QYLBOXt+/of8nrV
         l4AoCHjEC+NnC6tnQAYwBphrbYcUCYwF7SgSv/b2pYhJyvtpLNGRdTUnYHPifk4HeoPp
         yziXxuC1OoOjH+LaJjPu3WQkMSo04c7Ga9SUqUd1FjV+DOffUNLbfmWbaaHQWvJqykKo
         EdXg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWzl0VoBGaMAEWdvpte4Df60r9IXZzpk6EGl6jOuPkfmBsa9/Hs
	pEXpgGoFSOOKOIiwClwU9kE=
X-Google-Smtp-Source: APXvYqxgUb/KLEgjPczYN99aYCZe6gu9WebSweHfqlhozG+gQf+X2MGbMDd2c7vzc0tD9TRFsYLMaw==
X-Received: by 2002:a05:620a:1319:: with SMTP id o25mr10285325qkj.83.1573238409290;
        Fri, 08 Nov 2019 10:40:09 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:85c1:: with SMTP id h184ls3505520qkd.3.gmail; Fri, 08
 Nov 2019 10:40:08 -0800 (PST)
X-Received: by 2002:a37:4d88:: with SMTP id a130mr10466414qkb.28.1573238408722;
        Fri, 08 Nov 2019 10:40:08 -0800 (PST)
Date: Fri, 8 Nov 2019 10:40:07 -0800 (PST)
From: Bobby <italienisch1987@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1972273e-83e5-4e7f-9c76-00d0deb31185@googlegroups.com>
In-Reply-To: <5DC3F334020000A100034E56@gwsmtp.uni-regensburg.de>
References: <8a89dcdb-8fae-4c97-9a76-db621b01bcaf@googlegroups.com>
 <3db42c4c-1a52-4716-ae8f-fe289da32cc0@googlegroups.com>
 <0c2592cf-ad61-4fe4-8006-63edabe4af7f@googlegroups.com>
 <5DC3F334020000A100034E56@gwsmtp.uni-regensburg.de>
Subject: Re: Re: iSCSI packet generator
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1406_2093149275.1573238408060"
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

------=_Part_1406_2093149275.1573238408060
Content-Type: multipart/alternative; 
	boundary="----=_Part_1407_556674645.1573238408061"

------=_Part_1407_556674645.1573238408061
Content-Type: text/plain; charset="UTF-8"


Hi Ulrich,

Thanks for the hint. Can you please help me regarding following two 
questions. 

- Linux block layer perform IO scheduling IO submissions to storage device 
driver. If there is a physical device, the block layer interacts with it 
through SCSI mid layer and SCSI low level drivers. So, how *actually* a 
software initiator (*Open-iSCSI*) interacts with "*block layer*"? 

- What confuses me, where does the "*disk driver*" comes into play?

Thanks :-)



>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40googlegroups.com.

------=_Part_1407_556674645.1573238408061
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hi Ulrich,<br><br>Thanks for the hint. Can you please =
help me regarding following two questions.=C2=A0<br><br><div><div>-=20

Linux block layer perform IO scheduling IO submissions to storage device dr=
iver. If there is a physical device, the block layer interacts with it thro=
ugh SCSI mid layer and SCSI low level drivers. So, how *actually* a softwar=
e initiator (<b>Open-iSCSI</b>) interacts with &quot;<b>block layer</b>&quo=
t;?=C2=A0</div><div><br></div><div>- What confuses me, where does the &quot=
;<b>disk driver</b>&quot; comes into play?<br><br>Thanks :-)</div></div><br=
><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8e=
x;border-left: 1px #ccc solid;padding-left: 1ex;"><br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/1972273e-83e5-4e7f-9c76-00d0deb31185%40googlegroups.com</a>.<b=
r />

------=_Part_1407_556674645.1573238408061--

------=_Part_1406_2093149275.1573238408060--
