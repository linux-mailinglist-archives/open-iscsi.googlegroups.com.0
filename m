Return-Path: <open-iscsi+bncBCDKFKEK2EMRBXE6Z3WAKGQEFRZMQWA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id AC10DC3EC8
	for <lists+open-iscsi@lfdr.de>; Tue,  1 Oct 2019 19:39:40 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i10sf6306170wrb.20
        for <lists+open-iscsi@lfdr.de>; Tue, 01 Oct 2019 10:39:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569951580; cv=pass;
        d=google.com; s=arc-20160816;
        b=D779fc8lXRPPUuNlIBzvDiPFJZYhr9B9ji/HthaxxfRf8O0G/+0KWk52LdogVFZPZ/
         kk5jgP+r/WzjXi7PxoRR258jL2NRY4M1hapd0Tb0Lls9e0j4/eS/7ZuVHPdotaMfPFxH
         dMF4UVkS5VHOF+X0uXUIH3if5Niu20mzAkJDZfd9ihMzB4jWYxubXFwHYERelvYOwXK3
         aglsNJ5ICP3gwRCiocAtOA5fDD52uy4Fo1BGJTIjcxiJzBY93ibnRY1hIfc3EFq1AWjK
         uo35yMmTy4hZJz7vOnH25Or7GoV226ASS3kLY1SbbbOj/QceDGOq26kZU82NNaCfANpC
         49Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:thread-index
         :content-language:mime-version:message-id:date:subject:in-reply-to
         :references:to:from:sender:dkim-signature;
        bh=rHRJLqdmQACrV7D30c2x2Po5qooO7vWe8Aj/fMuVk5o=;
        b=kayZqN8yqUUMrmOUnqqpbirJoDmqn53Pu0OguO4adfbtkjQp9n2Q5Qcuca14iqcGez
         WLnw9pAa3t+xs1sNO0mwuknB82UeX1RIENvX5N24hrSwbdAQyygUOCuHGiFoyOilsleK
         L9w3qVolAeVjibOW6jleT3lVRtBoExFNpXmTNApeWWwdVvA/ssYsgnZuT7NJ/uOOLrDe
         5iVQ1grcwZloC1HQJGUZNu4aUq2FeOrqaBKDEKU4jkT/PjcrGTcJTPQkd0OGX92tQFZJ
         g13iW/k1pWG26SoCqK+6w9eSVPtwSTsfVV6nTP3Rm3hqs3fO3zPH5KGovo5uS4wsIsig
         GGnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 80.67.31.98 is neither permitted nor denied by best guess record for domain of dirk@laurenz.ws) smtp.mailfrom=dirk@laurenz.ws
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:content-language:thread-index:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rHRJLqdmQACrV7D30c2x2Po5qooO7vWe8Aj/fMuVk5o=;
        b=SV/A345CNuA71k3+YxMyhN7/1fTqiLb9XReN56Eg5YK50I+w4rJVl6Kc5ex0whuOSr
         tvQ+7FlqPyre5mwH0tvBvzxgggKrD74l6pK/djENH5Q0JHalIuIEbc8q6kX5zRPfSLWu
         TndPAkQyGygJDa80rcHmjXWFuBl3XRZJ/tte+Rm8ySO7IHUxdGBFhMAcgN1sSXcpeTBt
         im3S9Fm1EN3nkgxMXblixNoj3+AJPTClv2JspD7K5dCkf4qBsCas5ScoFOxb9KizRnzL
         P97JPWgtC7vSs4VKc4js57m5UfKw/OlIBO/wg1gwbMEFSmJVwOyTY51z4ZVlXeT0JJvQ
         cAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:content-language:thread-index
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rHRJLqdmQACrV7D30c2x2Po5qooO7vWe8Aj/fMuVk5o=;
        b=bH7Cfcj8PvbhU1HQDdwkSFlCJ2t73t/5mUxv/2oEzwZq4XGFXZ84WZPCEu7P336YQu
         drX4SqPeuesdD6CX1Vk7yD0QoTK51T5UxquNTo7z+gakVGjT+Y/MqhdekC3sECO07CkG
         dJ2kPDhUBK2HcuXARAojmdJY62YmM9Q6Em3KQu2noQuNnPloPe+LYCB9843i+aSItIgw
         9wo58s20KiycYYHhu5KmLiLnF0PKXv6BJIrPQbvWc9TqseJkZf7r1aEd9nenkm2uX3pS
         epNOd6sTYjsV3wESN5OzsxrRCgi2EekpKMcCjbSYJCWBASRduxSPNHIi7YKAFth3DDXr
         mVXw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUVwMTiFHG8Cb4lsSRxBaVqmbtuBsgKVUJ2eWT7w4lXxsVt0h6r
	ITa9dwKptVJ1zPfZUjqaddE=
X-Google-Smtp-Source: APXvYqzKwt92MNCBvpdH+ZKm8QNonStTw6722F2xsKTSifHYamWUbrb86upBJGlPHzhMMSiKr9kEIg==
X-Received: by 2002:a1c:2c3:: with SMTP id 186mr4526228wmc.172.1569951580351;
        Tue, 01 Oct 2019 10:39:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a7b:c0d9:: with SMTP id s25ls1498731wmh.4.gmail; Tue, 01 Oct
 2019 10:39:39 -0700 (PDT)
X-Received: by 2002:a1c:80c6:: with SMTP id b189mr5064353wmd.34.1569951579683;
        Tue, 01 Oct 2019 10:39:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569951579; cv=none;
        d=google.com; s=arc-20160816;
        b=AqyA33hdXrAiW3P4IUrza+uZduLiKON0tgsdRgIbQ65Rc03+AQqhG5J9G7MSSpIo4p
         oV5v8h0oW3W/+GmgYbKFU1S09T9EMws/ZS7sPbyFlpxaWqraUcpJYyyfZ8Jdb+Lq79lg
         3akGaZCHez2CfdssMzf1eaUeKFXYBoiKit3PhKLVv9uxmOydzTi6LlJgLPFBtMzVcNe6
         W6s1KUp2mGOSw7HU+KVelgYv02KU0sj774qLjozRQzcPeS6e9vmVKpwcyUcrXoJK3ifL
         4oHBVO4OR8KXNqchnEJtSIJNzmg5eGZAPRL9cuEBj7qxcBUwfjeLjvMBKoUJhH76G9jT
         lbkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :in-reply-to:references:to:from;
        bh=1nH+5uA+veXcOfcVOTJMk9ugcsL0aYZiAkRGG0fHoxM=;
        b=jzy5eb6hkB9e5sDHc2fFkH+vLTJUoaT7wxNbpc2lgi2/OKBdjZikHbFyWpbP5dJEKR
         oTVoYftAXGbvLAYokOqviZ0I8HH/+yO+OHUWuNG7mzGTgutt5yeqwCstrTE+szDJOxHw
         vKeHma9mNXx6LOwyXR4rDnV2054ghl8Z5YTecFJyqs1xMUEeCmHRqMQQvqXX8EkX5nBW
         rrqL7xylQeg+ur8lS2qxyN8H4xyTwLULNBOdDDgSh/JHiZlHab47YAH4OUIOCXV2M+Sh
         YuXeuhdYBKmwf0aXsHimnxOQVnxB8slsVrdqtamM4X0hDbgPbjh+hYmgEeW2CrrVyCKZ
         c2hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 80.67.31.98 is neither permitted nor denied by best guess record for domain of dirk@laurenz.ws) smtp.mailfrom=dirk@laurenz.ws
Received: from smtprelay05.ispgateway.de (smtprelay05.ispgateway.de. [80.67.31.98])
        by gmr-mx.google.com with ESMTPS id l3si302195wmg.0.2019.10.01.10.39.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 10:39:39 -0700 (PDT)
Received-SPF: neutral (google.com: 80.67.31.98 is neither permitted nor denied by best guess record for domain of dirk@laurenz.ws) client-ip=80.67.31.98;
Received: from [84.165.52.12] (helo=w10test)
	by smtprelay05.ispgateway.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92.3)
	(envelope-from <dirk@laurenz.ws>)
	id 1iFM7e-0003aZ-Ul
	for open-iscsi@googlegroups.com; Tue, 01 Oct 2019 19:39:38 +0200
From: <dirk@laurenz.ws>
To: <open-iscsi@googlegroups.com>
References: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com> <f4da4808-aa2a-4de5-ace3-8f8a072b6593@googlegroups.com>
In-Reply-To: <f4da4808-aa2a-4de5-ace3-8f8a072b6593@googlegroups.com>
Subject: AW: iscsiadm unable to connect to iscsd
Date: Tue, 1 Oct 2019 19:39:38 +0200
Message-ID: <02d201d5787f$32ff4eb0$98fdec10$@laurenz.ws>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_02D3_01D5788F.F6893020"
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQLi69J0l8SstMgfWRhKPVD2VyC++wI55kKjpRlXdlA=
X-Df-Sender: ZGlya0BsYXVyZW56Lndz
X-Original-Sender: dirk@laurenz.ws
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 80.67.31.98 is neither permitted nor denied by best guess record
 for domain of dirk@laurenz.ws) smtp.mailfrom=dirk@laurenz.ws
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

------=_NextPart_000_02D3_01D5788F.F6893020
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot, i forwarded this to suse, as they maintain the iscsi packages=
=E2=80=A6

=20

Von: open-iscsi@googlegroups.com <open-iscsi@googlegroups.com> Im Auftrag v=
on The Lee-Man
Gesendet: Montag, 30. September 2019 23:20
An: open-iscsi <open-iscsi@googlegroups.com>
Betreff: Re: iscsiadm unable to connect to iscsd

=20

See https://github.com/open-iscsi/open-iscsi/pull/174

On Friday, September 20, 2019 at 2:02:20 AM UTC-7, Dirk Laurenz wrote:

Hi,

=20

want to read the session stats for a connection, but iscsiadm claims not to=
 be able to connect to iscsd.

I'm not sure how to debug this:

=20

$host:/etc/iscsi # iscsiadm -m session

tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)

tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flash)

tcp: [3] $IP3:3260,1 $host3:lun01 (non-flash)

$host:/etc/iscsi # iscsiadm -m session -r 2 -s

iscsiadm: Could not execute operation on all sessions: could not connect to=
 iscsid

=20

any idea?

=20

OS is SLES4SAP12 SP4

=20

Regards,

=20

Dirk

=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com <mailto:open-iscsi+unsubscr=
ibe@googlegroups.com> .
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com <https:/=
/groups.google.com/d/msgid/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%=
40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter> .

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/02d201d5787f%2432ff4eb0%2498fdec10%24%40laurenz.ws.

------=_NextPart_000_02D3_01D5788F.F6893020
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
</o:shapelayout></xml><![endif]--></head><body lang=3DDE link=3Dblue vlink=
=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'mso=
-fareast-language:EN-US'>Thanks a lot, i forwarded this to suse, as they ma=
intain the iscsi packages=E2=80=A6<o:p></o:p></span></p><p class=3DMsoNorma=
l><span style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p=
 class=3DMsoNormal><b>Von:</b> open-iscsi@googlegroups.com &lt;open-iscsi@g=
ooglegroups.com&gt; <b>Im Auftrag von </b>The Lee-Man<br><b>Gesendet:</b> M=
ontag, 30. September 2019 23:20<br><b>An:</b> open-iscsi &lt;open-iscsi@goo=
glegroups.com&gt;<br><b>Betreff:</b> Re: iscsiadm unable to connect to iscs=
d<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DM=
soNormal>See <a href=3D"https://github.com/open-iscsi/open-iscsi/pull/174">=
https://github.com/open-iscsi/open-iscsi/pull/174</a><br><br>On Friday, Sep=
tember 20, 2019 at 2:02:20 AM UTC-7, Dirk Laurenz wrote:<o:p></o:p></p><blo=
ckquote style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0c=
m 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm'><div><p class=3DMsoNormal>H=
i,<o:p></o:p></p><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div>=
<p class=3DMsoNormal>want to read the session stats for a connection, but i=
scsiadm claims not to be able to connect to iscsd.<o:p></o:p></p></div><div=
><p class=3DMsoNormal>I'm not sure how to debug this:<o:p></o:p></p></div><=
div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><p class=3DMs=
oNormal>$host:/etc/iscsi # iscsiadm -m session<o:p></o:p></p></div><div><p =
class=3DMsoNormal>tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)<o:p></o:=
p></p></div><div><p class=3DMsoNormal>tcp: [2] $IP2:3260,1032 $host2-lun01 =
(non-flash)<o:p></o:p></p></div><div><p class=3DMsoNormal>tcp: [3] $IP3:326=
0,1 $host3:lun01 (non-flash)<o:p></o:p></p></div><div><p class=3DMsoNormal>=
$host:/etc/iscsi # iscsiadm -m session -r 2 -s<o:p></o:p></p></div><div><p =
class=3DMsoNormal>iscsiadm: Could not execute operation on all sessions: co=
uld not connect to iscsid<o:p></o:p></p></div></div><div><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>any idea?<o:p></o:p=
></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p cla=
ss=3DMsoNormal>OS is SLES4SAP12 SP4<o:p></o:p></p></div><div><p class=3DMso=
Normal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Regards,<o:p></=
o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Dirk<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&=
nbsp;</o:p></p></div></div></blockquote></div><p class=3DMsoNormal>-- <br>Y=
ou received this message because you are subscribed to the Google Groups &q=
uot;open-iscsi&quot; group.<br>To unsubscribe from this group and stop rece=
iving emails from it, send an email to <a href=3D"mailto:open-iscsi+unsubsc=
ribe@googlegroups.com">open-iscsi+unsubscribe@googlegroups.com</a>.<br>To v=
iew this discussion on the web visit <a href=3D"https://groups.google.com/d=
/msgid/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com?u=
tm_medium=3Demail&amp;utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com</a>.<o=
:p></o:p></p></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/02d201d5787f%2432ff4eb0%2498fdec10%24%40laurenz.ws?ut=
m_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/ope=
n-iscsi/02d201d5787f%2432ff4eb0%2498fdec10%24%40laurenz.ws</a>.<br />

------=_NextPart_000_02D3_01D5788F.F6893020--

