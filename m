Return-Path: <open-iscsi+bncBCDKFKEK2EMRBDMERXXAKGQEHMBB6ZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C9882F212D
	for <lists+open-iscsi@lfdr.de>; Wed,  6 Nov 2019 22:58:37 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id h3sf12916lfp.17
        for <lists+open-iscsi@lfdr.de>; Wed, 06 Nov 2019 13:58:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573077517; cv=pass;
        d=google.com; s=arc-20160816;
        b=LfdkwC/2CbSatxUNZ7apwRiUO4b9wn8jf7QUlHVLwqqMGhqav805CwexazpUQlloao
         1ZncEUNTpZPEo2yCtS6iYv+3Ue1MMQVKkfFJH28pD0DriRvGbOjdsNNMtfaVz3HlkWSF
         8v8GQOEOtu5KweJFqF1KV4Fu41VNljDBV7ZmXvGPQH46QeJ/bXxTVR5Xj4X0j6aeJs0l
         iRJFunUUhf9KLSYXc8W3AHBKrQKIXLudEcNN45B40Ni1jhZObLDDGoHE41SeVVpydyFG
         Bban6c4xb69MQDKRs3bOozZwn8Mf7Q9E26qQNNT0qIhUcfQ6EWlonlAHhGWKKaOVJ3x6
         BX6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:thread-index
         :content-language:mime-version:message-id:date:subject:in-reply-to
         :references:to:from:sender:dkim-signature;
        bh=T0G8cMa1k2fHTeVlP7Rok7BG3XP3LoL0QoIoZYCmoAc=;
        b=OA2aotT7wrkpV7knBe6hQEmWobIpnT6+D77xRA4iKL8vRNyzHcWZBWkeipIcld8uZ1
         ajG876k9htwE1MIjrbt67jjk/lTe8F7I5chTtth3ExdrtqIrO+IitnHygB9ovgXarlVi
         eoDwKLAEqIZTdCbWM1Bcw4CDL+ekqK1/V3L2gFaV386GGtKfKeEnfFLkjRrkcbjf1KKl
         +Zy5Xj3kaPnQ9a0CLB8edDZQV0plK10g/ORZ6nFFMSn5ye+EiV0PEnNsbrkNPPK40fZS
         38mVW2UJk3HXcggZSAdnggygz1+Ba9tPO9hSZcb4taKEztxo5nfnykREXFV7tA8qLJHP
         bPuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 134.119.228.105 is neither permitted nor denied by best guess record for domain of dirk@laurenz.ws) smtp.mailfrom=dirk@laurenz.ws
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:content-language:thread-index:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=T0G8cMa1k2fHTeVlP7Rok7BG3XP3LoL0QoIoZYCmoAc=;
        b=p1ekZGl4jW3VLxe57htuPquXn0skOqewv1G1d8MgJROiPZBWD6Kl4HczrRD6z+EEWL
         koAbDRyuthOUI5pZ6ccXBXCbXO+taL1VjuR1bywEZvQgzoUHBa65Jy8EYWESwerONoVx
         VOdujWdACZtHe9DrkKxp+TXuTwoMlnNaBCbqMUO8f4fxbA0/BI7kMK5ri0uy8FJgCT3o
         +PCPG8VONdNy0+LxqF4ZmyMV6RKDT7HsMrfIl6YZvvcrXSNoy9qj4k5riknCB7uQIxC2
         hXLYosXRTTP8IVrErzezZ/36McuSezlR8FDibXEZK2lPxZNBFScs5HiA2vaRM0exqphH
         Aj1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:content-language:thread-index
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T0G8cMa1k2fHTeVlP7Rok7BG3XP3LoL0QoIoZYCmoAc=;
        b=tiHL9nTKm7N4gaJPw5HCNtJBcSbp06Vj6fB744wZCUxqYxaPaZGfsRmt2OR1lC7ivQ
         c6FwNa96yEU0OXWW9e5iaMEKL+6bzX6w+NvkLZ+QI0Tdj8CWjcw8exeJhhI7XWelkD4G
         iWCGVeJA80/7ZqGHqnQv9eyuou//MuYRUfmUFa4YtjQMsOVXFONscZzQsTQVsGIvz3n2
         4DEyBF2eoopaK8P1WBLPTEIHNkbb69VMx1dGaG+MWqACupHXtSdDsdjb5po4XFODtmtY
         qPspuNBKmActuXXwe3XLnzzsYzTuguF+elf12v0cDDFSbEQOoczmEe46NzahWWRLXK1h
         ikkA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV5inRQR89gZCKTy2qFxaU7u/uU4rUMszOTZAXjLaWaM+5q1c1+
	AyOsBkjHjOmYJCRookOgfa0=
X-Google-Smtp-Source: APXvYqz0SbwoM6+IRxVgacg9pXl7kYdnsp+M4rYaR2eJBqw+zaWscXGOlrBFKJlX2nofE7DCEO/Pow==
X-Received: by 2002:ac2:5295:: with SMTP id q21mr25485567lfm.93.1573077517301;
        Wed, 06 Nov 2019 13:58:37 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:904c:: with SMTP id n12ls1165493ljg.8.gmail; Wed, 06 Nov
 2019 13:58:36 -0800 (PST)
X-Received: by 2002:a2e:998a:: with SMTP id w10mr3573507lji.66.1573077516581;
        Wed, 06 Nov 2019 13:58:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573077516; cv=none;
        d=google.com; s=arc-20160816;
        b=RVNYiQbQpZQWpSoekJIU9+8EodPwtwY5CQ2XigDhgY4moMC7AB4pRZDg4EBp4nXb4t
         KU7GmPSXHuNn2v7QAVQkn3FoK8iBDzIZakRihHfvFfkXjpbizJTSU328yEzW/FXFubyo
         ThA6YuNodAj72sH6b0MqGauaMZup8j4xkDmm2AB6uNf960Em2QekMPQU5Dt+WBUrq+5x
         k0Fj8zcy/wSWNrRLHLKjNqEpCOGZQlMgwo1xUBZ6x/ttDgJ4Ih37f2QetZ5UVnwXJrnU
         7KnLaOKMPJhg8ecRtY0qKANNeOIzmO03QfL6kGgnBc+6HfVw5tOAUrPxmsLkB+zjgbmQ
         73xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :in-reply-to:references:to:from;
        bh=11FCF6lkJI0H9uuCYQCYhnw3U53fhXvYAcv3R8+aAes=;
        b=dmHVX2jPDWGF7Ok0dYKFizfTKumtgSxnjqmuNh859JUK9pw0RH0KLDDEMcUwo41Te8
         vsJ2OupUNZReEiMnIkzvZFeN0MydDnxUkgF/ClmaefMPrVY8Eq0euPNA236/JNglDu0W
         /GxG3noZvWIjj5l98bNs1RMiGuSesv6XRDInUsyyzqiBCpL/QM+79/sPM/Jj3dv6fFvq
         woQRXi1UvEwlwMdOTECuuz1s8qJqd9YwYovy90zPBz7mevXcGmf+8ije0qip2bwFbxj3
         FWK/FXuFDIv2Yz1K5wBlW07GJs5eS0WUZk/l9PKiZEmJcczUrw++AuBgBpW0WcYWHpQU
         Nh3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 134.119.228.105 is neither permitted nor denied by best guess record for domain of dirk@laurenz.ws) smtp.mailfrom=dirk@laurenz.ws
Received: from smtprelay07.ispgateway.de (smtprelay07.ispgateway.de. [134.119.228.105])
        by gmr-mx.google.com with ESMTPS id x23si8235lfq.0.2019.11.06.13.58.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 13:58:36 -0800 (PST)
Received-SPF: neutral (google.com: 134.119.228.105 is neither permitted nor denied by best guess record for domain of dirk@laurenz.ws) client-ip=134.119.228.105;
Received: from [87.153.233.88] (helo=w10test)
	by smtprelay07.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92.3)
	(envelope-from <dirk@laurenz.ws>)
	id 1iSTJz-0007cM-LX
	for open-iscsi@googlegroups.com; Wed, 06 Nov 2019 22:58:35 +0100
From: <dirk@laurenz.ws>
To: <open-iscsi@googlegroups.com>
References: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com> <30c2ecf6-5d7b-42be-9487-4d07b18fd5c5@googlegroups.com>
In-Reply-To: <30c2ecf6-5d7b-42be-9487-4d07b18fd5c5@googlegroups.com>
Subject: AW: iscsiadm unable to connect to iscsd
Date: Wed, 6 Nov 2019 22:58:35 +0100
Message-ID: <256d01d594ed$56711830$03534890$@laurenz.ws>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_256E_01D594F5.B8364380"
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQLi69J0l8SstMgfWRhKPVD2VyC++wHwqIkBpVR9oUA=
X-Df-Sender: ZGlya0BsYXVyZW56Lndz
X-Original-Sender: dirk@laurenz.ws
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 134.119.228.105 is neither permitted nor denied by best guess
 record for domain of dirk@laurenz.ws) smtp.mailfrom=dirk@laurenz.ws
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

------=_NextPart_000_256E_01D594F5.B8364380
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

i want ot give feedback. That fix solved our issue.

Thanks a lot

=20

Von: open-iscsi@googlegroups.com <open-iscsi@googlegroups.com> Im Auftrag v=
on The Lee-Man
Gesendet: Montag, 30. September 2019 23:14
An: open-iscsi <open-iscsi@googlegroups.com>
Betreff: Re: iscsiadm unable to connect to iscsd

=20

Okay, I believe I found the problem, and it's one that I've seen before. On=
 one particular path -- in this case, when you specify "-s" as well as "-r =
N" -- the code path forgets to set the timeout to "none" when communicating=
 with iscsid.

=20

I have pushed my change to https://github.com/gonzoleeman/open-iscsi branch=
 fix-session-display-error

=20

Please feel free to try this out before I merge it into the main line, but =
it seems to fix the problem for me.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com <mailto:open-iscsi+unsubscr=
ibe@googlegroups.com> .
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%40googlegroups.com <https:/=
/groups.google.com/d/msgid/open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%=
40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter> .

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/256d01d594ed%2456711830%2403534890%24%40laurenz.ws.

------=_NextPart_000_256E_01D594F5.B8364380
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D"Microsoft=
 Word 15 (filtered medium)"><style><!--
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
span.E-MailFormatvorlage20
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'mso=
-fareast-language:EN-US'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'>i want ot give feed=
back. That fix solved our issue.<o:p></o:p></span></p><p class=3DMsoNormal>=
<span style=3D'mso-fareast-language:EN-US'>Thanks a lot<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'mso-fareast-language:EN-US'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><b>Von:</b> open-iscsi@googlegroups=
.com &lt;open-iscsi@googlegroups.com&gt; <b>Im Auftrag von </b>The Lee-Man<=
br><b>Gesendet:</b> Montag, 30. September 2019 23:14<br><b>An:</b> open-isc=
si &lt;open-iscsi@googlegroups.com&gt;<br><b>Betreff:</b> Re: iscsiadm unab=
le to connect to iscsd<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p>=
</p><div><div><p class=3DMsoNormal>Okay, I believe I found the problem, and=
 it's one that I've seen before. On one particular path -- in this case, wh=
en you specify &quot;-s&quot; as well as &quot;-r N&quot; -- the code path =
forgets to set the timeout to &quot;none&quot; when communicating with iscs=
id.<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></di=
v><div><p class=3DMsoNormal>I have pushed my change to <a href=3D"https://g=
ithub.com/gonzoleeman/open-iscsi">https://github.com/gonzoleeman/open-iscsi=
</a> branch fix-session-display-error<o:p></o:p></p></div><div><p class=3DM=
soNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Please feel f=
ree to try this out before I merge it into the main line, but it seems to f=
ix the problem for me.<o:p></o:p></p></div></div><p class=3DMsoNormal>-- <b=
r>You received this message because you are subscribed to the Google Groups=
 &quot;open-iscsi&quot; group.<br>To unsubscribe from this group and stop r=
eceiving emails from it, send an email to <a href=3D"mailto:open-iscsi+unsu=
bscribe@googlegroups.com">open-iscsi+unsubscribe@googlegroups.com</a>.<br>T=
o view this discussion on the web visit <a href=3D"https://groups.google.co=
m/d/msgid/open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%40googlegroups.co=
m?utm_medium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d/m=
sgid/open-iscsi/30c2ecf6-5d7b-42be-9487-4d07b18fd5c5%40googlegroups.com</a>=
.<o:p></o:p></p></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/256d01d594ed%2456711830%2403534890%24%40laurenz.ws?ut=
m_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/ope=
n-iscsi/256d01d594ed%2456711830%2403534890%24%40laurenz.ws</a>.<br />

------=_NextPart_000_256E_01D594F5.B8364380--

