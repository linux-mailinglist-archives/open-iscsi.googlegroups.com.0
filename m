Return-Path: <open-iscsi+bncBC755V5RXMKBBS5OZ3WAKGQECYDZG3I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id B829DC3F88
	for <lists+open-iscsi@lfdr.de>; Tue,  1 Oct 2019 20:13:32 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id z25sf16833407qtn.7
        for <lists+open-iscsi@lfdr.de>; Tue, 01 Oct 2019 11:13:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569953611; cv=pass;
        d=google.com; s=arc-20160816;
        b=AaH6mHTYkc/4XuTPNueMVHDKisXyS48T41eFUwVhkmqEwUrjrpy4u2NRWEB7zxHZpR
         e+gtPRNG0H1upjID8zXB5Qt+dCK9HLROjM9kJ0EnHb/46bUu3IPGyxDBYp8lOzh939iT
         BA8/4vtGePuoK0Lfr58svSDjzkDvW2sHUp2GBFbHyTPflqr8tQxb55Lh6+t2lrxg91GG
         Czjsej1012oO7liMB4sA3jLNlTI3Z++zDUV7+aJl0Bg+accSfICDA1vF9lX0ch8t4ks5
         M3comkngd/nu5b22VnEAsFtb/QV3QYJ/3gFylthM07Gck7n8RV1lNR8ZKb1Iu14LEAB2
         3aGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:in-reply-to:references
         :message-id:subject:date:mime-version:content-transfer-encoding:from
         :sender:dkim-signature:dkim-signature;
        bh=5YP1hQRtlPWYETaizofx5/0gisexo1AU605PDZQz6dQ=;
        b=Y/vBqKq81doIdmarWugagLqrTc0pMjTiUsX3gwrJHc+MLDlffqqif3aoJnxToiFjhb
         3plWcOl+MlfjdduqmB6n5OHxDw9oByBG/KdAX3hSghk2ze6TkKse6QK6MmrSUwCGJfK/
         VuC4aS9KRj+pIY2ytUKH0u27S4rnzelfmR+omTQxrw2wIdVbAMfoUDoYj1NuvKiNaj5a
         p36ApWyiuGcft2bChcVjInbbHNeQzaTu2nELnHzTsixJjXhJvz4m+FYnpyV5z/SBadQ4
         uYJvqKHMH51JoxQ2pdqEdlIaP/rw6UFURyQ4zTtZn+SmY2u0BfB50oZ2o2sWKEJ05Pdm
         Gl5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Me/yLBOl";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:content-transfer-encoding:mime-version:date:subject
         :message-id:references:in-reply-to:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5YP1hQRtlPWYETaizofx5/0gisexo1AU605PDZQz6dQ=;
        b=dxP6OaJYszGuXMPldyPhkHcwrWYucAzzrhfHX1aOEM7fJ7bumZ790jqH2vRPCK0AR4
         Qfv/d9Botkl9L/9XuBbeCKSv73UDkgWWZFp//PQ+9mPd9pl2/YlmSlJ/vFftcQlc1x9S
         nIYfTBFbeWsH03yIjc11u/POOZ2BqybiLhPD6cQLm0tx4huVLCuCSXGw5JdFcqyO2tMf
         KNNvMkRWYGjhk6s1wvSq0SFipvmPvqYishy/GqOjzeFHrYddZf1LWahI4wmPbefVvaXd
         bQYtEToWxk7zlxGZxifZhM+Cfxuf4B6Y87R0KMWOwK9u4fd2iiYEO5VuROZEheU3uDv5
         65qw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5YP1hQRtlPWYETaizofx5/0gisexo1AU605PDZQz6dQ=;
        b=mdKWTmEZfgV4Jb05UwcZhYBh4dy98EBePb0CShAK8KCxsdOFzV13IpvgrdHZE1I5eL
         +kYybzDOwg5LJjpxbbTAD8lhN12UfElgOjlGrAF9iQQk+0h//4rRcbnj9P1Wo1T9NRFt
         /J19vmQAah1kkWL4X3FDayBFYLgFPc04ssWyL/ERXRMvUzIP0VtnhW8Rg0e5sDGSYeYY
         xPtpgsGaT1sQXPyPOF/Wg687Y1VOf2nU+L2UjBC2RWsABJxXdz3laDf0lxQaxsQmTKBJ
         N8KogrtfI5AujSBpB1tx0FXiRTreHzp9EznoWxY9B+OYOg9fVMUzj5zGsrf8Bd2lHAlv
         bfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:content-transfer-encoding
         :mime-version:date:subject:message-id:references:in-reply-to:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5YP1hQRtlPWYETaizofx5/0gisexo1AU605PDZQz6dQ=;
        b=F6eAZxWtXDvfWNZnlJZYq93OYNz/TFBCfh26KCg4vQlANcRAHHsgxbt7zSANn8AELG
         urdtycc09TtQXeOc7OK3NKA28d7foYmk0ZDY6X0ENeoz4QXEaDwFIhC/S5XSrizN/Q0q
         wUhxSZ7OWUMiYYwWuxyvmXWwHximO/BnRd+Z5CX2Jzq/qk9SXlprzx5ebpWPKgW5ZP2h
         ggbe88o6XCdVZydIEbPsvYJAglv+nS0Eti4Aiv+wvP/xaG69Cxw9Xta6oZ65JhLxUG2w
         L80YSG5Alc3vwCd8dNkqX8AjOPirotGOPqDzfipA5StQipgmB58PjdflzbERagvQyIka
         EPzg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWBzJyfiANpZzSJDpD64687S1LpptWd/dLuRtgNzk79EZRp4D3l
	m4ceZRDBq446vgnoyzDDdys=
X-Google-Smtp-Source: APXvYqxBM9wFHGs2AOidie6hoSz5qPnq3fvWVUmKJO3zkWoJLo1ZLuu3Ffbntrk3sxgx01hkv016rg==
X-Received: by 2002:a37:c441:: with SMTP id h1mr7403043qkm.16.1569953611771;
        Tue, 01 Oct 2019 11:13:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a209:: with SMTP id l9ls5817403qke.14.gmail; Tue, 01 Oct
 2019 11:13:31 -0700 (PDT)
X-Received: by 2002:a37:2e42:: with SMTP id u63mr7386235qkh.157.1569953611265;
        Tue, 01 Oct 2019 11:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569953611; cv=none;
        d=google.com; s=arc-20160816;
        b=byGyQTYhioGKi4dKCesO2TO0/3QXoUuf+0SWtSmr3Gwmy3rNXGk+glWZ5lokqbsY4A
         Rku33b4kK9G27vGxJ96sbpu90IYHNzrlI09xvjOudybY7G1e1xsyDEBJlWI6DWrEEWV/
         7MWWlBpUO5xxswV6uJ2cBqObQ3DdO/JOddcCohPjlz6GfGN9Daj6X2r6v+Ym9z88TDl3
         DNQ6Mj0NeMT9Re+6y1aTFXZ8mf3Fd8F0eZ1N1RHQpWSQLzFTNXR408LnjEoPzz6fVo/M
         MJnSRggEMzjM0+ltPCyAYFCU4QlyrY0p2imnWO33Oyu7MuWlFJHYDW5Y+a8B7bbBPGFj
         fFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:references:message-id:subject:date:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=e/OTEHrwQeE7uu43beya0PNccr6NhBHRG0rBgwf/JgY=;
        b=wK0weGXUJ9bQUoVeNzT++5cyGlBTBvJvCBrQCyH310BLn+pEuXVkRgULD7fqoREiB5
         1hpG1ImjxC6F0tNTLl3zvBckL07T0Y8f4Rn/YEIiaws4trGz/2TM4T4KoPTbZ5n0okrq
         C7BIpYHpV7W1GEarX7KthceFI+8jlRH1AIFO5+XysvQA2Y9JwLgiJEazsZ5RAk23FPpo
         1nxzW4kQndmmBO1LYYegT0KfUIouycR5f4ap7KE7XSDyVDYtTMdPLgWS8bPicXM0nbH1
         GaoyyF54mKSYvCypKRjNvfywh4HCjBdLmCvO9H0BHR4f+g/5DsC972p5SR9+QaKR9Ri+
         9dVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Me/yLBOl";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id l4si1400353qtl.1.2019.10.01.11.13.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 11:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id c17so10234670pgg.4
        for <open-iscsi@googlegroups.com>; Tue, 01 Oct 2019 11:13:31 -0700 (PDT)
X-Received: by 2002:a65:6081:: with SMTP id t1mr29140345pgu.95.1569953610074;
        Tue, 01 Oct 2019 11:13:30 -0700 (PDT)
Received: from ?IPv6:2601:1c0:5400:d::7? ([2601:1c0:5400:d::7])
        by smtp.gmail.com with ESMTPSA id j126sm19414395pfb.186.2019.10.01.11.13.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 11:13:29 -0700 (PDT)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-27337A78-9153-45AA-BE38-6286B6AB22E0
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Date: Tue, 1 Oct 2019 11:13:27 -0700
Subject: Re: AW: iscsiadm unable to connect to iscsd
Message-Id: <EEA44DFF-A7FC-4967-B67D-94681CC65835@gmail.com>
References: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com> <f4da4808-aa2a-4de5-ace3-8f8a072b6593@googlegroups.com> <02d201d5787f$32ff4eb0$98fdec10$@laurenz.ws>
In-Reply-To: <02d201d5787f$32ff4eb0$98fdec10$@laurenz.ws>
To: open-iscsi@googlegroups.com
X-Mailer: iPhone Mail (16G114)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Me/yLBOl";       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::535
 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


--Apple-Mail-27337A78-9153-45AA-BE38-6286B6AB22E0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What bug number? I=E2=80=99m the SUSE maintainer. :)=20

--
Lee-Man Duncan
Sent from my iPhone, dude


> On Oct 1, 2019, at 10:39 AM, <dirk@laurenz.ws> <dirk@laurenz.ws> wrote:
>=20
> Thanks a lot, i forwarded this to suse, as they maintain the iscsi packag=
es=E2=80=A6
> =20
> Von: open-iscsi@googlegroups.com <open-iscsi@googlegroups.com> Im Auftrag=
 von The Lee-Man
> Gesendet: Montag, 30. September 2019 23:20
> An: open-iscsi <open-iscsi@googlegroups.com>
> Betreff: Re: iscsiadm unable to connect to iscsd
> =20
> See https://github.com/open-iscsi/open-iscsi/pull/174
>=20
> On Friday, September 20, 2019 at 2:02:20 AM UTC-7, Dirk Laurenz wrote:
> Hi,
> =20
> want to read the session stats for a connection, but iscsiadm claims not =
to be able to connect to iscsd.
> I'm not sure how to debug this:
> =20
> $host:/etc/iscsi # iscsiadm -m session
> tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)
> tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flash)
> tcp: [3] $IP3:3260,1 $host3:lun01 (non-flash)
> $host:/etc/iscsi # iscsiadm -m session -r 2 -s
> iscsiadm: Could not execute operation on all sessions: could not connect =
to iscsid
> =20
> any idea?
> =20
> OS is SLES4SAP12 SP4
> =20
> Regards,
> =20
> Dirk
> =20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com.
> --=20
> You received this message because you are subscribed to a topic in the Go=
ogle Groups "open-iscsi" group.
> To unsubscribe from this topic, visit https://groups.google.com/d/topic/o=
pen-iscsi/9B-cSJR8Tic/unsubscribe.
> To unsubscribe from this group and all its topics, send an email to open-=
iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/02d201d5787f%2432ff4eb0%2498fdec10%24%40laurenz.ws.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/EEA44DFF-A7FC-4967-B67D-94681CC65835%40gmail.com.

--Apple-Mail-27337A78-9153-45AA-BE38-6286B6AB22E0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=3Dutf-8"></head><body dir=3D"auto">What bug number? I=E2=80=99m the SUSE m=
aintainer. :)&nbsp;<br><br><div id=3D"AppleMailSignature" dir=3D"ltr">--<di=
v>Lee-Man Duncan</div><div>Sent from my iPhone, dude</div><div><br></div></=
div><div dir=3D"ltr"><br>On Oct 1, 2019, at 10:39 AM, &lt;<a href=3D"mailto=
:dirk@laurenz.ws">dirk@laurenz.ws</a>&gt; &lt;<a href=3D"mailto:dirk@lauren=
z.ws">dirk@laurenz.ws</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"=
><div dir=3D"ltr"><meta http-equiv=3D"Content-Type" content=3D"text/html; c=
harset=3Dutf-8"><meta name=3D"Generator" content=3D"Microsoft Word 15 (filt=
ered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--><div class=3D"WordSection1"><p class=3D"M=
soNormal"><span style=3D"mso-fareast-language:EN-US">Thanks a lot, i forwar=
ded this to suse, as they maintain the iscsi packages=E2=80=A6<o:p></o:p></=
span></p><p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">=
<o:p>&nbsp;</o:p></span></p><p class=3D"MsoNormal"><b>Von:</b> <a href=3D"m=
ailto:open-iscsi@googlegroups.com">open-iscsi@googlegroups.com</a> &lt;<a h=
ref=3D"mailto:open-iscsi@googlegroups.com">open-iscsi@googlegroups.com</a>&=
gt; <b>Im Auftrag von </b>The Lee-Man<br><b>Gesendet:</b> Montag, 30. Septe=
mber 2019 23:20<br><b>An:</b> open-iscsi &lt;<a href=3D"mailto:open-iscsi@g=
ooglegroups.com">open-iscsi@googlegroups.com</a>&gt;<br><b>Betreff:</b> Re:=
 iscsiadm unable to connect to iscsd<o:p></o:p></p><p class=3D"MsoNormal"><=
o:p>&nbsp;</o:p></p><div><p class=3D"MsoNormal">See <a href=3D"https://gith=
ub.com/open-iscsi/open-iscsi/pull/174">https://github.com/open-iscsi/open-i=
scsi/pull/174</a><br><br>On Friday, September 20, 2019 at 2:02:20 AM UTC-7,=
 Dirk Laurenz wrote:<o:p></o:p></p><blockquote style=3D"border:none;border-=
left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin=
-right:0cm"><div><p class=3D"MsoNormal">Hi,<o:p></o:p></p><div><p class=3D"=
MsoNormal"><o:p>&nbsp;</o:p></p></div><div><p class=3D"MsoNormal">want to r=
ead the session stats for a connection, but iscsiadm claims not to be able =
to connect to iscsd.<o:p></o:p></p></div><div><p class=3D"MsoNormal">I'm no=
t sure how to debug this:<o:p></o:p></p></div><div><p class=3D"MsoNormal"><=
o:p>&nbsp;</o:p></p></div><div><div><p class=3D"MsoNormal">$host:/etc/iscsi=
 # iscsiadm -m session<o:p></o:p></p></div><div><p class=3D"MsoNormal">tcp:=
 [1] $IP1:3260,1032 $host1-lun01 (non-flash)<o:p></o:p></p></div><div><p cl=
ass=3D"MsoNormal">tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flash)<o:p></o:=
p></p></div><div><p class=3D"MsoNormal">tcp: [3] $IP3:3260,1 $host3:lun01 (=
non-flash)<o:p></o:p></p></div><div><p class=3D"MsoNormal">$host:/etc/iscsi=
 # iscsiadm -m session -r 2 -s<o:p></o:p></p></div><div><p class=3D"MsoNorm=
al">iscsiadm: Could not execute operation on all sessions: could not connec=
t to iscsid<o:p></o:p></p></div></div><div><p class=3D"MsoNormal"><o:p>&nbs=
p;</o:p></p></div><div><p class=3D"MsoNormal">any idea?<o:p></o:p></p></div=
><div><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p></div><div><p class=3D"Ms=
oNormal">OS is SLES4SAP12 SP4<o:p></o:p></p></div><div><p class=3D"MsoNorma=
l"><o:p>&nbsp;</o:p></p></div><div><p class=3D"MsoNormal">Regards,<o:p></o:=
p></p></div><div><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p></div><div><p =
class=3D"MsoNormal">Dirk<o:p></o:p></p></div><div><p class=3D"MsoNormal"><o=
:p>&nbsp;</o:p></p></div></div></blockquote></div><p class=3D"MsoNormal">--=
 <br>You received this message because you are subscribed to the Google Gro=
ups "open-iscsi" group.<br>To unsubscribe from this group and stop receivin=
g emails from it, send an email to <a href=3D"mailto:open-iscsi+unsubscribe=
@googlegroups.com">open-iscsi+unsubscribe@googlegroups.com</a>.<br>To view =
this discussion on the web visit <a href=3D"https://groups.google.com/d/msg=
id/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com?utm_m=
edium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d/msgid/op=
en-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com</a>.<o:p><=
/o:p></p></div>

<p></p>

-- <br>
You received this message because you are subscribed to a topic in the Goog=
le Groups "open-iscsi" group.<br>
To unsubscribe from this topic, visit <a href=3D"https://groups.google.com/=
d/topic/open-iscsi/9B-cSJR8Tic/unsubscribe">https://groups.google.com/d/top=
ic/open-iscsi/9B-cSJR8Tic/unsubscribe</a>.<br>
To unsubscribe from this group and all its topics, send an email to <a href=
=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-iscsi+unsubscribe@=
googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/02d201d5787f%2432ff4eb0%2498fdec10%24%40laurenz.ws?ut=
m_medium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d/msgid=
/open-iscsi/02d201d5787f%2432ff4eb0%2498fdec10%24%40laurenz.ws</a>.<br>
</div></blockquote></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/EEA44DFF-A7FC-4967-B67D-94681CC65835%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/EEA44DFF-A7FC-4967-B67D-94681CC65835%40gmail.com</a>.<br />

--Apple-Mail-27337A78-9153-45AA-BE38-6286B6AB22E0--
