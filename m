Return-Path: <open-iscsi+bncBDAZ335MLAII3YW57QCRUBCXOKN7C@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4831329A1F8
	for <lists+open-iscsi@lfdr.de>; Tue, 27 Oct 2020 01:59:58 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id h6sf6750712ljl.11
        for <lists+open-iscsi@lfdr.de>; Mon, 26 Oct 2020 17:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603760397; cv=pass;
        d=google.com; s=arc-20160816;
        b=WnfIGYmbG9/cZ/nkCKiQudLrmpnHB28tO9uxTClUc5dgAOW5r50UH0abM6jwNU3HxH
         6EHaBk2h3eCpEfemWoRv+EuahDc7yJ3TqMvOcAgdqOnxs+veFYF+lsSG8c/2ftBI1cyg
         /RtwQrxEehXU8PkAl851txQf7txa9b2mRxv/zYCgWpmJFzNLq0mw+Y/mJAfoh4jKp9Gl
         uqNv6im2D8KiZIYQDhE7DzCKB9NvWgmkXRu8vP2ysSYGAc0co4wVX6y4B8o3y+yEJirM
         dfPA+C0GFxrliyshfIaAfIFNmKvKsglwjwacrzlRhoEOcpnzsHwpPPq98W/vwK/fmePj
         ZUMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:thread-index
         :content-language:mime-version:message-id:date:subject:in-reply-to
         :references:to:from:sender:dkim-signature;
        bh=gN1QBGAJZI7I4UpuNyAB7nu2Fbjhok8I0Kg37pEHLuk=;
        b=IXYBG0QrBA3xtmrb3ET7QHWaXr8dOAJGlp0xSoM3imGJ5zZGYeCNaqbEZND7t/yvQH
         EH9txseLPKYZuc7iOpz6HCymEtbQli8OcE3LKDMGiJGQpMwkxQIXHkJcsPPr9D/EvxN/
         EQcQBYquYSyFHDE9ioAf9nu6vLraHkuRo12c7RQdttU2pXdPcArWjaVozP4TFYZn1kJI
         VW+oA+qfQoRln+ayDVqChXpf34p729A4QfzT9O8sH44MAmjsjnRnwMGvYmR/sh8MIytu
         iyT9aY/F4atIDrSyHvkgGa5bDcehGGnS66dfk3GUTI21BLY0qE8MiTY7Gul2uXnu+jYE
         PBnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.19 as permitted sender) smtp.mailfrom=david.partridge@perdrix.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:content-language:thread-index:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gN1QBGAJZI7I4UpuNyAB7nu2Fbjhok8I0Kg37pEHLuk=;
        b=JUkrCGoDEyCswcw+UUR5hKLhOXYRRitvgGf7n9Ae2uRgGVEd7Q/jYu3NXJm+7gCQDD
         sQCdZV64nbRpCSaGjTMmm91ZIVcLCC4kBrx79v/gsLFdREeS+fEpbRve/83lFVoVZ1FJ
         SsjDJVjZT1+miJQzhXw1eGI2JtUaGiZ18lHggh+8QaDkaQpzOACCQrST47DFy8oIkVKn
         gOkQiZqnSU1uDARqj+NORtJpgzb1bihOIItNOErxRS4gO9oGfro1eidQq8/Bi6Zbw6+n
         7LcLtHI0ODnzDizssMDj5uDOmpfB4MqcKE9DhDsyaclMvUI75wpS+Tw/aU1SlA8YzojP
         G8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:content-language:thread-index
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gN1QBGAJZI7I4UpuNyAB7nu2Fbjhok8I0Kg37pEHLuk=;
        b=mRSNyakcD+xJTEq4YJ2BUw1NlFu6sMnaOPKDQt9eyL4SEiASjl3RNKkT9Kto6a8YnQ
         0nvWH2pWKJ99Kp/yG/0XAzFKZSsQhJ4wt18CF8pTQyN+s3P1S2+eNoAXVYhxIaq7x92C
         QvumXLrm/jUxqr7k7rXGo9FwQGnvi2usbRqhaDbOQHIhs6uMJ19jRFOVWDOmdNqdfjve
         +Uth+SxmDI+f2R+O8uqwDDzP8FH1xBhkW7pGxfdZ/toGFnaViG0URAiyRkgWORWNCSrq
         5ULNzvPx3fw6NCHhXO7nOjL1xzb753z0GKA5XHNq0Q2utmVAGDby0SeaatVqNJx6yqD8
         nOfQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533WdeQ88Sa/m0NaFVEZ0c2p/pAe3p1V3l/yZRG23QlBTs6pSKr3
	UgHz/9twADSwn5YFT9UYqXo=
X-Google-Smtp-Source: ABdhPJzgd4lgeeqgkCAkeK8FM3DpuVq205UnCDBnx6EIgJxu2GI0UmYAk82F2FhwwpMsyLBAliUwmQ==
X-Received: by 2002:ac2:418b:: with SMTP id z11mr6820323lfh.371.1603760397617;
        Mon, 26 Oct 2020 17:59:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:b6d4:: with SMTP id m20ls1779064ljo.1.gmail; Mon, 26 Oct
 2020 17:59:56 -0700 (PDT)
X-Received: by 2002:a2e:a499:: with SMTP id h25mr7454655lji.359.1603760396541;
        Mon, 26 Oct 2020 17:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603760396; cv=none;
        d=google.com; s=arc-20160816;
        b=HF3VjX2nqyniidfxjmGmEwyA0JOa667fZNUeLJJE6MkQlyJ2HXw3K+PFv/oGc4GNTF
         zU1eKUJ6eto+Z3UDn+MlXcFIYvyLumybfndvhbKBNOYH9oxA4rUkThxW2wKIIUfFgPzZ
         PIQ10R0C2b6cDWF8oE5hcTvkRpg7QDbAsGRB/deJuL8Hb8exGoW9LxQc5rVmjaKkXRxI
         0oCN08Jnq2TVakg3dqnWsmoTq4w2gu/xOOtjb7XwNbMrPSFrzxZDvFgt7ptdGWrPrf29
         ERAi1c0HyyF5eA6q1K4lHlPGM/nVSSyei5iyxy40TUNqZM9bVrXaqBYcrUDiUyBXUDm8
         bMuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :in-reply-to:references:to:from;
        bh=bRSzCWUM+nGhzA3Ohsfi99qJV4ilW/1dJNwQz8V65eg=;
        b=dAhGIev7+/gD9kVQo/rifMA9g2phi85HnDI+HNxtd0CqdJSrIKbq/Q3jbH7E/M/zaH
         kJFifi1j0KkYQ2eNETy7THUttyawSSQTcBIBM0qJeF35JYXQEnMU5111R8r/rOp6UtBv
         X26eMmTJsmNRKLS1rMjXgG808Tg0FYs6MykNdXQiSg/7l2nYjOKQa29vdKYGXQ2IqG4Q
         uVlXntlHuyjRB8f51W9bjq+salIFoMm8pvPRSXznCSQnVpc/ALfI5nQup2PKsgXLFST4
         Su/iw7ZZlbZh2Xjz1wRgyj5Rnobcsrgox/+aYJ/oimzy4NJOq17/+f2cPm+zvIo7lgno
         YJ4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.19 as permitted sender) smtp.mailfrom=david.partridge@perdrix.co.uk
Received: from avasout04.plus.net (avasout04.plus.net. [212.159.14.19])
        by gmr-mx.google.com with ESMTPS id o142si258919lff.6.2020.10.26.17.59.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.19 as permitted sender) client-ip=212.159.14.19;
Received: from APOLLO ([212.159.61.44])
	by smtp with ESMTPA
	id XDL8k9zfMrXCcXDL9kLGUj; Tue, 27 Oct 2020 00:59:55 +0000
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.3 cv=Q+xJH7+a c=1 sm=1 tr=0
 a=AGp1duJPimIJhwGXxSk9fg==:117 a=AGp1duJPimIJhwGXxSk9fg==:17
 a=DAwyPP_o2Byb1YXLmDAA:9 a=4RBUngkUAAAA:8 a=P1kZ4gAsAAAA:8 a=1XWaLZrsAAAA:8
 a=pGLkceISAAAA:8 a=Dhh-PncqfGfpqEtsYboA:9 a=XY-E_W_ihyyaI6bR:21
 a=yF1RApvRHyBvOWhX:21 a=QEXdDO2ut3YA:10 a=T4vJigSfC8AA:10 a=yMhMjlubAAAA:8
 a=SSmOFEACAAAA:8 a=P5aT0ckc9xxH09TvC4UA:9 a=V_lQ13EFW80qsxr_:21
 a=pzYl2yAQiaLiDW7i:21 a=8EERaueSMhU6a1jS:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=_sbA2Q-Kp09kWB8D3iXc:22 a=fn9vMg-Z9CMH7MoVPInU:22
X-AUTH: perdrix52@:2500
From: "David C. Partridge" <david.partridge@perdrix.co.uk>
To: <open-iscsi@googlegroups.com>
References: <5e784f60-ee52-4cdf-847b-e06f50d491cbn@googlegroups.com> <4ad354c3-5d6a-4b1f-b978-afee5d1219aen@googlegroups.com> <007401d6aaf6$48aef2b0$da0cd810$@perdrix.co.uk> <CCD69511-2C68-4703-9BDD-A1345922DA2D@gmail.com>
In-Reply-To: <CCD69511-2C68-4703-9BDD-A1345922DA2D@gmail.com>
Subject: RE: Slow iSCSI tape performance
Date: Tue, 27 Oct 2020 00:59:54 -0000
Message-ID: <003d01d6abfc$7c150930$743f1b90$@perdrix.co.uk>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_003E_01D6ABFC.7C1668C0"
X-Mailer: Microsoft Outlook 14.0
Content-Language: en-gb
Thread-Index: AQDauU7xBe6bPsHHiKuCyFJBainMCgHQR2dcAy5jEAgCOQLjnqtoyOAg
X-CMAE-Envelope: MS4wfC9a5CV+G+WZUTwKWBzBBIsz5ygQbg5aiYYqCfYW5nIKUpt1yjtkTq7e75roArnZvL8atFL1OC4yWUaQaFvYr7sAIBm5iv2a7wicvBbupQWijS4gZmDE
 RDJ0jOs/gy6RXdSqM7Rapkf2ij63LLHiYsRZk8Ffecr+YZKrWqk6K1SJ1ODd7dECvYqM7M027WE/Gw==
X-Original-Sender: david.partridge@perdrix.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.partridge@perdrix.co.uk designates 212.159.14.19
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

------=_NextPart_000_003E_01D6ABFC.7C1668C0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Direct throughput about 140MB/s

=20

From: open-iscsi@googlegroups.com [mailto:open-iscsi@googlegroups.com] On B=
ehalf Of Lee Duncan
Sent: 26 October 2020 22:51
To: open-iscsi
Subject: Re: Slow iSCSI tape performance

=20

On Oct 25, 2020, at 10:42 AM, David C. Partridge <david.partridge@perdrix.c=
o.uk> wrote:

=20

I believe that it=E2=80=99s something to do with stopping Windows (at the t=
arget) from sending TURs to the tape every 30s or so.

=20

Okay, that makes sense. But that has nothing to do with open-iscsi, or even=
 iSCSI at all.





=20

Setting streaming bit ? Is that something I can do with mt-st or mt command=
s?  The best I am getting is about 29MB/s over a 1Gbit LAN L

=20

I was talking about the ability to tell st to write tape marks without wait=
ing. This is very handy for streaming tape drives, since it allows it to st=
ream tape marks as well. But it cannot be set with =E2=80=9Cmt=E2=80=9D =E2=
=80=94 it needs an ioctl().

=20

What kind of throughput does the tape drive supply directly?





=20

Here=E2=80=99s my backup script:
...

=20

--=20
You received this message because you are subscribed to a topic in the Goog=
le Groups "open-iscsi" group.
To unsubscribe from this topic, visit https://groups.google.com/d/topic/ope=
n-iscsi/jp7zMTdWbN8/unsubscribe.
To unsubscribe from this group and all its topics, send an email to open-is=
csi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail.com <https://groups=
.google.com/d/msgid/open-iscsi/CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail=
.com?utm_medium=3Demail&utm_source=3Dfooter> .

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/003d01d6abfc%247c150930%24743f1b90%24%40perdrix.co.uk.

------=_NextPart_000_003E_01D6ABFC.7C1668C0
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
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Times New Roman","serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
nk=3Dpurple style=3D'word-wrap: break-word;-webkit-nbsp-mode: space;line-br=
eak:after-white-space'><div class=3DWordSection1><p class=3DMsoNormal><span=
 style=3D'font-size:11.0pt'>Direct throughput about 140MB/s<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;</o:=
p></span></p><div><div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;=
padding:3.0pt 0cm 0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"=
'> open-iscsi@googlegroups.com [mailto:open-iscsi@googlegroups.com] <b>On B=
ehalf Of </b>Lee Duncan<br><b>Sent:</b> 26 October 2020 22:51<br><b>To:</b>=
 open-iscsi<br><b>Subject:</b> Re: Slow iSCSI tape performance<o:p></o:p></=
span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DM=
soNormal>On Oct 25, 2020, at 10:42 AM, David C. Partridge &lt;<a href=3D"ma=
ilto:david.partridge@perdrix.co.uk">david.partridge@perdrix.co.uk</a>&gt; w=
rote:<o:p></o:p></p><div><blockquote style=3D'margin-top:5.0pt;margin-botto=
m:5.0pt'><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMso=
Normal><span style=3D'font-size:11.0pt'>I believe that it=E2=80=99s somethi=
ng to do with stopping Windows (at the target) from sending TURs to the tap=
e every 30s or so.</span><o:p></o:p></p></div></div></blockquote><div><p cl=
ass=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal>Okay, that =
makes sense. But that has nothing to do with open-iscsi, or even iSCSI at a=
ll.<o:p></o:p></p></div><div><p class=3DMsoNormal><br><br><o:p></o:p></p><d=
iv><div><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>&nbsp;</span>=
<o:p></o:p></p></div><div><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt'>Setting streaming bit ? Is that something I can do with mt-st or mt co=
mmands?&nbsp; The best I am getting is about 29MB/s over a 1Gbit LAN<span c=
lass=3Dapple-converted-space>&nbsp;</span></span><span style=3D'font-size:1=
1.0pt;font-family:Wingdings'>L</span><o:p></o:p></p></div></div><div><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p class=3DMsoNormal>I was talkin=
g about the ability to tell st to write tape marks without waiting. This is=
 very handy for streaming tape drives, since it allows it to stream tape ma=
rks as well. But it cannot be set with =E2=80=9Cmt=E2=80=9D =E2=80=94 it ne=
eds an ioctl().<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p></div><div><p class=3DMsoNormal>What kind of throughput does the ta=
pe drive supply directly?<o:p></o:p></p></div><div><p class=3DMsoNormal><br=
><br><o:p></o:p></p><div><div><p class=3DMsoNormal><span style=3D'font-size=
:11.0pt'>&nbsp;</span><o:p></o:p></p></div><div><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt'>Here=E2=80=99s my backup script:<br>...</span><o=
:p></o:p></p></div></div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p=
 class=3DMsoNormal>-- <br>You received this message because you are subscri=
bed to a topic in the Google Groups &quot;open-iscsi&quot; group.<br>To uns=
ubscribe from this topic, visit <a href=3D"https://groups.google.com/d/topi=
c/open-iscsi/jp7zMTdWbN8/unsubscribe">https://groups.google.com/d/topic/ope=
n-iscsi/jp7zMTdWbN8/unsubscribe</a>.<br>To unsubscribe from this group and =
all its topics, send an email to <a href=3D"mailto:open-iscsi+unsubscribe@g=
ooglegroups.com">open-iscsi+unsubscribe@googlegroups.com</a>.<br>To view th=
is discussion on the web visit <a href=3D"https://groups.google.com/d/msgid=
/open-iscsi/CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail.com?utm_medium=3De=
mail&amp;utm_source=3Dfooter">https://groups.google.com/d/msgid/open-iscsi/=
CCD69511-2C68-4703-9BDD-A1345922DA2D%40gmail.com</a>.<o:p></o:p></p></div><=
/body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/003d01d6abfc%247c150930%24743f1b90%24%40perdrix.co.uk=
?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/=
open-iscsi/003d01d6abfc%247c150930%24743f1b90%24%40perdrix.co.uk</a>.<br />

------=_NextPart_000_003E_01D6ABFC.7C1668C0--

