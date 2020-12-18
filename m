Return-Path: <open-iscsi+bncBC755V5RXMKBBLEM6T7AKGQEC42HLRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FC42DE9DD
	for <lists+open-iscsi@lfdr.de>; Fri, 18 Dec 2020 20:42:37 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id j25sf1819537oie.12
        for <lists+open-iscsi@lfdr.de>; Fri, 18 Dec 2020 11:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=M4KeI9myz6mGrkEETUkfh/EZVsvf/plhLv2RmDzNoi8=;
        b=nG0zrNjG9ZvZBybw0ipRBC1TnuxN6sLwf9wO0y7KkD8WqVtFwPOdGk5IAoSucTxg+Q
         Xr+ljZxEt3AhTkfbsVlkgjQgdqLUGItpx9CRLBDn9B3grTuHICVBNtzmMeI1qWUGTpBA
         sdDK9UJd3bAdLXDTTvzL4Jq8QQLEFVDgDCsujSpeV7ZHQ+JtycNbRBGoNTQk6p0xZKxZ
         q/S9lGqtKoEFh4YB7TyF0jLFVpKhETUKiVAY6SsQAvfP981YNeK9680fcIl8ZwJH/cIU
         9ZBdO9u7OvMm65NTOPH5qgbYJ+azYiQFDSAH9X7g7o1k6FQZr4+atLUSMSaud2zUtedG
         lbUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M4KeI9myz6mGrkEETUkfh/EZVsvf/plhLv2RmDzNoi8=;
        b=szhScvA9xN1W6ir7sGnRooKLyVLsG5d7MMbAlMxVmgizqkkZmmb2K77C4SVKWfkNtQ
         lca2vdqo4DK3Aub8rx55KwBWUDfUWToEJr/Zv63Wdn8CF1pGOpOI1iKx7b6/bMw5CScW
         U8VX/uGNBB5k7Ik04tgJWm+vJYtDgFRTC1OqDwlNM82zjXfhgXnVZAiHwo+MvFVRJ0gc
         aw2sCaaby8OTZWpT3o/pGPgnS4eDGoW+M+jypMOtiQ9hiAFr59HkR9OrOCMpzmbcTs65
         rleUucjn8mhqULUYPjyuA/JutcHa978IyL5EIYvb8BIqjfT/5GsOaOLewr7t07fbO7gT
         d4Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M4KeI9myz6mGrkEETUkfh/EZVsvf/plhLv2RmDzNoi8=;
        b=HNFY1IqWZg6GdJ1LHSpit/EedrNK7Z8/tVUIi3qR8z/e9uD6L8Ci4SB6heUZUm1xoh
         e7B+aQ070BLTzMAHoLVSHXIJ/+4OrkItaaz3TTBIYQke5CUZKtdAbRT9y3wziORG8Rn2
         nmxcjBAkHC8Er9WrRQ2VM3Ka1Um2EBvLPclsXC7b5PE/5Yo2D8/kmHIF4AG/tavaeTCw
         yS08tc5RvexrUVwBGV2yldnroT31VxDWi5lsaKVsJWy+b6WMj6DxgXS1gAZk+SSKLapV
         Hhl/qQpSOSlLq/ZdLfYx4BtVQJZko1NDTXNq++gxWkxq3DNQVbtNigwZAjjhD2EpFTiv
         0XWg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533laLQBR7synbrcADV5+7NhMeCf1ycsaw5aPCtHNZA5QPoG3PkS
	OiMLiigBaJOs8B4/vMQpois=
X-Google-Smtp-Source: ABdhPJymNZdyfcSd1crk04N85MVDLJrMurtk0zGW4GXLdpHNPd9brMNwJFTPEkSG9R6f8g94YNxEPQ==
X-Received: by 2002:a9d:453:: with SMTP id 77mr4020263otc.91.1608320556797;
        Fri, 18 Dec 2020 11:42:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls8523621oto.8.gmail; Fri, 18 Dec
 2020 11:42:36 -0800 (PST)
X-Received: by 2002:a05:6830:10:: with SMTP id c16mr3953715otp.162.1608320556165;
        Fri, 18 Dec 2020 11:42:36 -0800 (PST)
Date: Fri, 18 Dec 2020 11:42:35 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <92c2365f-197a-4ae3-a2b1-e9f544cf71b7n@googlegroups.com>
In-Reply-To: <48afec52-1107-f3df-1c74-0d55da4c1e11@greenbone.net>
References: <48afec52-1107-f3df-1c74-0d55da4c1e11@greenbone.net>
Subject: Re: Clarification request on open-iscsi affected by uIP
 vulnerabilities (AMNESIA:33)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1824_1910811179.1608320555123"
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

------=_Part_1824_1910811179.1608320555123
Content-Type: multipart/alternative; 
	boundary="----=_Part_1825_1828777292.1608320555123"

------=_Part_1825_1828777292.1608320555123
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Christian:

Chris Leech just merged in the mitigations for these CVEs and tagged a new=
=20
release.

These CVEs were all related to the uip package that iscsiuio uses. But in=
=20
fact iscsiuio only uses uip for network "services", such as DHCP, ARP, etc,=
=20
and not for normal TCP/IP communications. So the risk was, honestly, never=
=20
very high.

I believe all the CVEs were published 12/8 (or so), but we were working on=
=20
them for a while before that.

P.S. Thanks to Chris for doing the mitigation work and research, and then=
=20
merging/publishing the result!

On Thursday, December 17, 2020 at 10:41:06 AM UTC-8 Christian Fischer wrote=
:

> Hi,
>
> the following CVEs related to the recent AMNESIA:33 vulnerabilities=20
> affecting various open source network stack components:
>
> https://nvd.nist.gov/vuln/detail/CVE-2020-13987
> https://nvd.nist.gov/vuln/detail/CVE-2020-13988
> https://nvd.nist.gov/vuln/detail/CVE-2020-17437
> https://nvd.nist.gov/vuln/detail/CVE-2020-17438
> https://nvd.nist.gov/vuln/detail/CVE-2020-17439
> https://nvd.nist.gov/vuln/detail/CVE-2020-17440
> https://nvd.nist.gov/vuln/detail/CVE-2020-24334
> https://nvd.nist.gov/vuln/detail/CVE-2020-24335 (not published yet)
>
> While the CVEs are mentioning Contiki and / or uIP a paper [1] of the=20
> research teams reveals this detail:
>
> > The open-iscsi project, which provides an implementation of the iSCSI
> > protocol used by Linux distributions, such as Red Hat, Fedora, SUSE
> > and Debian, also imports part of the uIP code. Again, we were able to
> > detect that some CVEs apply to it.
>
> and
>
> > Some of the vendors and projects using these original stacks, such as
> > open-iscsi, issued their own patches.
>
> Unfortunately the "some CVEs apply to it" is not further specified (not=
=20
> even the CVEs for open-iscsi are listen) and i wasn't able to pinpoint=20
> the exact details. Some sources [2] mention 2.1.12 as the fixed version=
=20
> of open-iscsi (which is wrong as the latest available version is 2.1.2=20
> from July 2020, i have already contacted the CISA about that a few days=
=20
> ago but haven't received any response yet) while others [3] mention <=3D=
=20
> 2.1.1 as vulnerable.
>
> As none of the current releases listed at [4] mention the uIP=20
> vulnerabilities in some way i would like to ask for clarification of the=
=20
> following:
>
> - Which CVEs of uIP applies to the code base of uIP imported into=20
> open-iscsi?
> - Which releases of open-iscsi are affected?
> - Which release of open-iscsi is fixing one or more of this=20
> vulnerabilities?
>
> Thank you very much in advance for a response.
>
> Regards,
>
> [1]=20
>
> https://www.forescout.com/company/resources/amnesia33-how-tcp-ip-stacks-b=
reed-critical-vulnerabilities-in-iot-ot-and-it-devices/
> [2] https://us-cert.cisa.gov/ics/advisories/icsa-20-343-01
> [3]=20
>
> https://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updates-zu-d=
en-TCP-IP-Lecks-im-Ueberblick-4984341.html
> [4] https://github.com/open-iscsi/open-iscsi/releases
>
> --=20
>
> Christian Fischer | PGP Key: 0x54F3CE5B76C597AD
> Greenbone Networks GmbH | https://www.greenbone.net
> Neumarkt 12, 49074 Osnabr=C3=BCck, Germany | AG Osnabr=C3=BCck, HR B 2024=
60
> Gesch=C3=A4ftsf=C3=BChrer: Dr. Jan-Oliver Wagner
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/92c2365f-197a-4ae3-a2b1-e9f544cf71b7n%40googlegroups.com.

------=_Part_1825_1828777292.1608320555123
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Christian:</div><div><br></div><div>Chris Leech just merged in the =
mitigations for these CVEs and tagged a new release.</div><div><br></div><d=
iv>These CVEs were all related to the uip package that iscsiuio uses. But i=
n fact iscsiuio only uses uip for network "services", such as DHCP, ARP, et=
c, and not for normal TCP/IP communications. So the risk was, honestly, nev=
er very high.</div><div><br></div><div>I believe all the CVEs were publishe=
d 12/8 (or so), but we were working on them for a while before that.</div><=
div><br></div><div>P.S. Thanks to Chris for doing the mitigation work and r=
esearch, and then merging/publishing the result!<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Thursday, December =
17, 2020 at 10:41:06 AM UTC-8 Christian Fischer wrote:<br/></div><blockquot=
e class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px soli=
d rgb(204, 204, 204); padding-left: 1ex;">Hi,
<br>
<br>the following CVEs related to the recent AMNESIA:33 vulnerabilities=20
<br>affecting various open source network stack components:
<br>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-13987" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-13987&amp;source=
=3Dgmail&amp;ust=3D1608406795566000&amp;usg=3DAFQjCNF1OYyh9U7O2cEWo0IdiO3i8=
mxnAg">https://nvd.nist.gov/vuln/detail/CVE-2020-13987</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-13988" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-13988&amp;source=
=3Dgmail&amp;ust=3D1608406795566000&amp;usg=3DAFQjCNGgWXwhP32I3oe39eDHbXu17=
QQoaw">https://nvd.nist.gov/vuln/detail/CVE-2020-13988</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17437" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17437&amp;source=
=3Dgmail&amp;ust=3D1608406795566000&amp;usg=3DAFQjCNFjUx6uAQw82P-jXCECu8flU=
mh3NQ">https://nvd.nist.gov/vuln/detail/CVE-2020-17437</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17438" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17438&amp;source=
=3Dgmail&amp;ust=3D1608406795566000&amp;usg=3DAFQjCNFebN7nTjcebmIuZprpSlgns=
y1gBg">https://nvd.nist.gov/vuln/detail/CVE-2020-17438</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17439" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17439&amp;source=
=3Dgmail&amp;ust=3D1608406795566000&amp;usg=3DAFQjCNETbneECk1s9Qug4LrPtZJXl=
7U-FA">https://nvd.nist.gov/vuln/detail/CVE-2020-17439</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17440" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17440&amp;source=
=3Dgmail&amp;ust=3D1608406795567000&amp;usg=3DAFQjCNElsxVKDhdNsJcIIJXG4ap-8=
1HXMg">https://nvd.nist.gov/vuln/detail/CVE-2020-17440</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-24334" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-24334&amp;source=
=3Dgmail&amp;ust=3D1608406795567000&amp;usg=3DAFQjCNHNm8AcaStowEdjxCG1ZYILK=
4mT_g">https://nvd.nist.gov/vuln/detail/CVE-2020-24334</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-24335" target=3D"_=
blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-24335&amp;source=
=3Dgmail&amp;ust=3D1608406795567000&amp;usg=3DAFQjCNHjSEl7fkKKvkGLJKuCSLhmV=
reF2w">https://nvd.nist.gov/vuln/detail/CVE-2020-24335</a> (not published y=
et)
<br>
<br>While the CVEs are mentioning Contiki and / or uIP a paper [1] of the=
=20
<br>research teams reveals this detail:
<br>
<br> &gt; The open-iscsi project, which provides an implementation of the i=
SCSI
<br> &gt; protocol used by Linux distributions, such as Red Hat, Fedora, SU=
SE
<br> &gt; and Debian, also imports part of the uIP code. Again, we were abl=
e to
<br> &gt; detect that some CVEs apply to it.
<br>
<br>and
<br>
<br> &gt; Some of the vendors and projects using these original stacks, suc=
h as
<br> &gt; open-iscsi, issued their own patches.
<br>
<br>Unfortunately the &quot;some CVEs apply to it&quot; is not further spec=
ified (not=20
<br>even the CVEs for open-iscsi are listen) and i wasn&#39;t able to pinpo=
int=20
<br>the exact details. Some sources [2] mention 2.1.12 as the fixed version=
=20
<br>of open-iscsi (which is wrong as the latest available version is 2.1.2=
=20
<br>from July 2020, i have already contacted the CISA about that a few days=
=20
<br>ago but haven&#39;t received any response yet) while others [3] mention=
 &lt;=3D=20
<br>2.1.1 as vulnerable.
<br>
<br>As none of the current releases listed at [4] mention the uIP=20
<br>vulnerabilities in some way i would like to ask for clarification of th=
e=20
<br>following:
<br>
<br>- Which CVEs of uIP applies to the code base of uIP imported into=20
<br>open-iscsi?
<br>- Which releases of open-iscsi are affected?
<br>- Which release of open-iscsi is fixing one or more of this vulnerabili=
ties?
<br>
<br>Thank you very much in advance for a response.
<br>
<br>Regards,
<br>
<br>[1]=20
<br><a href=3D"https://www.forescout.com/company/resources/amnesia33-how-tc=
p-ip-stacks-breed-critical-vulnerabilities-in-iot-ot-and-it-devices/" targe=
t=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.co=
m/url?hl=3Den&amp;q=3Dhttps://www.forescout.com/company/resources/amnesia33=
-how-tcp-ip-stacks-breed-critical-vulnerabilities-in-iot-ot-and-it-devices/=
&amp;source=3Dgmail&amp;ust=3D1608406795567000&amp;usg=3DAFQjCNHbb-tYD2csba=
YU1Y_B3qxGuMXURQ">https://www.forescout.com/company/resources/amnesia33-how=
-tcp-ip-stacks-breed-critical-vulnerabilities-in-iot-ot-and-it-devices/</a>
<br>[2] <a href=3D"https://us-cert.cisa.gov/ics/advisories/icsa-20-343-01" =
target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.goog=
le.com/url?hl=3Den&amp;q=3Dhttps://us-cert.cisa.gov/ics/advisories/icsa-20-=
343-01&amp;source=3Dgmail&amp;ust=3D1608406795567000&amp;usg=3DAFQjCNGJHE31=
KZuOuMUdRG3sUbkgy5AtFw">https://us-cert.cisa.gov/ics/advisories/icsa-20-343=
-01</a>
<br>[3]=20
<br><a href=3D"https://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und=
-Updates-zu-den-TCP-IP-Lecks-im-Ueberblick-4984341.html" target=3D"_blank" =
rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den=
&amp;q=3Dhttps://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updat=
es-zu-den-TCP-IP-Lecks-im-Ueberblick-4984341.html&amp;source=3Dgmail&amp;us=
t=3D1608406795567000&amp;usg=3DAFQjCNHjWWGC-2L-_nwggVd6wrwT4SfuKg">https://=
www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updates-zu-den-TCP-IP-=
Lecks-im-Ueberblick-4984341.html</a>
<br>[4] <a href=3D"https://github.com/open-iscsi/open-iscsi/releases" targe=
t=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.co=
m/url?hl=3Den&amp;q=3Dhttps://github.com/open-iscsi/open-iscsi/releases&amp=
;source=3Dgmail&amp;ust=3D1608406795567000&amp;usg=3DAFQjCNGVoRngAwL9cV4IJq=
SKDatgU_qkWw">https://github.com/open-iscsi/open-iscsi/releases</a>
<br>
<br>--=20
<br>
<br>Christian Fischer | PGP Key: 0x54F3CE5B76C597AD
<br>Greenbone Networks GmbH | <a href=3D"https://www.greenbone.net" target=
=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"https://www.google.com=
/url?hl=3Den&amp;q=3Dhttps://www.greenbone.net&amp;source=3Dgmail&amp;ust=
=3D1608406795567000&amp;usg=3DAFQjCNFSHmD5I4x9ZEO_IW15wdwSStktgQ">https://w=
ww.greenbone.net</a>
<br>Neumarkt 12, 49074 Osnabr=C3=BCck, Germany | AG Osnabr=C3=BCck, HR B 20=
2460
<br>Gesch=C3=A4ftsf=C3=BChrer: Dr. Jan-Oliver Wagner
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/92c2365f-197a-4ae3-a2b1-e9f544cf71b7n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/92c2365f-197a-4ae3-a2b1-e9f544cf71b7n%40googlegroups.com</a>.=
<br />

------=_Part_1825_1828777292.1608320555123--

------=_Part_1824_1910811179.1608320555123--
