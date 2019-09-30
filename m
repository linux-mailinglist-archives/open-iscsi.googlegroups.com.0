Return-Path: <open-iscsi+bncBC755V5RXMKBBNNLZHWAKGQESFT2UGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 51325C2637
	for <lists+open-iscsi@lfdr.de>; Mon, 30 Sep 2019 21:21:27 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id 59sf14910529qtc.5
        for <lists+open-iscsi@lfdr.de>; Mon, 30 Sep 2019 12:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tHZ+R2a92+homxzH+yRca3Q4Pc8iHvUAPMliKMlBm6k=;
        b=adt/rjvwtbjNgaTWWW2j8W9q6/NVEsUHp9ZYMKHeg5aS+nuoiOjKubr+CT11fN5aqe
         zl6TXt8Qokb/zqL+Fzsfo8DUB4eeOLp9484glkCdJpDhiiY+5PF0dTgqkmzC4qk8hPxx
         hjb/kikBkI0XIA0wHYY+JOjX8BklIAwLmOuB6tPNh4qw8EKKRtnKf8z/rhNeJ+iFps4Q
         hOuIqRyhZ+7hYtuMFyTAqL6S1RNO5JKyylGl77uiXsn7M5oYmwhP1ca5x10rmw94/a04
         rtuEH4dCW4XyDKa+q00jU6/zlKewkoB86/J8M+Y9mWL5VhK7BEY24k7MMPXNGiPhRgTE
         cNvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tHZ+R2a92+homxzH+yRca3Q4Pc8iHvUAPMliKMlBm6k=;
        b=ZVf5mw5Nza86pms5n1UV3UY+SGDNLm8tr0/4ZQheC9043gzZUm02W+R1ALc0vd2QQs
         q4I1Qc+XK9KkwBrvcd3PJgZTMC7D6/0scTFfy56tRfPiP4lBcdhloGal839pgSVaCcLL
         U8IIFP/AksFnpYt9ULTZH1R2kCMDSDFlRrxRCuWKErlbXRBnALTjOQ+OFTjLSE4jHY3T
         mNbaVYphBRw6ENyMQpuEyt25qVm468tJS8HEXTyRWwF47O0lJO3QHJUq7SPUtIemD91l
         UJroKsqVhYRtZB8Ig9hCe7q/1n0fnYKyBIdOwLjwHDSZ1EwxME9twvHNj70Hfq8fO0RB
         UFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tHZ+R2a92+homxzH+yRca3Q4Pc8iHvUAPMliKMlBm6k=;
        b=mS72Lh4AfiGMAUtsaibJgkWz3J4zqFYqGjbhNSC8yoIRzsYQTpc6vS+J/nmS0xJt/2
         K3qgysayQT0B/YEYQy24+uJpGsVq/5Mh3ajwDjBryBoBajnrWr/qa0tgVNMQDcfebEU9
         o/Jquzm+zoRaZtf2zIGkVlKwDBETsMU3Czm+m95ZVdo9GSntNn5adzmVUPvk/rX2gB65
         sY4XpZARcyDJo5c01U55vEcpFm9DFq8j7Kf8c+S6YGxmEYatB0ZRtJRaHDwGay1cRYbI
         glnQNCJtpj1rJxaPMYDUTE2r5VWQeExRN6TWRuuBodr04l8/FUZB2qMiDV9g4YaAbDgi
         P/ZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXaPKDTCZSGXVDysEsZSsrBDyJKaqfYBrFsQ7ixRuEdJ+arqLL2
	5aMmYs24RXZsxWu+LNXgxx0=
X-Google-Smtp-Source: APXvYqycKJe3i0GbQisoiUiRfFxUvGvOXD8DSmNomAAlI7+Cg9A//rgYGa+EqPdbL+9gszQM5xd8XQ==
X-Received: by 2002:aed:3be3:: with SMTP id s32mr26319345qte.156.1569871285602;
        Mon, 30 Sep 2019 12:21:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a40b:: with SMTP id n11ls4422072qke.10.gmail; Mon, 30
 Sep 2019 12:21:25 -0700 (PDT)
X-Received: by 2002:a37:a24d:: with SMTP id l74mr1727832qke.200.1569871285027;
        Mon, 30 Sep 2019 12:21:25 -0700 (PDT)
Date: Mon, 30 Sep 2019 12:21:23 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <64893402-6977-497d-91a4-9eb557d7a705@googlegroups.com>
In-Reply-To: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
References: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
Subject: Re: iscsiadm unable to connect to iscsd
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1103_631410377.1569871284048"
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

------=_Part_1103_631410377.1569871284048
Content-Type: multipart/alternative; 
	boundary="----=_Part_1104_928158437.1569871284048"

------=_Part_1104_928158437.1569871284048
Content-Type: text/plain; charset="UTF-8"

On Friday, September 20, 2019 at 2:02:20 AM UTC-7, Dirk Laurenz wrote:
>
> Hi,
>
> want to read the session stats for a connection, but iscsiadm claims not 
> to be able to connect to iscsd.
> I'm not sure how to debug this:
>
> $host:/etc/iscsi # iscsiadm -m session
> tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)
> tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flash)
> tcp: [3] $IP3:3260,1 $host3:lun01 (non-flash)
> $host:/etc/iscsi # iscsiadm -m session -r 2 -s
> iscsiadm: Could not execute operation on all sessions: could not connect 
> to iscsid
>
> any idea?
>

That looks like a bug! Let me check it out. 

>
> OS is SLES4SAP12 SP4
>
> Regards,
>
> Dirk
>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/64893402-6977-497d-91a4-9eb557d7a705%40googlegroups.com.

------=_Part_1104_928158437.1569871284048
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Friday, September 20, 2019 at 2:02:20 AM UTC-7, Dirk La=
urenz wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-lef=
t: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">H=
i,<div><br></div><div>want to read the session stats for a connection, but =
iscsiadm claims not to be able to connect to iscsd.</div><div>I&#39;m not s=
ure how to debug this:</div><div><br></div><div><div>$host:/etc/iscsi # isc=
siadm -m session</div><div>tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)=
</div><div>tcp: [2] $IP2:3260,1032 $host2-lun01 (non-flash)</div><div>tcp: =
[3] $IP3:3260,1 $host3:lun01 (non-flash)</div><div>$host:/etc/iscsi # iscsi=
adm -m session -r 2 -s</div><div>iscsiadm: Could not execute operation on a=
ll sessions: could not connect to iscsid</div></div><div><br></div><div>any=
 idea?</div></div></blockquote><div><br></div><div>That looks like a bug! L=
et me check it out. <br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">=
<div dir=3D"ltr"><div><br></div><div>OS is SLES4SAP12 SP4</div><div><br></d=
iv><div>Regards,</div><div><br></div><div>Dirk</div><div><br></div></div></=
blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/64893402-6977-497d-91a4-9eb557d7a705%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/64893402-6977-497d-91a4-9eb557d7a705%40googlegroups.com</a>.<b=
r />

------=_Part_1104_928158437.1569871284048--

------=_Part_1103_631410377.1569871284048--
