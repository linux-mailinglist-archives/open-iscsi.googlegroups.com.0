Return-Path: <open-iscsi+bncBCO7VZXEXUARBUUT3H7QKGQEAFQTDYI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A08A2EC6F3
	for <lists+open-iscsi@lfdr.de>; Thu,  7 Jan 2021 00:37:56 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id d192sf2835937oob.11
        for <lists+open-iscsi@lfdr.de>; Wed, 06 Jan 2021 15:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=67Zo6HlHkBJRa2O+k951Vi2uA+XiKDbMpgNqp+VNNrU=;
        b=e9SRDBc0a8Z/gQ9THHhtTA/3pURSpelPZgP4moBJh0jQhJEMYlA80e8vKbS9a+oJNX
         YkWZS8G+IzfYZVgKwb+QWluOSfMEnmwbEJ+vglajK2YkaR0GhWMD2OY8ZCOJN7CLUYlg
         ExjNMjgbWXe1ZM5oXzJ1zfLkbKXV9YPmc0qTX79aApyif6O/XqbdyL9uRrUZnwUQ8a/U
         Dqd5EPYu79kp9YQZYF90qUblPyKzGiGtACdLdDkusy009at8RvndvJApy96wkIuDTHS8
         229PMC2z6i1bgoMU8aljRcXBZ22ITqsn3AuLk6RiTc/1IpSRAk0kknib7xhYUUj2jlne
         dqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version:x-original-sender:reply-to:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=67Zo6HlHkBJRa2O+k951Vi2uA+XiKDbMpgNqp+VNNrU=;
        b=uDQnQsgAyoH0yv9dMB8a5m02gh5Bt98qWAJ3VefC2asH5eccqnKhu/kDS2pB/ZvBmk
         72g7+YzONIY6h797/CrQ2bWJuLD/yCkiJ3TRSCTbphJhTpT41zrYnXfxd5MXCvYcsyhE
         I9/5gzMN+la8mzDGOILNFI9ZgFz68vexo6U1qu9CnzW/xJoPqBI1vTDiVZYeWnL6umVp
         VORmvwq1YVJyncghKWhCTKEvIOGm40g2bW41B84a8yELcdOJuzXrwgIHcNGJYm7tlk3z
         WLMy4gb2wJjDz+5GfhBrTLpH4QFpdW7VyLa6DMUFGQw7dpNLc3l8cw+VjpA8Wop9fJIg
         oB/w==
X-Gm-Message-State: AOAM530B5gHPpcYXkfebbmEdWnr7a/vwXAnJj2IBwe3yWBlxQbA3D7lu
	pbRONEMgbGqFeVJgBEFPGKo=
X-Google-Smtp-Source: ABdhPJyse6Cf+lHetQRbf5j4s1H+4t7khPAPkvcP++Hnt+qzhSOy8WQtJQu6ETD+fup3PvhEovxtsw==
X-Received: by 2002:aca:f44f:: with SMTP id s76mr4987420oih.120.1609976275370;
        Wed, 06 Jan 2021 15:37:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:aad2:: with SMTP id t201ls1270044oie.1.gmail; Wed, 06
 Jan 2021 15:37:54 -0800 (PST)
X-Received: by 2002:aca:1918:: with SMTP id l24mr4686841oii.2.1609976274757;
        Wed, 06 Jan 2021 15:37:54 -0800 (PST)
Received: by 2002:a05:6808:a84:b029:e3:727a:da8e with SMTP id q4-20020a0568080a84b02900e3727ada8emsoij;
        Mon, 28 Dec 2020 14:36:01 -0800 (PST)
X-Received: by 2002:aca:dd09:: with SMTP id u9mr705834oig.73.1609194961259;
        Mon, 28 Dec 2020 14:36:01 -0800 (PST)
Date: Mon, 28 Dec 2020 14:36:00 -0800 (PST)
From: "'Christian Fischer' via open-iscsi" <open-iscsi@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <c7dd8133-c778-4d2a-800e-f6d96a441b4an@googlegroups.com>
In-Reply-To: <92c2365f-197a-4ae3-a2b1-e9f544cf71b7n@googlegroups.com>
References: <48afec52-1107-f3df-1c74-0d55da4c1e11@greenbone.net>
 <92c2365f-197a-4ae3-a2b1-e9f544cf71b7n@googlegroups.com>
Subject: Re: Clarification request on open-iscsi affected by uIP
 vulnerabilities (AMNESIA:33)
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8064_204927108.1609194960741"
X-Original-Sender: christian.fischer@greenbone.net
X-Original-From: Christian Fischer <christian.fischer@greenbone.net>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

------=_Part_8064_204927108.1609194960741
Content-Type: multipart/alternative; 
	boundary="----=_Part_8065_810882092.1609194960741"

------=_Part_8065_810882092.1609194960741
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

and thanks for this summary / the clarification about the affected and=20
fixed versions which clears up everything.

It seems there is also a new security advisory around this vulnerabilities=
=20
which gives some more background information:

https://github.com/open-iscsi/open-iscsi/security/advisories/GHSA-r278-fm99=
-8rgp

I have also already contacted the CISA again and asked for an update of=20
their advisory, hope they will correct the wrong version info (2.1.12) soon=
.

Regards,
Christian

On Friday, December 18, 2020 at 8:42:35 PM UTC+1 The Lee-Man wrote:

> Hi Christian:
>
> Chris Leech just merged in the mitigations for these CVEs and tagged a ne=
w=20
> release.
>
> These CVEs were all related to the uip package that iscsiuio uses. But in=
=20
> fact iscsiuio only uses uip for network "services", such as DHCP, ARP, et=
c,=20
> and not for normal TCP/IP communications. So the risk was, honestly, neve=
r=20
> very high.
>
> I believe all the CVEs were published 12/8 (or so), but we were working o=
n=20
> them for a while before that.
>
> P.S. Thanks to Chris for doing the mitigation work and research, and then=
=20
> merging/publishing the result!
>
> On Thursday, December 17, 2020 at 10:41:06 AM UTC-8 Christian Fischer=20
> wrote:
>
>> Hi,=20
>>
>> the following CVEs related to the recent AMNESIA:33 vulnerabilities=20
>> affecting various open source network stack components:=20
>>
>> https://nvd.nist.gov/vuln/detail/CVE-2020-13987=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-13988=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-17437=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-17438=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-17439=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-17440=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-24334=20
>> https://nvd.nist.gov/vuln/detail/CVE-2020-24335 (not published yet)=20
>>
>> While the CVEs are mentioning Contiki and / or uIP a paper [1] of the=20
>> research teams reveals this detail:=20
>>
>> > The open-iscsi project, which provides an implementation of the iSCSI=
=20
>> > protocol used by Linux distributions, such as Red Hat, Fedora, SUSE=20
>> > and Debian, also imports part of the uIP code. Again, we were able to=
=20
>> > detect that some CVEs apply to it.=20
>>
>> and=20
>>
>> > Some of the vendors and projects using these original stacks, such as=
=20
>> > open-iscsi, issued their own patches.=20
>>
>> Unfortunately the "some CVEs apply to it" is not further specified (not=
=20
>> even the CVEs for open-iscsi are listen) and i wasn't able to pinpoint=
=20
>> the exact details. Some sources [2] mention 2.1.12 as the fixed version=
=20
>> of open-iscsi (which is wrong as the latest available version is 2.1.2=
=20
>> from July 2020, i have already contacted the CISA about that a few days=
=20
>> ago but haven't received any response yet) while others [3] mention <=3D=
=20
>> 2.1.1 as vulnerable.=20
>>
>> As none of the current releases listed at [4] mention the uIP=20
>> vulnerabilities in some way i would like to ask for clarification of the=
=20
>> following:=20
>>
>> - Which CVEs of uIP applies to the code base of uIP imported into=20
>> open-iscsi?=20
>> - Which releases of open-iscsi are affected?=20
>> - Which release of open-iscsi is fixing one or more of this=20
>> vulnerabilities?=20
>>
>> Thank you very much in advance for a response.=20
>>
>> Regards,=20
>>
>> [1]=20
>>
>> https://www.forescout.com/company/resources/amnesia33-how-tcp-ip-stacks-=
breed-critical-vulnerabilities-in-iot-ot-and-it-devices/=20
>> [2] https://us-cert.cisa.gov/ics/advisories/icsa-20-343-01=20
>> [3]=20
>>
>> https://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updates-zu-=
den-TCP-IP-Lecks-im-Ueberblick-4984341.html=20
>> [4] https://github.com/open-iscsi/open-iscsi/releases=20
>>
>> --=20
>>
>> Christian Fischer | PGP Key: 0x54F3CE5B76C597AD=20
>> Greenbone Networks GmbH | https://www.greenbone.net=20
>> Neumarkt 12, 49074 Osnabr=C3=BCck, Germany | AG Osnabr=C3=BCck, HR B 202=
460=20
>> Gesch=C3=A4ftsf=C3=BChrer: Dr. Jan-Oliver Wagner=20
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/c7dd8133-c778-4d2a-800e-f6d96a441b4an%40googlegroups.com.

------=_Part_8065_810882092.1609194960741
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>and thanks for this summary / the clarifi=
cation about the affected and fixed versions which clears up everything.<br=
></div><div><br></div><div>It seems there is also a new security advisory a=
round this vulnerabilities which gives some more background information:</d=
iv><div><br></div><div>https://github.com/open-iscsi/open-iscsi/security/ad=
visories/GHSA-r278-fm99-8rgp<br></div><div></div><div><br></div><div>I have=
 also already contacted the CISA again and asked for an update of their adv=
isory, hope they will correct the wrong version info (2.1.12) soon.<br></di=
v><div><br></div><div>Regards,</div><div>Christian<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">On Friday, December=
 18, 2020 at 8:42:35 PM UTC+1 The Lee-Man wrote:<br/></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex; border-left: 1px solid rgb(=
204, 204, 204); padding-left: 1ex;"><div>Hi Christian:</div><div><br></div>=
<div>Chris Leech just merged in the mitigations for these CVEs and tagged a=
 new release.</div><div><br></div><div>These CVEs were all related to the u=
ip package that iscsiuio uses. But in fact iscsiuio only uses uip for netwo=
rk &quot;services&quot;, such as DHCP, ARP, etc, and not for normal TCP/IP =
communications. So the risk was, honestly, never very high.</div><div><br><=
/div><div>I believe all the CVEs were published 12/8 (or so), but we were w=
orking on them for a while before that.</div><div><br></div><div>P.S. Thank=
s to Chris for doing the mitigation work and research, and then merging/pub=
lishing the result!<br></div><br><div class=3D"gmail_quote"><div dir=3D"aut=
o" class=3D"gmail_attr">On Thursday, December 17, 2020 at 10:41:06 AM UTC-8=
 Christian Fischer wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi,
<br>
<br>the following CVEs related to the recent AMNESIA:33 vulnerabilities=20
<br>affecting various open source network stack components:
<br>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-13987" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-13987&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNE7r5z5X7HS8bIKzh1eN3H5s=
91YwQ">https://nvd.nist.gov/vuln/detail/CVE-2020-13987</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-13988" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-13988&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNFE61sW_gZYRQgMBXb2grez7=
WotXw">https://nvd.nist.gov/vuln/detail/CVE-2020-13988</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17437" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17437&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNGgWo4Z-2GiWaXCWF0sxI7Xa=
d-9ZQ">https://nvd.nist.gov/vuln/detail/CVE-2020-17437</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17438" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17438&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNFq-sH6Ex0XEwX4LihgGPpGe=
kWEcQ">https://nvd.nist.gov/vuln/detail/CVE-2020-17438</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17439" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17439&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNGXUl1n5gs_QamJ_FC9PDw23=
PltSg">https://nvd.nist.gov/vuln/detail/CVE-2020-17439</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-17440" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-17440&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNH_CcMa97BK6O-JxJAWzE71D=
uy1Wg">https://nvd.nist.gov/vuln/detail/CVE-2020-17440</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-24334" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-24334&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNGA7AN_nD84k4PPyq573Ljyw=
C4xNA">https://nvd.nist.gov/vuln/detail/CVE-2020-24334</a>
<br><a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2020-24335" rel=3D"nofo=
llow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?=
hl=3Den&amp;q=3Dhttps://nvd.nist.gov/vuln/detail/CVE-2020-24335&amp;source=
=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNEf84Y3yREyb05S9SzRvtLub=
ZVmkw">https://nvd.nist.gov/vuln/detail/CVE-2020-24335</a> (not published y=
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
p-ip-stacks-breed-critical-vulnerabilities-in-iot-ot-and-it-devices/" rel=
=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.=
com/url?hl=3Den&amp;q=3Dhttps://www.forescout.com/company/resources/amnesia=
33-how-tcp-ip-stacks-breed-critical-vulnerabilities-in-iot-ot-and-it-device=
s/&amp;source=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNFazRxUioWs=
N-eqkIsQCizZeAl2Kg">https://www.forescout.com/company/resources/amnesia33-h=
ow-tcp-ip-stacks-breed-critical-vulnerabilities-in-iot-ot-and-it-devices/</=
a>
<br>[2] <a href=3D"https://us-cert.cisa.gov/ics/advisories/icsa-20-343-01" =
rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.goog=
le.com/url?hl=3Den&amp;q=3Dhttps://us-cert.cisa.gov/ics/advisories/icsa-20-=
343-01&amp;source=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNHjQvcX=
cFZV_7v5uMRmiHwtJAqhtw">https://us-cert.cisa.gov/ics/advisories/icsa-20-343=
-01</a>
<br>[3]=20
<br><a href=3D"https://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und=
-Updates-zu-den-TCP-IP-Lecks-im-Ueberblick-4984341.html" rel=3D"nofollow" t=
arget=3D"_blank" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den=
&amp;q=3Dhttps://www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updat=
es-zu-den-TCP-IP-Lecks-im-Ueberblick-4984341.html&amp;source=3Dgmail&amp;us=
t=3D1609281054699000&amp;usg=3DAFQjCNGNzchMqmRhFV4IcuepslOvG_UJzA">https://=
www.heise.de/news/Amnesia-33-Sicherheitshinweise-und-Updates-zu-den-TCP-IP-=
Lecks-im-Ueberblick-4984341.html</a>
<br>[4] <a href=3D"https://github.com/open-iscsi/open-iscsi/releases" rel=
=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.=
com/url?hl=3Den&amp;q=3Dhttps://github.com/open-iscsi/open-iscsi/releases&a=
mp;source=3Dgmail&amp;ust=3D1609281054699000&amp;usg=3DAFQjCNENx6k7vO_7bAoy=
kNMB2TjsikPtNw">https://github.com/open-iscsi/open-iscsi/releases</a>
<br>
<br>--=20
<br>
<br>Christian Fischer | PGP Key: 0x54F3CE5B76C597AD
<br>Greenbone Networks GmbH | <a href=3D"https://www.greenbone.net" rel=3D"=
nofollow" target=3D"_blank" data-saferedirecturl=3D"https://www.google.com/=
url?hl=3Den&amp;q=3Dhttps://www.greenbone.net&amp;source=3Dgmail&amp;ust=3D=
1609281054699000&amp;usg=3DAFQjCNEcV4ftXfSwJ-HMV4zuSQJZsKYtPQ">https://www.=
greenbone.net</a>
<br>Neumarkt 12, 49074 Osnabr=C3=BCck, Germany | AG Osnabr=C3=BCck, HR B 20=
2460
<br>Gesch=C3=A4ftsf=C3=BChrer: Dr. Jan-Oliver Wagner
<br></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/c7dd8133-c778-4d2a-800e-f6d96a441b4an%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/c7dd8133-c778-4d2a-800e-f6d96a441b4an%40googlegroups.com</a>.=
<br />

------=_Part_8065_810882092.1609194960741--

------=_Part_8064_204927108.1609194960741--
