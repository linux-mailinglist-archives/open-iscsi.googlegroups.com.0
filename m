Return-Path: <open-iscsi+bncBDAZ335MLAIKN4WW7QCRUBGG7OQEO@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D81E72982CB
	for <lists+open-iscsi@lfdr.de>; Sun, 25 Oct 2020 18:43:02 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id j15sf7252700wrd.16
        for <lists+open-iscsi@lfdr.de>; Sun, 25 Oct 2020 10:43:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603647782; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dh2i1P9DtTq2mz6LY6/+RzqehexusFj8ew1y18wqOYnXZJU8B1XBcVSZeeMjqpo1en
         BlZhwQ+nfOp2BOccredeCo67F96B5b08yUZIZRaziP3xQfGH84sAiYwPbrhBNT3QFT8P
         lqvSFbFz5eTRWLAgt4ocBGQrGgYYIcV5JZZis1evh6M2fp5z+p1ZjJ0kbmBNDfc5VmXO
         LOmGZ+nYxjTg/u9pW3ij5pIyJM6xfIyQeQt1NuJyTgkUUfRNMgB0I4UYvOT1A1i/NTPI
         nTpbe12RXX8u85ysVLAZh49UkkpQNVD4HopLIZuwFJEcpmXd26WXsgPRLfiBHQpZwq6K
         bvhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :thread-index:mime-version:message-id:date:subject:in-reply-to
         :references:to:from:sender:dkim-signature;
        bh=n/j1xktFmLndMiGSy5venAZAux/bGvXNL5dOzejZBA4=;
        b=KSv9d5rzxqIoY8A+2Jf7a3eed3yx4TVflMK+CwW1MTBzKiX8cfHvvx1ifxbuIj1m7N
         Lj3S+9ECv6fCpvKgk8gs0cMB2gmcfYVwHjFmQbGaECUbgJQN0HezzYvFUNZ91VV/F7z+
         qI5Tl2BRp01Q/lx+/vqg9ZCBsLK705x0OcbjzigYqcFNasBfCnjkhXyd39jft8P/4qW2
         gWg4Hd0vwgvZi2SQSziNiVbXFju2vSz9kxoQwqXtCmHJrqnoxDmzTZaZgPyV6u9PK/aN
         LgSzjZECiaQIxVykq3/NIvABMKp5K6Emz1LcAonEl6CzM9upBQ6Dx4X61bHSySuELzMW
         j1Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.17 as permitted sender) smtp.mailfrom=david.partridge@perdrix.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=n/j1xktFmLndMiGSy5venAZAux/bGvXNL5dOzejZBA4=;
        b=M9Zxng1hPz7eF/ytuiX6qlmVAXEcqgCBZ/4zqHLt9kcsOxUrD/DiEkmh7hkbiu3plr
         JO6UZcT/kEehAXY1037cpSYE8W033fdoHGXoojIzAF3Q5KeiWPGrAIS1jb+y1cVvrNFU
         FIRYkF9RgcXgbZzTmrAPpuNVooKAdetG9btKHG6l2xjPchxdbkahXiri8IvIkrqKe5FF
         SmPtrG0gU0/ThVWOPCjygZL1rsatN4efqgEAZ2kM0AqyCWUQDLASdUQRZqktbY6eyYhP
         49FIZphlTBv2f6XI/qwiFCHO3chooT4kN6il0sMPQmcseInbFE5X6/jl68EzWOLIH3ol
         V7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:thread-index:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n/j1xktFmLndMiGSy5venAZAux/bGvXNL5dOzejZBA4=;
        b=hDaRsRJb7g68g0s7AEZ3Go8+hdlJPjD4pX3sf5u2SgharKhtDnH3iFq0z8KUb0HqgV
         /HqEIEf3Rz6oWrWxN13uzRhgTGojdya8oTWwYMvR6u7H2UCSYdg6zZG2/Lx17ASmGdkU
         gRNyH2GqW3QH2FWatomCeDtJY9T8XAKJ6FHtLcoDKn/wgGSy87YCQdZinbYp520464Bf
         fa3oCOoVcEhk6Lli79xr8J2stXqr0cTQ1UWp6YM1uarWxCnEa6MmeLhg/5DpPmWu4emE
         z5J7siiXd7z5B1dSep2zyX/FGsf6ZXX5T46WlC6VUFSO+e5G+y8UgADXS8JuGGLjGbWa
         FNig==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530KJITvnwd6mgpeCRTvmLF0vE7zHee3HgRqpxlAW+6br+qk825i
	rY4WxN1HGioQ6BWT07jnK5c=
X-Google-Smtp-Source: ABdhPJykyy5NXFP/oql3izJ/XUycvphlMr4RCZEeaDOpZ5i4Thecgpmah5+WBRSQtjs8RESMmx0Rsg==
X-Received: by 2002:adf:f103:: with SMTP id r3mr14717740wro.153.1603647782530;
        Sun, 25 Oct 2020 10:43:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls4992395wrj.0.gmail; Sun, 25 Oct
 2020 10:43:01 -0700 (PDT)
X-Received: by 2002:adf:e3cb:: with SMTP id k11mr13766522wrm.341.1603647781624;
        Sun, 25 Oct 2020 10:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603647781; cv=none;
        d=google.com; s=arc-20160816;
        b=BfkLoCKaRTNSv+5d7tAVtT22xO+pBQPPsatIQJ+Mg+pZwr0rpMKaDtSrklu/y9A8bn
         UI8Kiesp75+PPK9qotH419hxNXCCwZ28CflpdOyORU9/zFsk9wx6oQF2CE/hQCoiS89B
         YYtcLHdgktWfoAE8cx+AcpPvloem6wprcZQjeRnRRZ9+IsfroWtBSwVdm+Lp+ur9l/N8
         VCnFsA6kR5eVmyanebd26gw40G4bnFbiv+YnrYN0sIH7+YubM8Mt4FRUE/3IQgt8WSNI
         /ymnllTWfT+3HDwPnEqjSrBSBGKjkw65xiOEL69IsrB8Uf+kXxcSPmMx7E8cD9vGPovv
         p0TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:references:to:from;
        bh=ER6buatUZXVd7nlw6yklBIKEITcOFnkqiny3B9mT/20=;
        b=09rhi4xWgPPVR9iNfDY/J/aaW0ucN6p9mtHAsKAwrD/DUf08R+WRKCGZt99hsrIOFJ
         lb7xK3eVX12mpYKUFRkhFs0FSA6LCk2yTjtvROTnS0GpyeiBav0VpOrzDKmpYRAk5qIo
         Y1dMA3hIEZFIqBW/95/ujyiFxsuzORhxbVbE50DyY7yA0uVovl46MFGaD+eYjMSpoRWj
         bu5tUnisvHjOsie+4I5grqGjU1/YW8UOR8m3g12H8Rb7cEjCpMAHTS12TPlfjQGdQXZN
         UEJT98lpox0PdGFuG/twmlbP6xezx5FcoqiAnXA0CpuzkPJtDCqnbz5h8cA2G1DUyUWf
         K15Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.17 as permitted sender) smtp.mailfrom=david.partridge@perdrix.co.uk
Received: from avasout02.plus.net (avasout02.plus.net. [212.159.14.17])
        by gmr-mx.google.com with ESMTPS id 14si232801wmf.4.2020.10.25.10.43.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 10:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.17 as permitted sender) client-ip=212.159.14.17;
Received: from APOLLO ([212.159.61.44])
	by smtp with ESMTPA
	id Wk2lk6xTf0K1OWk2nkXn2N; Sun, 25 Oct 2020 17:43:01 +0000
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.3 cv=QaP9QvTv c=1 sm=1 tr=0
 a=AGp1duJPimIJhwGXxSk9fg==:117 a=AGp1duJPimIJhwGXxSk9fg==:17
 a=DAwyPP_o2Byb1YXLmDAA:9 a=glz0WE3SAAAA:8 a=4RBUngkUAAAA:8 a=P1kZ4gAsAAAA:8
 a=1XWaLZrsAAAA:8 a=0m5f3JLe1U-MezTiVcsA:9 a=-EAFCi5tqU-aUKfq:21
 a=KgXoXTtOhk00ea-z:21 a=QEXdDO2ut3YA:10 a=T4vJigSfC8AA:10 a=NWVoK91CQyQA:10
 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=woAHEPP7mmyBSb5F:21 a=ziQ4jzz7CMLinN4J:21
 a=KVYRxhiv8_AUJlPJ:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=1uSMuL0g_jIKgULiB2hh:22 a=_sbA2Q-Kp09kWB8D3iXc:22
 a=fn9vMg-Z9CMH7MoVPInU:22
X-AUTH: perdrix52@:2500
From: "David C. Partridge" <david.partridge@perdrix.co.uk>
To: <open-iscsi@googlegroups.com>
References: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com> <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>
In-Reply-To: <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com>
Subject: RE: Slow iSCSI tape performance
Date: Sun, 25 Oct 2020 17:42:59 -0000
Message-ID: <007401d6aaf6$48aef2b0$da0cd810$@perdrix.co.uk>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0075_01D6AAF6.48B0C770"
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQDauU7xBe6bPsHHiKuCyFJBainMCgHQR2dcq5H1pAA=
Content-Language: en-gb
X-CMAE-Envelope: MS4wfFMj670jbIWoYnFxsmxqqd7SDlJ6XqvDYHDyRXhsbXoLoJyltHBFgkJptwHpvss0MTnl25ZqmI6HAnwBEqKf8zmqAZ4OuWZaplT1NemxVeQbwARAjAN0
 gLLjN5x2SVa7Rn30CKM/L8a8hrrjKWWIPX7IP0xwaHxPD4IaKAHNmmKKZojKXp2FhaFQcKNsKBIp4A==
X-Original-Sender: david.partridge@perdrix.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.17
 as permitted sender) smtp.mailfrom=david.partridge@perdrix.co.uk
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

This is a multipart message in MIME format.

------=_NextPart_000_0075_01D6AAF6.48B0C770
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I believe that it=E2=80=99s something to do with stopping Windows (at the t=
arget) from sending TURs to the tape every 30s or so.

=20

Setting streaming bit ? Is that something I can do with mt-st or mt command=
s?  The best I am getting is about 29MB/s over a 1Gbit LAN L

=20

Here=E2=80=99s my backup script:

root@charon:~/bin# cat backup-system

#!/bin/bash

# init

=20

function pause(){

   read -p "$*"

}

=20

#

# Connect to the iSCSI tape drive and make sure it's set up

#=20

sudo iscsiadm -m node --targetname "iqn.2008-08.com.starwindsoftware:mercur=
y-hp1840" --portal "192.168.129.66:3260" --login

sleep 5

sudo stinit -vv

=20

# Set the device blocksize to 64k

set -v

sudo mt-st -f /dev/st0l setblk 65536

=20

#

# Actually run the backup

#=20

sudo dd bs=3D16M if=3D/dev/disk/by-id/ata-KINGSTON_SVP100S296G_312Y10B7Y5SK=
 | pv | dd ibs=3D16M obs=3D64K of=3D/dev/st0l

set +v

pause 'Press [Enter] key to unload the tape ...'

sudo mt-st -f /dev/st0l offline

sudo iscsiadm -m node --targetname "iqn.2008-08.com.starwindsoftware:mercur=
y-hp1840" --portal "192.168.129.66:3260" --logout

root@charon:~/



Thanks

=20

=20

=20

From: open-iscsi@googlegroups.com [mailto:open-iscsi@googlegroups.com] On B=
ehalf Of The Lee-Man
Sent: 25 October 2020 16:51
To: open-iscsi
Subject: Re: Slow iSCSI tape performance

=20

I haven't heard about disabling TUR for iSCSI tape improvement. Even if tru=
e, I'm not sure how you'd do that. You'd need to modify your target IMHO to=
 always reply "ready" for TUR. But TUR is used to clear some conditions at =
the target, if present, so not sure about the semantics of ignoring TURs. H=
ave you tried setting the streaming bit for the tape drive?

On Wednesday, October 21, 2020 at 6:43:22 AM UTC-7 david.p...@perdrix.co.uk=
 wrote:

I've seen a report that disabling Test Unit Ready across the iSCSI link can=
 hugely improve performance of remote tape drives.

Is this something I do at the machine hosting the tape drive or at the clie=
nt?

=20

Is it relevant to open iscsi?

=20

Thanks

David

--=20
You received this message because you are subscribed to a topic in the Goog=
le Groups "open-iscsi" group.
To unsubscribe from this topic, visit https://groups.google.com/d/topic/ope=
n-iscsi/jp7zMTdWbN8/unsubscribe.
To unsubscribe from this group and all its topics, send an email to open-is=
csi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219aen%40googlegroups.com <https:=
//groups.google.com/d/msgid/open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219ae=
n%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter> .

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/007401d6aaf6%2448aef2b0%24da0cd810%24%40perdrix.co.uk.

------=_NextPart_000_0075_01D6AAF6.48B0C770
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D"Microsoft=
 Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Times New Roman","serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt'>I believe that it=E2=80=99s something to do with stopping =
Windows (at the target) from sending TURs to the tape every 30s or so.<o:p>=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t'>Setting streaming bit ? Is that something I can do with mt-st or mt comm=
ands?=C2=A0 The best I am getting is about 29MB/s over a 1Gbit LAN </span><=
span style=3D'font-size:11.0pt;font-family:Wingdings'>L</span><span style=
=3D'font-size:11.0pt'><o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><sp=
an style=3D'font-size:11.0pt'>Here=E2=80=99s my backup script:<br><br>root@=
charon:~/bin# cat backup-system<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt'>#!/bin/bash<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt'># init<o:p></o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>function pause(=
){<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0p=
t'>=C2=A0=C2=A0 read -p &quot;$*&quot;<o:p></o:p></span></p><p class=3DMsoN=
ormal><span style=3D'font-size:11.0pt'>}<o:p></o:p></span></p><p class=3DMs=
oNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:11.0pt'>#<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span style=3D'font-size:11.0pt'># Connect to the iSCSI ta=
pe drive and make sure it's set up<o:p></o:p></span></p><p class=3DMsoNorma=
l><span style=3D'font-size:11.0pt'># <o:p></o:p></span></p><p class=3DMsoNo=
rmal><span style=3D'font-size:11.0pt'>sudo iscsiadm -m node --targetname &q=
uot;iqn.2008-08.com.starwindsoftware:mercury-hp1840&quot; --portal &quot;19=
2.168.129.66:3260&quot; --login<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt'>sleep 5<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt'>sudo stinit -vv<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'># Set the de=
vice blocksize to 64k<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt'>set -v<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'font-size:11.0pt'>sudo mt-st -f /dev/st0l setblk 65536<o:p></o:p=
></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>#<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>=
# Actually run the backup<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:11.0pt'># <o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'font-size:11.0pt'>sudo dd bs=3D16M if=3D/dev/disk/by-id/ata-KING=
STON_SVP100S296G_312Y10B7Y5SK | pv | dd ibs=3D16M obs=3D64K of=3D/dev/st0l<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>=
set +v<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:1=
1.0pt'>pause 'Press [Enter] key to unload the tape ...'<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>sudo mt-st -f /dev/=
st0l offline<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-=
size:11.0pt'>sudo iscsiadm -m node --targetname &quot;iqn.2008-08.com.starw=
indsoftware:mercury-hp1840&quot; --portal &quot;192.168.129.66:3260&quot; -=
-logout<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt'>root@charon:~/<br><br><o:p></o:p></span></p><p class=3DMsoNormal><s=
pan style=3D'font-size:11.0pt'>Thanks<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> open-iscsi@googleg=
roups.com [mailto:open-iscsi@googlegroups.com] <b>On Behalf Of </b>The Lee-=
Man<br><b>Sent:</b> 25 October 2020 16:51<br><b>To:</b> open-iscsi<br><b>Su=
bject:</b> Re: Slow iSCSI tape performance<o:p></o:p></span></p><p class=3D=
MsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal style=3D'margin-bottom:=
12.0pt'>I haven't heard about disabling TUR for iSCSI tape improvement. Eve=
n if true, I'm not sure how you'd do that. You'd need to modify your target=
 IMHO to always reply &quot;ready&quot; for TUR. But TUR is used to clear s=
ome conditions at the target, if present, so not sure about the semantics o=
f ignoring TURs. Have you tried setting the streaming bit for the tape driv=
e?<o:p></o:p></p><div><div><p class=3DMsoNormal>On Wednesday, October 21, 2=
020 at 6:43:22 AM UTC-7 david.p...@perdrix.co.uk wrote:<o:p></o:p></p></div=
><blockquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0=
cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm'><p class=3DMsoNormal s=
tyle=3D'margin-bottom:12.0pt'>I've seen a report that disabling Test Unit R=
eady across the iSCSI link can hugely improve performance of remote tape dr=
ives.<o:p></o:p></p><div><p class=3DMsoNormal>Is this something I do at the=
 machine hosting the tape drive or at the client?<o:p></o:p></p></div><div>=
<p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>I=
s it relevant to open iscsi?<o:p></o:p></p></div><div><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Thanks<o:p></o:p></p><=
/div><div><p class=3DMsoNormal>David<o:p></o:p></p></div></blockquote></div=
><p class=3DMsoNormal>-- <br>You received this message because you are subs=
cribed to a topic in the Google Groups &quot;open-iscsi&quot; group.<br>To =
unsubscribe from this topic, visit <a href=3D"https://groups.google.com/d/t=
opic/open-iscsi/jp7zMTdWbN8/unsubscribe">https://groups.google.com/d/topic/=
open-iscsi/jp7zMTdWbN8/unsubscribe</a>.<br>To unsubscribe from this group a=
nd all its topics, send an email to <a href=3D"mailto:open-iscsi+unsubscrib=
e@googlegroups.com">open-iscsi+unsubscribe@googlegroups.com</a>.<br>To view=
 this discussion on the web visit <a href=3D"https://groups.google.com/d/ms=
gid/open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219aen%40googlegroups.com?utm=
_medium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d/msgid/=
open-iscsi/4ad354c3-5d6a-4b1f-b978-afee5d1219aen%40googlegroups.com</a>.<o:=
p></o:p></p></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/007401d6aaf6%2448aef2b0%24da0cd810%24%40perdrix.co.uk=
?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/=
open-iscsi/007401d6aaf6%2448aef2b0%24da0cd810%24%40perdrix.co.uk</a>.<br />

------=_NextPart_000_0075_01D6AAF6.48B0C770--

