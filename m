Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBIFNV3YQKGQE3R2AGQY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7727114927D
	for <lists+open-iscsi@lfdr.de>; Sat, 25 Jan 2020 02:15:13 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id e1sf2562184qto.5
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 17:15:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579914912; cv=pass;
        d=google.com; s=arc-20160816;
        b=DbmWgf5BHY/CIG2UxtNTeapmLOJ/yNjvoD+UAVYq0o8VVNyvfcnt/2sTsC3DR6ZZ+W
         2BIw8cpgVETwhWBY+Ng/J9N6nEZNc4XZ5CO7sMrmBc3ueeziDG8OtO8JTsxxEw5445hV
         HFS8eVvQ66qxQ3Q5hNnxaBmlc3T0ldoiZctqFwS8gsbiv31ngpAQsGuy3SPdQveOKx/2
         /0xnza5vfM6WPCLbECeIXgpgL4nu9LCseSnkthRx4eBPJOpes3w43X/iyuLKvuV+aHp6
         3jv7GTPFZmoRf8sQJe+NInYIzoZxwAEyJPiddOObUC/Mhjy0QsPr6xHPbYKbuApGXxZ5
         HUzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sBnSrVQ273Ggf/T0RsYgPmKTWKH9k5NLLN04f5bYMTw=;
        b=dtcGNyFx3xxW6R+YofIfyWbd5xhQWLTI0B/RFqHftvHOagq330TaDtjlMd+Ji1SSQs
         SzrVH9dP8z8qq8VhCVddjRyXagBCkHNXnLmvybzkH2aGhYKGKBu9sma44XBoX3gyyQVD
         Cj1c2EdozyBDi/rIR7KqKMOl79BfP0EZrNcHOGdKk8FQiqYFsA/D1B957bvqPUsqBzV9
         GKN21CAiL8F5WfrRxZ/Ns7jiPAZlplFCw3JWu59CGCRZSAWpoJilVmVmaq1srBgzckHY
         io5kk4wUK7Ehexosx48+9PZ5CNf9wwUiERdOyyj3cDN+CaMNTessJlAqb2krNHrwRUrP
         SUHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEC+Hm5r;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sBnSrVQ273Ggf/T0RsYgPmKTWKH9k5NLLN04f5bYMTw=;
        b=cj9wQGTzMmA4+gS7nTmGp8CAo6AJDhJQyJrwZe291BwR+u9zDC5VraskZMjSqaHgTJ
         XSqrLzz47/G69d4iYUO7mNVGZsXvvdogfu/k3YvuaD9CwDkTWdQpw8I/TD8AGDsXjoPJ
         bPrVaIY0txJ66t/3KUiqaz2H/l5Xxe1n2zA4iBxD3j0WcawsOehw7/ECLk+7fCTXkBeO
         eJnnjDlElEHGr9CApD8WHcEvqVjIiXfRsDYknRIQEhRuuYb0hsxaQoHTuVvZsmb78XAK
         Chxm8Cb/sdnG4RBOgxx9KYpYY6e0ZKA8C2ewAb+zLBOBloEdKNNb/ck6Y3nDDVfpCe7Y
         Gbyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBnSrVQ273Ggf/T0RsYgPmKTWKH9k5NLLN04f5bYMTw=;
        b=oTLhoThwWElOenQA1o3ZBJAaETxjSoSBITVGvs6bf3X/gpLXTr+pr3DBqvOLeJtuos
         PUNBzAkHg40hA5dw1SvKJ5RJl1VGlCIRUpv9vwZJZk1GWsI6QV8mhTw+uyiI037wr1mX
         9td+Yk3Dxf4TeWHucH9IXLBpeEw5EWiHHz8MUWmJTw0nVkY0xjLfAJxk9tDZYNsoiSzs
         y/NVjrgYYDN7S+NR6SyYMg5xVP39NMwhH2//6dYXy6bQo7JB7NW4jINxfXiBafFxSq4w
         06X6evI7iq/mgFpAATKVgQPaCSKh6GdRvCJUe8XXZ6zLS3Q6OxvPw16BCX8G3+mvfhTV
         lY/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBnSrVQ273Ggf/T0RsYgPmKTWKH9k5NLLN04f5bYMTw=;
        b=ZYL9x6++H5B2tzAUEus7X8w0RG8ecMOOm47sqeM7mxXYGdaypo1OYot3dlhMLlnHJ0
         8FhC+LxW9QJZ+w0ykudnDozsFFugHziq4ifSQrJ8sepFQpXsZiJedWY3wfJ4b63bwMih
         dG/q4sAFDk32bASCuHgcIyEfInP8ZrnQSirMDCJWQeJqFoJs1q4BXkwMC9u2NVGcac0c
         xN4Y/GlfMXVKtfKq/h+YxURP249r9BL278PYjeqB/bE1yvefJMk6C9MEryIhcU/fQcdr
         1xz3bpdsOoUMcyseaOmlOQ0Nh0HxjrX6ASRufpmwEms4m8t8L94kliQqmxCYx9XrLL6l
         AV8Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXrqRzhBM9wSrgfb3X/FBaODd21ydHq9H2KPrPhvnIuPYMcbsel
	dOvA+VyHbVIIzeuV8erVNlQ=
X-Google-Smtp-Source: APXvYqywXJY5LVVeNRLU9meOoejGEB36pbZ6halAaa8rw15tnOIIie53zOjO/aNOe2eQ9AeLw6kNLA==
X-Received: by 2002:a05:6214:bc6:: with SMTP id ff6mr5856981qvb.133.1579914912393;
        Fri, 24 Jan 2020 17:15:12 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:47ca:: with SMTP id u193ls1833216qka.10.gmail; Fri, 24
 Jan 2020 17:15:11 -0800 (PST)
X-Received: by 2002:a05:620a:6b6:: with SMTP id i22mr5586504qkh.301.1579914911862;
        Fri, 24 Jan 2020 17:15:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579914911; cv=none;
        d=google.com; s=arc-20160816;
        b=pyKNgj7vjn8ezGunjwEg3ouzJ/X4H7rG/ZfaxykM//sJnwty7oaISBZclVNBis98qB
         uG/LjvJcEH/0RhDabDPX1pEn3FXJtbx3YdOamcMK/EyRDDxSTfHnulRqCIYRdhGnmrN7
         C/hhEAt3VmRqxYq3odANCstr0rsgIStMWjDsAZ4TGRkEDMJL2A83R3xVSjFji20d+nHh
         EU88dGlvYUlI9CTCRMeDaWpUWg+lGJ1UXwLB9LMlcjPww+a/BoFk8movTYmJwlwJSC+7
         H5MidDNCi8GH/wyuESMslHfndoF+f1oKxeOFLBYLSQ3RJKNlTxQ5rMnoHuhi6cm4suot
         z4Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=R4nHfvQFmlwe6zmg6/MEiXISlT1LSweqGhe48yRk4Wc=;
        b=k3HBc7jRR/kiIXdZa3czP84iIcwX+gP5Kjxpku5PB5s9fSo3ED0H4xqGTpzbL9IaL3
         Hvl7MO2b1u9s6Dhxxoxbkc8gxQLjed7o378lBOg6GCSI806ozfS4Aj0cBIePm8iTqNwb
         NCbf7D58jb4YAzGoSPOE1yCv25fS9HVkI9U+g5KFS//LsU2Rc671pCBCEStszOZefZG+
         lRx60ryscG9LIgE4sMBRDvJGYJqMPhKkivp82zbv/NUytOtidMUklck300tD8h74AvvK
         AcA6XLNggYxs63u62MOnHN2GZnuW+DmJrIsG8nMjf2gt94gYZgRdiiFqdKIVpKCUCwix
         hiZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rEC+Hm5r;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id r62si239721qkc.6.2020.01.24.17.15.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 17:15:11 -0800 (PST)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id k24so3879791ioc.4
        for <open-iscsi@googlegroups.com>; Fri, 24 Jan 2020 17:15:11 -0800 (PST)
X-Received: by 2002:a02:a898:: with SMTP id l24mr4707253jam.107.1579914911125;
 Fri, 24 Jan 2020 17:15:11 -0800 (PST)
MIME-Version: 1.0
References: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
In-Reply-To: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Fri, 24 Jan 2020 20:14:59 -0500
Message-ID: <CAK3e-EYmEN1ETc_Ru0xcuaKUisDSV0B2=ed2Kx9Wk2rksAXnQg@mail.gmail.com>
Subject: Re: iSCSI and Ceph RBD
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000000d952a059cec9bdd"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rEC+Hm5r;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000000d952a059cec9bdd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

 I am not an expert in CEPH.

However,  iSCSI is the transport protocols to connect an initiator to a
target.  On the client side, iSCSI traffic coming from target is broken
down and the SCSI commands are handed to the client.   When writing data,
the iSCSI initiator encoded the command and data and transports it to the
iSCSI target where the target breaks down the iSCSI portion to get the
client SCSI command,  I.e. a WRITE10, and processes that request.

 So things like CEPH are above the iSCSI layer.  This is why CEPH can work
with Fibre Channel, SAS, SCSI, iSCSI, etc...

https://docs.ceph.com/docs/mimic/glossary/#term-ceph-osd-daemon
OSD

A physical or logical storage unit (*e.g.*, LUN). Sometimes, Ceph users use
the term =E2=80=9COSD=E2=80=9D to refer to Ceph OSD Daemon
<https://docs.ceph.com/docs/mimic/glossary/#term-ceph-osd-daemon>, though
the proper term is =E2=80=9CCeph OSD=E2=80=9D.
So iSCSI will provide the physical LUN that CEPH will use. This is good
otherwise for every protocol of storage you want to use, you would have to
have a specific driver for CEPH.

This is a pretty good intro to iSCSI

https://blog.calsoftinc.com/2017/03/iscsi-introduction-steps-configure-iscs=
i-initiator-target.html


Regards,

Don







On Fri, Jan 24, 2020 at 4:50 PM Bobby <italienisch1987@gmail.com> wrote:

> Hi,
>
> I have some questions regarding iSCSI and Ceph RBD. If I have understood
> correctly, the RBD backstore module
> on target side can translate SCSI IO into Ceph OSD requests. The iSCSI
> target driver with rbd.ko can expose Ceph cluster
> on iSCSI protocol. If correct, then that all is happening on target side.
>
> My confusion is what is  happening on client side?
>
> Meaning, does linux mainline kernel code called "rbd" has any role with
> Open-iSCSI initiator on client side? To put it more simple,
> is there any common ground for both protocols (iSCSI and rbd) in the linu=
x
> kernel  of the client side?
>
> Thanks :-)
>
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/dc5e17db-5e78-49ff-be38-a177=
06428655%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/dc5e17db-5e78-49ff-be38-a17=
706428655%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAK3e-EYmEN1ETc_Ru0xcuaKUisDSV0B2%3Ded2Kx9Wk2rksAXnQg%40mail.gma=
il.com.

--0000000000000d952a059cec9bdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>=C2=A0I am not an expert i=
n CEPH.=C2=A0<br><div><div>=C2=A0</div><div>However,=C2=A0 iSCSI is the tra=
nsport protocols to connect an initiator to a target.=C2=A0 On the client s=
ide, iSCSI traffic coming from target is broken down and the SCSI commands =
are handed to the client.=C2=A0 =C2=A0When writing data, the iSCSI initiato=
r encoded the command and data and transports it to the iSCSI target where =
the target breaks down the iSCSI portion to get the client SCSI command,=C2=
=A0 I.e. a WRITE10, and processes that request.=C2=A0</div><div><br></div><=
div>=C2=A0So things like CEPH are above the iSCSI layer.=C2=A0 This is why =
CEPH can work with Fibre Channel, SAS, SCSI, iSCSI, etc...=C2=A0=C2=A0</div=
><div><br></div><div><a href=3D"https://docs.ceph.com/docs/mimic/glossary/#=
term-ceph-osd-daemon">https://docs.ceph.com/docs/mimic/glossary/#term-ceph-=
osd-daemon</a>=C2=A0</div><div><span style=3D"color:rgb(62,67,73);font-fami=
ly:Helvetica,Arial,sans-serif;font-size:14px;font-weight:bold">OSD</span><b=
r></div><div><dd style=3D"margin-top:3px;margin-bottom:10px;margin-left:30p=
x;line-height:1.5em;color:rgb(62,67,73);font-family:Helvetica,Arial,sans-se=
rif;font-size:14px"><p style=3D"margin-top:0px;line-height:1.5em">A physica=
l or logical storage unit (<em>e.g.</em>, LUN). Sometimes, Ceph users use t=
he term =E2=80=9COSD=E2=80=9D to refer to=C2=A0<a class=3D"gmail-reference =
gmail-internal" href=3D"https://docs.ceph.com/docs/mimic/glossary/#term-cep=
h-osd-daemon" style=3D"color:rgb(240,92,86);text-decoration-line:none"><spa=
n class=3D"gmail-xref gmail-std gmail-std-term">Ceph OSD Daemon</span></a>,=
 though the proper term is =E2=80=9CCeph OSD=E2=80=9D.</p></dd></div><div>S=
o iSCSI will provide the physical LUN that CEPH will use. This is good othe=
rwise for every protocol of storage you want to use, you would have to have=
 a specific driver for CEPH.=C2=A0</div><div><br></div><div>This is a prett=
y good intro to iSCSI=C2=A0</div><div><br></div><div><a href=3D"https://blo=
g.calsoftinc.com/2017/03/iscsi-introduction-steps-configure-iscsi-initiator=
-target.html">https://blog.calsoftinc.com/2017/03/iscsi-introduction-steps-=
configure-iscsi-initiator-target.html</a>=C2=A0</div><div>=C2=A0<br></div><=
div>Regards,=C2=A0</div><div><br></div><div>Don=C2=A0</div><div><br></div><=
div><br></div><div>=C2=A0</div><div><br></div><div><br></div><div><br></div=
></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Jan 24, 2020 at 4:50 PM Bobby &lt;<a href=3D"mailto:it=
alienisch1987@gmail.com">italienisch1987@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,=
</div><div><br></div><div>I have some questions regarding iSCSI and Ceph RB=
D. If I have understood correctly, the RBD backstore module=C2=A0</div><div=
>on target side can translate SCSI IO into Ceph OSD requests. The iSCSI tar=
get driver with rbd.ko can expose Ceph cluster</div><div>on iSCSI protocol.=
 If correct, then that all is happening on target side.=C2=A0=C2=A0</div><d=
iv><br></div><div>My confusion is what is=C2=A0 happening on client side?</=
div><div><br></div><div>Meaning, does linux mainline kernel code called &qu=
ot;rbd&quot; has any role with=C2=A0 Open-iSCSI initiator on client side? T=
o put it more simple,=C2=A0</div><div>is there any common ground for both p=
rotocols (iSCSI and rbd) in the linux kernel=C2=A0 of the client side?=C2=
=A0</div><div><br></div><div>Thanks :-)</div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/dc5e17db-5e78-49ff-be38-a17706428655%40googlegroups.c=
om?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://gr=
oups.google.com/d/msgid/open-iscsi/dc5e17db-5e78-49ff-be38-a17706428655%40g=
ooglegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EYmEN1ETc_Ru0xcuaKUisDSV0B2%3Ded2Kx9Wk2rksAXnQg=
%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.go=
ogle.com/d/msgid/open-iscsi/CAK3e-EYmEN1ETc_Ru0xcuaKUisDSV0B2%3Ded2Kx9Wk2rk=
sAXnQg%40mail.gmail.com</a>.<br />

--0000000000000d952a059cec9bdd--
