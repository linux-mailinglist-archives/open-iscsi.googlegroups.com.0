Return-Path: <open-iscsi+bncBC755V5RXMKBBBM75LYAKGQEEAJRJIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C30F11384A4
	for <lists+open-iscsi@lfdr.de>; Sun, 12 Jan 2020 04:16:22 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id e22sf4033206otj.13
        for <lists+open-iscsi@lfdr.de>; Sat, 11 Jan 2020 19:16:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578798981; cv=pass;
        d=google.com; s=arc-20160816;
        b=AM9DxwMb1PfI3lF8roZZEmvpgSOct47GfUGtDCIXT1/lP5ZXZFZH4yF6hKUqhfOxPI
         QOVlDtmrn0a8OT5nRgqhYbzQw0liyk1yWTtJw3lQD2qRSvF1IvLAKQUZ2nFH3ihntN91
         429ZHfiDVVlmopx92CwqrmH0DR4izCZS7/QTSJztvYS4LNrdKzpWqUi/WsgRTv726qEf
         Hv/mQMnLW505CyNRjtUF27Pb7R7V23zzu+h6PuLmliNzWV5eynjLuKjcXOvmFJKCTC57
         Dq0p0Um5eOir3VrVdpi8DR6WXlKItD9/UESvq7FgUII4ZMsv2iyaLlMJ9DwsKXtc2ilQ
         kJnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:from:sender:dkim-signature
         :dkim-signature;
        bh=eKx8gnCenXh3EIQRe/1QUBLB+n7nH7ZQfkPplrQP1cs=;
        b=qplqFpP5cmfuhKfuNAYy2jsvMbfqXyYk4JY/3ogKwKmu51HDSNGMuTnoBx2hzrDqfz
         5rMoIXdk2TI3N1JAHlqHCViZxPfLyLrNgDLbeUusYqzY+xHQxfEtMMSz42EsOVFLhN4W
         axusxfYrYChY74wfbsNA/5npBYoHB/lLOWIVRhOblb2LZWEsgSbuz+baSslLoauPdesM
         U7KpkfKePYMOXz2x5QGcUfkjevmiFCq99NscT83T0UPhvwz0wMAxXWCcSNto+TCeBMsa
         HBAVO4EkLEwW/K7JJHf5T1SE9ifPuBxJH+8cZsbVrCG6dq8SMVlZ8App9Av8nZRhpn2F
         nDGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u0/FZIx+";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:references:to:in-reply-to
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eKx8gnCenXh3EIQRe/1QUBLB+n7nH7ZQfkPplrQP1cs=;
        b=GSQ6UJqu8kM0vvTaFTK0b70uhw0u75p49Ip5aqQOpoeR81g/bTzuqieXhyNLkhTG53
         jC8BA05tF/5KRiluIV6puZ1KAmnOWHVw43komuxUzN7pbGWjD/7OcoqcESUtQ8oDsIuy
         wuh+7wxLajRVT2PBpXYENCSjqRzxkCB512KotU3MQtP0tQ+X53Z9Hw6uSMWp0ohws7zf
         u+mTuDjZ+jEMMc6sL8c8U+xUWy7Pj6qS5gzceevv2CWwhZfM6qQYHBEC6vfMhniThGOn
         FP9YV0p7GEVF42nKj0HSpNfVGDejO4t/63Bzz8Vt69Xl7kv/NeDwRbsD8N6TK1d0919a
         9LJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eKx8gnCenXh3EIQRe/1QUBLB+n7nH7ZQfkPplrQP1cs=;
        b=uDhW6eM82iMmOrk0XTX3yBLVg3r+IGuVahAnz29ypuTsdzX4pgiXStpBqdQVlEj+bf
         4YymeX1P779w1veaDJHMYqQlWlaJ+YPYo6kA4EpgLFAlrG8+wABBiLbeaMoSoOI7daCh
         drDJtRKZdmSy7EkcDuUltHraptRHxpuljF0tUNrWcR9oFmY5Mz7pIo8biLBaUJNJ5T0m
         w5nTUoIrfg5RTK3Z4DnvY3ecGA9N2eKfbfyboEkADdFZkIVP0WPGkS/q2VvWRz2WXojN
         bmkIHtQ2cEwNrx5URJvWhd0NEeeT7xM4gNGIRhafiIuVTdF91cQTqaF6qli0wSIA2C8Q
         5bNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:references
         :to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eKx8gnCenXh3EIQRe/1QUBLB+n7nH7ZQfkPplrQP1cs=;
        b=Fo3cZznQWw4MG46jmQIrTMXM9IKE+tEhLBNi4xh6eqTKT1OaFWPjQf5FG7R2W+ATAr
         vh9IhO7ZzsWmavVJQ0VEAQ9eIUNYEcl3Y0q64ZKFjAbRTjDEFjSPMo7zrT50DNbDM/pa
         2IBzryw7BwczX8oviGI68xtUPu73Zjctce5+LjYpPrQsDOEuiBmZtST0m6rI+KbAybil
         czExxCEF1hQPrq0e20/bdVjLqLHUJPUUJNYJ4Ga0fuIxIehTU9Qmu5EKXpMiNd3pi2Y6
         OdpT8cnIY2q0ICI5+AxkHTzLC9J9AJWKfAQlC9//asKPtOs7dNFttb7N96jJkbMydMTQ
         6KhQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVqPHq5tTQk3kIlZoPwwbXvqDCyPV1HiOvzWzHQtu3JMeL1f6es
	y11zvEJMJ0hfJ9RufZtMnww=
X-Google-Smtp-Source: APXvYqwr+DVv4usUuf7IriPbj3q00+oeFZbL2Iypgy3qj5sEWDfJzxSjGUHaSlVywnaXZsKiCwCbOA==
X-Received: by 2002:a05:6808:150:: with SMTP id h16mr7826074oie.130.1578798981209;
        Sat, 11 Jan 2020 19:16:21 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:469a:: with SMTP id z26ls1688428ote.8.gmail; Sat, 11 Jan
 2020 19:16:20 -0800 (PST)
X-Received: by 2002:a05:6830:14d9:: with SMTP id t25mr8902850otq.258.1578798980750;
        Sat, 11 Jan 2020 19:16:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578798980; cv=none;
        d=google.com; s=arc-20160816;
        b=b6WlhnwR3uHjpNAn3uNEggHGnMkvXpCeifKBWiIFCID9J+j/7S99mPnV6wt9MVDNkj
         MiYFh0HuNO06bRgtw5x8rWHS8jSiqx6poOgHZXw1wz0yRKQ9ZnpeqscnuRhewh0Uv4BJ
         lc8uZIg6ZRlwo9bpmB2pSfOXfOCDBdEtr+/zA9CuQTKz0aR188RW0+nKQQ+oVfKdFrgj
         GH5PPrHUI5LiqnrLiv3wsLE23EepplggZYdKr2TdygUJ5uh+9HkOvl8vIjbA6rbxBOMi
         IIGFvv1Mak5dITQ6Of2Sm+MYciQ1FOg46ym5HgDlBpN1+AuJaaQ3to2o66L02CMdAGXU
         NYxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :dkim-signature;
        bh=psZ2LNjr1LfTbB2eLvzR6Wuh2rRG619KChxyIQfCdGY=;
        b=mbI+7CtJKBaoqWWN/HOkDsYoYB3mXAhtpM+dpa8I5VjOisDbXgeFq6AsIBJ91qk2eS
         j66qmEVkqX5QYiXPS8KrtdDhrNikpvA+WrlIhbJ3FzD5leWYrlaI3aT0QMX2AhFgQYg8
         oi8R+xW96y5+tVAoIbxejzld7M6buxPGZj9FRLVj2gVLJECzWh4QhKYelXC8AufiLKp5
         2sRLOG1uLSkYwNYmxchiKj998ZXkLuke+zpgg1DZSSf6KVR27nxXuuOp3EVyD6uU63IR
         +9D5wQ5bPPJQRHhWK+wzIwyH3CZUY8FdcbLEt1CHWnI//tsdh2f1F5HAimPMdef0hmFX
         L74w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u0/FZIx+";
       spf=pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=leeman.duncan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id a12si367150otq.5.2020.01.11.19.16.20
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:16:20 -0800 (PST)
Received-SPF: pass (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id k3so2984529pgc.3
        for <open-iscsi@googlegroups.com>; Sat, 11 Jan 2020 19:16:20 -0800 (PST)
X-Received: by 2002:a62:5c43:: with SMTP id q64mr13573586pfb.194.1578798980010;
        Sat, 11 Jan 2020 19:16:20 -0800 (PST)
Received: from ?IPv6:2601:1c0:5400:d::3? ([2601:1c0:5400:d::3])
        by smtp.gmail.com with ESMTPSA id v7sm7880971pjs.2.2020.01.11.19.16.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jan 2020 19:16:19 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6CCE4AF3-F482-4B6E-BD23-3E27B5FE5D39"
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Who know more about this issue for iscsid?
Date: Sat, 11 Jan 2020 19:16:18 -0800
References: <f0bab99e-accd-46cc-9d37-7700773ffc47@googlegroups.com>
 <b7141d18-99d9-4d93-9252-a5e27393dfc6@googlegroups.com>
 <4d5aa484-fa9a-4d62-9206-5d5737684109@googlegroups.com>
 <57585076-3602-47C4-92CD-5510CA87E4EF@gmail.com>
 <6769914f-f770-495b-886e-7dcc5569274d@googlegroups.com>
To: open-iscsi <open-iscsi@googlegroups.com>
In-Reply-To: <6769914f-f770-495b-886e-7dcc5569274d@googlegroups.com>
Message-Id: <1EB02856-CF99-4B41-A6B0-7A89350162E3@gmail.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="u0/FZIx+";       spf=pass
 (google.com: domain of leeman.duncan@gmail.com designates 2607:f8b0:4864:20::534
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


--Apple-Mail=_6CCE4AF3-F482-4B6E-BD23-3E27B5FE5D39
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"



> On Jan 11, 2020, at 7:15 PM, can zhu <zhucan.k8s@gmail.com> wrote:
>=20
> Hmmm, I use the default config, I hadn't do other sets for it.

For? For the initiator, or the target?

>=20
> =E5=9C=A8 2020=E5=B9=B41=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E6=97=A5 U=
TC+8=E4=B8=8A=E5=8D=8811:13:31=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=
=9A
> On Jan 11, 2020, at 7:41 AM, can zhu <zhuc...@gmail.com <>> wrote:
>>=20
>> I did not set the auth.
>>=20
>=20
> Please share how your systems is configured. Did you set up your targets?
>=20
> Assuming you set up your targets, and they are on targetcli, can you shar=
e your configuration file?
>=20
> Also, can you ensure you have no auth set up on your initiator?
>=20
> =E2=80=94=20
> Lee
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/1EB02856-CF99-4B41-A6B0-7A89350162E3%40gmail.com.

--Apple-Mail=_6CCE4AF3-F482-4B6E-BD23-3E27B5FE5D39
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D""><br class=3D""><div><br cl=
ass=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Jan 11, 20=
20, at 7:15 PM, can zhu &lt;<a href=3D"mailto:zhucan.k8s@gmail.com" class=
=3D"">zhucan.k8s@gmail.com</a>&gt; wrote:</div><br class=3D"Apple-interchan=
ge-newline"><div class=3D""><div dir=3D"ltr" class=3D"">Hmmm, I use the def=
ault config, I hadn't do other sets for it.<br class=3D""></div></div></blo=
ckquote><div><br class=3D""></div>For? For the initiator, or the target?</d=
iv><div><br class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""=
><div dir=3D"ltr" class=3D""><br class=3D"">=E5=9C=A8 2020=E5=B9=B41=E6=9C=
=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E6=97=A5 UTC+8=E4=B8=8A=E5=8D=8811:13:31=
=EF=BC=8CThe Lee-Man=E5=86=99=E9=81=93=EF=BC=9A<blockquote class=3D"gmail_q=
uote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;pad=
ding-left: 1ex;"><div style=3D"word-wrap:break-word;line-break:after-white-=
space" class=3D"">On Jan 11, 2020, at 7:41 AM, can zhu &lt;<a target=3D"_bl=
ank" gdf-obfuscated-mailto=3D"T38xiTb2DwAJ" rel=3D"nofollow" class=3D"">zhu=
c...@gmail.com</a>&gt; wrote:<br class=3D""><div class=3D""><blockquote typ=
e=3D"cite" class=3D""><br class=3D""><div class=3D""><div dir=3D"ltr" style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-weight:norm=
al;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;text-decoration:none" class=3D"">I d=
id not set the auth.<br class=3D""><br class=3D""></div></div></blockquote>=
<br class=3D""></div><div class=3D"">Please share how your systems is confi=
gured. Did you set up your targets?</div><div class=3D""><br class=3D""></d=
iv><div class=3D"">Assuming you set up your targets, and they are on target=
cli, can you share your configuration file?</div><div class=3D""><br class=
=3D""></div><div class=3D"">Also, can you ensure you have no auth set up on=
 your initiator?</div><div class=3D""><br class=3D""></div><div class=3D"">=
=E2=80=94&nbsp;</div><div class=3D"">Lee</div><div class=3D""><br class=3D"=
"></div></div></blockquote></div></div></blockquote></div><br class=3D""></=
body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1EB02856-CF99-4B41-A6B0-7A89350162E3%40gmail.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/open-=
iscsi/1EB02856-CF99-4B41-A6B0-7A89350162E3%40gmail.com</a>.<br />

--Apple-Mail=_6CCE4AF3-F482-4B6E-BD23-3E27B5FE5D39--
