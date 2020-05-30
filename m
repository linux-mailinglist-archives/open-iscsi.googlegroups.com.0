Return-Path: <open-iscsi+bncBDLINFGG5UCBB5OAZD3AKGQEPDGY4DA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FA21E8FE7
	for <lists+open-iscsi@lfdr.de>; Sat, 30 May 2020 10:59:34 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id 25sf3848566qkc.3
        for <lists+open-iscsi@lfdr.de>; Sat, 30 May 2020 01:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sb52cYKZJir4pjcS8F+A/25Knms+sVjjBhTU/Pzan3s=;
        b=W72aGV+la9WjjN23jb4jwerv4fOdJQfSpkccej5E0d4Zzam15VYQzcBCqkDPT/wcZt
         wVDRhU1GCj0VTuGxv93xvm43754FaEI+12wZu0u9CjmfjNFUqgt4h4aUHNLMVf0FZcZI
         nhGDOSneE+pl/UbPenXtBUgABDlNwJlwU+B/cgBMLja2jIrUlEuhWiWjOT1krxLMaRpY
         0zzA/TIuueV0cyWLJKmEs20+QGDmnhpB04TSVy/TSLhk+7/lugfRUL1BLEsLTgGQUgN2
         P+F4rwHjXw6vOQB8qL/qH+bIArV0DG8nlIak6oGuFqutLVCTrvdDK+PQCZw3WJ5GdNyT
         ZTgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sb52cYKZJir4pjcS8F+A/25Knms+sVjjBhTU/Pzan3s=;
        b=DaPTL6svCVUDHknjsWduTiXYk2fFYbAoOOjNhxtsHME1BzYGb0YYU5XVYEFxsrxUbx
         VwKB2ASpoWMzBR2JoaCRnE6BUMg/bpkCNP6RNqbglE3T5W/fOMm7B0vn5c25lyRg+qtD
         Xu5lVxgcKEJOwjtGfXF/krsiSOpQ4G3W9A2HvgMr4o3OWL9B6RCD2GakS2j3twxdpyAQ
         fEMOFZwf3ol6qLLo8vI4IwD9wlzfOmX4HTYrtJ6mBakOozzqlAOH4HLVE1gmUPwjomqG
         na762NH+7m7Fi4UR4JJnMZuuq57gzvf0UODUBH+071BAtO9Uha4b3ojxSDGSqf57Ghbv
         JRMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sb52cYKZJir4pjcS8F+A/25Knms+sVjjBhTU/Pzan3s=;
        b=i0ih7TN1Owd4+BVJ7hf41b42v85OMBms9y5GkEUO3CUqtws/UO1IriOom2PJzWOgsw
         RDujw5o0jVnCgYl0L5r+ehwSmM1LtU3D/E/vqQZPAgqEJuGn427viBWJa4e21ZjmyfNv
         PFFslHXu9DzJl+zrgaYH9hI3uulp0ZnQyNFgMWgDZANnuF2DXzmvNkvwT0gIgabmJbW8
         wALY+K48Gif4u75Gl0jrcTCktkKB37t0QQZxT3bssI7giYhlUp7HvKpd5TzTaMy2sAc6
         xseMtxVwzzMQ4IPLp0W/+umpYaFS1qV8ESQR5Hk4GD8z6xJtF3qqrb3Tv+XQAX+oYOgk
         3P4A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532iWPWH0b6e7umzuAUFw+cuPGFjdlQvLNKRdkzh6DoAWS2r6Xot
	zuunfVvDa8qt+1bbvn6/3vM=
X-Google-Smtp-Source: ABdhPJx417e3lPB7wXJapn9FHrv1/XnP4frn+1Br1QdHe6mJDMT4brpLqhJww8mACSLvdgL+F3WQOQ==
X-Received: by 2002:a0c:eb50:: with SMTP id c16mr11978983qvq.202.1590829173796;
        Sat, 30 May 2020 01:59:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:40ca:: with SMTP id f10ls3588585qtm.10.gmail; Sat, 30
 May 2020 01:59:33 -0700 (PDT)
X-Received: by 2002:aed:2861:: with SMTP id r88mr12711688qtd.207.1590829173107;
        Sat, 30 May 2020 01:59:33 -0700 (PDT)
Date: Sat, 30 May 2020 01:59:32 -0700 (PDT)
From: Gionatan Danti <gionatan.danti@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8ff6f813-44d1-4388-ba0a-85d5e54933e7@googlegroups.com>
In-Reply-To: <a0f1cad1-e867-4725-b0a9-32e530e019c5@googlegroups.com>
References: <13d4c963-b633-4672-97d9-dd41eec5fb5b@googlegroups.com>
 <7f583720-8a84-4872-8d1a-5cd284295c22@googlegroups.com>
 <67349dca-9647-4dbd-affc-ded6e8f01ee9@googlegroups.com>
 <a0f1cad1-e867-4725-b0a9-32e530e019c5@googlegroups.com>
Subject: Re: udev events for iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3621_1245493640.1590829172507"
X-Original-Sender: gionatan.danti@gmail.com
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

------=_Part_3621_1245493640.1590829172507
Content-Type: multipart/alternative; 
	boundary="----=_Part_3622_2111256742.1590829172507"

------=_Part_3622_2111256742.1590829172507
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Il giorno marted=C3=AC 28 aprile 2020 23:15:31 UTC+2, Gionatan Danti ha scr=
itto:

Well, for short disconnections the re-try approach is surely the better=20
> one. But I naively assumed that a longer disconnection, as described by t=
he=20
> node.session.timeo.replacement_timeout parameter, would tear down the=20
> device with a corresponding udev event. Udev should have no problem=20
> assigning the device a sensible persistent name, right?
>
=20

> This open the door to another question: from iscsid.conf=20
> <https://github.com/open-iscsi/open-iscsi/blob/master/etc/iscsid.conf#L99=
>=20
> and README=20
> <https://github.com/open-iscsi/open-iscsi/blob/master/README#L1476> files=
=20
> I (wrongly?) understand that replacement_timeout come into play only when=
=20
> the SCSI EH is running, while in the other cases different timeouts as=20
> node.session.err_timeo.lu_reset_timeout and=20
> node.session.err_timeo.tgt_reset_timeout should affect the=20
> (dis)connection. However, in all my tests, I only saw replacement_timeout=
 being=20
> honored, still I did not catch a single running instance of SCSI EH via t=
he=20
> proposed command iscsiadm -m session -P 3



Hi  all and sorry for the bump, but I would really like to understand the=
=20
two points above (especially the one regarding the various timeout values).
Can someone shed some light?
Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/8ff6f813-44d1-4388-ba0a-85d5e54933e7%40googlegroups.com.

------=_Part_3622_2111256742.1590829172507
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Il giorno marted=C3=AC 28 aprile 2020 23:15:31 UTC+2, =
Gionatan Danti ha scritto:<div><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, 20=
4); padding-left: 1ex;">Well, for short disconnections the re-try approach =
is surely the better one. But I naively assumed that a longer disconnection=
, as described by the=C2=A0<span style=3D"color: rgb(36, 41, 46); font-size=
: 12px; white-space: pre;"><font face=3D"courier new, monospace">node.sessi=
on.timeo.<wbr>replacement_timeout</font></span><span style=3D"color: rgb(36=
, 41, 46); font-family: SFMono-Regular, Consolas, &quot;Liberation Mono&quo=
t;, Menlo, monospace; font-size: 12px; white-space: pre;"> </span>parameter=
, would tear down the device with a corresponding udev event. Udev should h=
ave no problem assigning the device a sensible persistent name, right?<br><=
/blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0px 0px 0px 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-=
left: 1ex;">This open the door to another question: from <a href=3D"https:/=
/github.com/open-iscsi/open-iscsi/blob/master/etc/iscsid.conf#L99" rel=3D"n=
ofollow" target=3D"_blank">iscsid.conf</a> and <a href=3D"https://github.co=
m/open-iscsi/open-iscsi/blob/master/README#L1476" rel=3D"nofollow" target=
=3D"_blank">README</a>=C2=A0files I (wrongly?) understand that <font face=
=3D"courier new, monospace">replacement_timeout </font>come into play only =
when the SCSI EH is running, while in the other cases different timeouts as=
=C2=A0<font face=3D"courier new, monospace">node.session.err_timeo.lu_<wbr>=
reset_timeout</font><span style=3D"color: rgb(36, 41, 46); font-family: SFM=
ono-Regular, Consolas, &quot;Liberation Mono&quot;, Menlo, monospace; font-=
size: 12px; white-space: pre;">=C2=A0</span>and <font face=3D"courier new, =
monospace">node.session.err_timeo.tgt_<wbr>reset_timeout=C2=A0</font>should=
 affect the (dis)connection. However, in all my tests, I only saw=C2=A0<spa=
n style=3D"font-family: &quot;courier new&quot;, monospace;">replacement_ti=
meout=C2=A0</span>being honored, still I did not catch a single running ins=
tance of SCSI EH via the proposed command=C2=A0<span style=3D"color: rgb(36=
, 41, 46); font-size: 12px; white-space: pre;"><font face=3D"courier new, m=
onospace">iscsiadm -m session -P 3</font></span></blockquote><div><br></div=
><div><br></div><div>Hi=C2=A0 all and sorry for the bump, but I would reall=
y like to understand the two points above (especially the one regarding the=
 various timeout values).</div><div>Can someone shed some light?</div><div>=
Thanks.</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8ff6f813-44d1-4388-ba0a-85d5e54933e7%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/8ff6f813-44d1-4388-ba0a-85d5e54933e7%40googlegroups.com</a>.<b=
r />

------=_Part_3622_2111256742.1590829172507--

------=_Part_3621_1245493640.1590829172507--
