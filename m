Return-Path: <open-iscsi+bncBC755V5RXMKBBFW75X3QKGQEYKVKCRA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A8220FA05
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 19:00:08 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id d45sf7067687qte.12
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 10:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hUBR8BiPNgEEHRl5Xa5L3BXJUa7D0XqhHIf4oZPZdFc=;
        b=RTZ3Y15PmzSVICohZAIRz86TI31HuJPP8xHFpvGQFEoeHFKfoZ8hSLwaGDsqhu62HJ
         O0Ukoq0ug5xtA2EfocDNUYuDmmbIqJyWVXGny06OKI5QysaYz78Uic3/GSNyjaYu1anF
         xSdb+PooKfYDNyPImMGcUfcOL8MUwjj1Nv5Yxy66cZ9AQqCWrumyqXTLcZqFmvCyJlMY
         9L+eNeB67a+6zs5tCvkMiCeM+GoVR+TZ+KpCR27MFrxnw/BIKmWEl0sxoHi2wxpMfFSC
         p86zhoCiSoxSGoFRtnKDmiqY0j2O2xks83kw+BgD4RV26gPBzC5iGrOvWLb5Yn/2IT9b
         zNbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hUBR8BiPNgEEHRl5Xa5L3BXJUa7D0XqhHIf4oZPZdFc=;
        b=DGqEUjCZB7+vo+LhDASnN2DIdQP+QuZGVcu7hzUTQtkZlC+jMBccc3zxYyouXUmFdM
         uk+xwZ0AFy1Si1MH/y3eZxoVTAptL4UCEP/0QlU+R8CORRg2WKijrjAM38z1jPIIPZhn
         CKvCCWrB2M7LWKT35I6T+beJcLny/xXFct5ajSo7U1bvjleDwYpR9PteV9DeFo4QWjB0
         Dttzeej9Kgy/x+zk5SAPu9aQlb8bVfP/sE/W1JV9ABYUmkvZGpjXCDhwKF40jQCYhRa9
         KXlHYbJdlOY0b0yhaEpPaYC4h9VfMRa+2+kmBfqC+jBGcTFw8d/PWWJtAtMGGQXNy+ll
         Z6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hUBR8BiPNgEEHRl5Xa5L3BXJUa7D0XqhHIf4oZPZdFc=;
        b=TEs5Y6uc2kL0u/Cz31/F3pKCYVnJgIJgxbtHgb+fiwYq2xBP0RJR+xyTuq3Cpwr1jp
         9BRmai2pVqTBHWV3CfinE2Lg3Yy01YW/wzxL0+QaHg/WU5u0OTKT1C+S5M1a22+UNYM2
         RFZwu4TakQHue4ndRNgWV1+bhCdR+XyeHLQ+vAqV3oi/ZEbr760M1l5Lf6lc0JORLQZJ
         GuSgWF8fXZNFWQAZrVdre2kmipVgErd/FaMpF6quxnPfIJUUkrBq8aQq3PskfxHkXYMd
         KzfpH3gf21I1L/wkdd1oYuvL3irIb5PRUPSxeo7z7MxOVhltihK2CmkjxIfIQRR/Wp1z
         emTw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532dMmuzeRRL81hJGmqbmEQs+NwxOP2Le4lWVdtTy0DIrGFkfGkm
	Ip2IF0R98T+VQLVXDUryIrk=
X-Google-Smtp-Source: ABdhPJwkAjvhiuZ9Duv3UCJsCgqXIsANg5duTv2jRzcEb+0D1KQRC4xbo1j3Wo4kBAQb7fNj3OFqFA==
X-Received: by 2002:a37:a4c3:: with SMTP id n186mr20833082qke.280.1593536407064;
        Tue, 30 Jun 2020 10:00:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:6809:: with SMTP id d9ls10050532qkc.3.gmail; Tue, 30 Jun
 2020 10:00:05 -0700 (PDT)
X-Received: by 2002:a37:494a:: with SMTP id w71mr18624348qka.284.1593536405258;
        Tue, 30 Jun 2020 10:00:05 -0700 (PDT)
Date: Tue, 30 Jun 2020 10:00:04 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <a179f9d6-05e1-4a08-bf3c-aebb23d59afdo@googlegroups.com>
In-Reply-To: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1668_1436125432.1593536404430"
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

------=_Part_1668_1436125432.1593536404430
Content-Type: multipart/alternative; 
	boundary="----=_Part_1669_970245269.1593536404431"

------=_Part_1669_970245269.1593536404431
Content-Type: text/plain; charset="UTF-8"

On Tuesday, June 30, 2020 at 6:00:03 AM UTC-7, Amit Bawer wrote:
>
> [Sorry if this message is duplicated, haven't seen it is published in the 
> group]
>
> Hi,
>
> Have couple of question regarding iscsiadm version 6.2.0.878-2:
>
> 1) Is it safe to have concurrent logins to the same target from different 
> interfaces? 
> That is, running the following commands in parallel:
>
> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
> 10.35.18.121:3260,1 -l
> iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p 
> 10.35.18.166:3260,1 -l
>
> 2) Is there a particular reason for the default values of  
> node.conn[0].timeo.login_timeout and node.session.initial_login_retry_max?
> According to comment in iscsid.conf it would spend 120 seconds in case of 
> an unreachable interface login:
>
> # The default node.session.initial_login_retry_max is 8 and
> # node.conn[0].timeo.login_timeout is 15 so we have:
> #
> # node.conn[0].timeo.login_timeout * node.session.initial_login_retry_max 
> =
> #                                                               120 seconds
>
>
> Thanks,
> Amit
>

No, iscsiadm is not designed for parallel use. There is some locking, but 
IIRC there are still issues, like a single connection to the kernel?

After discovery, you should have NODE entries for each path, and you can 
login to both with "iscsiadm -m node -l".

As far as the default timeouts and retry counts are of course trade-offs. 
In general, iscsi can have flakey connections, since it's at the mercy of 
the network. In the event of a transient event, like a switch or target 
rebooting, the design allows reconnecting if and when the target finally 
comes back up, since giving up generally can mean data corruption (e.g. for 
a filesystem).

As the README for open-iscsi describes, you must tweak some of those 
numbers if you want to use multipathing, since the requirements for one of 
many paths usually requires a faster timeout, for example.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/a179f9d6-05e1-4a08-bf3c-aebb23d59afdo%40googlegroups.com.

------=_Part_1669_970245269.1593536404431
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tuesday, June 30, 2020 at 6:00:03 AM UTC-7, Amit Bawer =
wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8=
ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div><div><span></span><=
/div></div><span><span><span><span><span><span><span><span><div><span>[Sorr=
y if this message is duplicated, haven&#39;t seen it is published in the gr=
oup]</span></div><div><span><br><span dir=3D"ltr"></span> </span></div></sp=
an></span></span></span></span></span></span></span><span><span><span><span=
><span><span><span><span><div><span></span></div></span></span></span></spa=
n></span></span></span></span><div><div><div><div dir=3D"ltr"><div>Hi,</div=
><div><br></div><div>Have couple of question regarding iscsiadm version 6.2=
.0.878-2:</div><div><br></div><div>1) Is it safe to have concurrent logins =
to the same target from different interfaces? <br></div><div>That is, runni=
ng the following commands in parallel:</div><div><br></div><div>iscsiadm -m=
 node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http://10.=
35.18.121:3260" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.35.18.121%3A3260\x26=
sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFENEW7otxzeQjvih9zMYbzn1UvmQ&#39;;retu=
rn true;" onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3=
A%2F%2F10.35.18.121%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFENEW7ot=
xzeQjvih9zMYbzn1UvmQ&#39;;return true;">10.35.18.121:3260</a>,1 -l</div><di=
v>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=
=3D"http://10.35.18.166:3260" target=3D"_blank" rel=3D"nofollow" onmousedow=
n=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F10.35.18.=
166%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNHRd99mosO-k4Tcjrwlt5enLg=
HYzA&#39;;return true;" onclick=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F10.35.18.166%3A3260\x26sa\x3dD\x26sntz\x3d1\x26usg\x3d=
AFQjCNHRd99mosO-k4Tcjrwlt5enLgHYzA&#39;;return true;">10.35.18.166:3260</a>=
,1 -l</div><div><br></div><div>2) Is there a particular reason for the defa=
ult values of=C2=A0 node.conn[0].timeo.login_<span></span>timeo<wbr>ut and =
node.session.initial_login_<span></span>ret<wbr>ry_max?</div><div>According=
 to comment in iscsid.conf it would spend 120 seconds in case of an unreach=
able interface login:</div><div><br></div><div># The default node.session.i=
nitial_login_<span></span>ret<wbr>ry_max is 8 and<br># node.conn[0].timeo.l=
ogin_<span></span>timeo<wbr>ut is 15 so we have:<br>#<br># node.conn[0].tim=
eo.login_<span></span>timeo<wbr>ut * node.session.initial_login_<span></spa=
n>ret<wbr>ry_max =3D<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 120 seconds<br></div><div><br></div><div><br></div><di=
v>Thanks,</div><div> Amit</div></div></div></div></div></blockquote><div><b=
r></div><div>No, iscsiadm is not designed for parallel use. There is some l=
ocking, but IIRC there are still issues, like a single connection to the ke=
rnel?</div><div><br></div><div>After discovery, you should have NODE entrie=
s for each path, and you can login to both with &quot;iscsiadm -m node -l&q=
uot;.</div><div><br></div><div>As far as the default timeouts and retry cou=
nts are of course trade-offs. In general, iscsi can have flakey connections=
, since it&#39;s at the mercy of the network. In the event of a transient e=
vent, like a switch or target rebooting, the design allows reconnecting if =
and when the target finally comes back up, since giving up generally can me=
an data corruption (e.g. for a filesystem).</div><div><br></div><div>As the=
 README for open-iscsi describes, you must tweak some of those numbers if y=
ou want to use multipathing, since the requirements for one of many paths u=
sually requires a faster timeout, for example.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/a179f9d6-05e1-4a08-bf3c-aebb23d59afdo%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/a179f9d6-05e1-4a08-bf3c-aebb23d59afdo%40googlegroups.com</a>.=
<br />

------=_Part_1669_970245269.1593536404431--

------=_Part_1668_1436125432.1593536404430--
