Return-Path: <open-iscsi+bncBC755V5RXMKBBY7CZHWAKGQECYOY7DI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 9094EC2885
	for <lists+open-iscsi@lfdr.de>; Mon, 30 Sep 2019 23:19:32 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id h10sf15255835qtq.11
        for <lists+open-iscsi@lfdr.de>; Mon, 30 Sep 2019 14:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=TY68XKYcMAnpqoVLI6eNzEGFwEz9hfqEyozSZkUqiMg=;
        b=IkKghyLptunwyBrOhSFEBaAEBdMoMTGk1l+SGIyEx+2rLK6ncco9PgUs78vyY+SoUd
         sJcvRPPWoYypeWT9SWScT0UzMOloqvY4OofieYCzP1R/NfKVsnbfYt5TKDvUKP5CHELg
         Imt/bMzW7cMWi0PKSOxnohfZKvT8Ml/quaDW4QT48YN8ghQ7Q5ygZjj0IYidaPitvDkb
         QVHYezAx/wle8DSSA6C93WwVRMjY2guWgp3bR987pUPEZXJX0b77dxDb6rbp54y1XvhT
         a1FdyKc5nL8oQwT6jmHVVn8F2L65wZu4XbHbjydOZTI/oIDIBtCpzsKtKUNi7ye66nni
         Txdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TY68XKYcMAnpqoVLI6eNzEGFwEz9hfqEyozSZkUqiMg=;
        b=KrEUe/qhW88BV6tnXEp6PZA2ePzQLM00dHjuoLpqjXVXwGIYamWzxeiTdu3GOvL+qy
         wQsBZNStDqLWdN8SjAxXY8BEHlXhC/G5zQxk4qzRpFU4Tv/IM0uea404Hno4bRlTw9nl
         KZTMEohUJx5B1BGZ6GlcO0W3GyvvnH/2OQzQsnf2coX6yt4yw/uZSZD5EfEbzrwCr7yY
         2RNR8vEBe1BeIWPCbOHgxz+9dJ6RRoRYRyHBSMiE5F1d29QP1Qj0tNxXh9kNT0pR2tVg
         ky/ZyjiwcSzDy0HNeOXZ5CcHS7M4HbsESl9m2bsgGXBWyJC5x1gkauCC4l9oB/lSxWPb
         t2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TY68XKYcMAnpqoVLI6eNzEGFwEz9hfqEyozSZkUqiMg=;
        b=izwx81ez6Grs7Qwk3sYMOkWMvkF9/UXOsOHR1quK3By7JPARN177iAlRo6UmMvqWUB
         879Nhui+1dq5YujS2wNIiSL5Q7/SyZ3EqFF1S9WuzmEmKvp4bDKhZH50G2LzONp/LFio
         GxRe3q46HJT2hraxMS3Z1pOh5mzp8mirye1H2eOdVIkW/kdVUN7BEbXovm+3DDU58IX4
         lFuISG/D6Q7GwKhUe9vXTA8ZAYb6jrCFlEDbESsqBZmnwBdsVt0sFQmmOr6Jdiqrd1Mz
         NZvKZZvNsil/W/qIQRkN23OsYfz19xjLamdTFVHBGUG0fSg1ll5qXNz5QTGfGdwKX8an
         18lA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXV0yzYw3/iXhsCdvjahdUwYChsA6SMz6dG5+FtX6LaGQ3uVLnm
	ohjpXpjyCunSLeSPpXY/SoM=
X-Google-Smtp-Source: APXvYqwup+GEFz4RLw9u1P/rgvy2v2scLJv8YLH/aX2ywFe1t6BS328cgfKOHv94FSnBPFiTkN3lcQ==
X-Received: by 2002:a37:9bd4:: with SMTP id d203mr2353848qke.257.1569878371572;
        Mon, 30 Sep 2019 14:19:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:19c7:: with SMTP id s7ls4957205qtk.10.gmail; Mon, 30 Sep
 2019 14:19:31 -0700 (PDT)
X-Received: by 2002:aed:3fe9:: with SMTP id w38mr27459621qth.180.1569878371171;
        Mon, 30 Sep 2019 14:19:31 -0700 (PDT)
Date: Mon, 30 Sep 2019 14:19:30 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f4da4808-aa2a-4de5-ace3-8f8a072b6593@googlegroups.com>
In-Reply-To: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
References: <ab9746b4-36ec-4866-b76c-2c5ea11cdd7b@googlegroups.com>
Subject: Re: iscsiadm unable to connect to iscsd
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1159_609853302.1569878370609"
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

------=_Part_1159_609853302.1569878370609
Content-Type: multipart/alternative; 
	boundary="----=_Part_1160_389020292.1569878370609"

------=_Part_1160_389020292.1569878370609
Content-Type: text/plain; charset="UTF-8"

See https://github.com/open-iscsi/open-iscsi/pull/174

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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com.

------=_Part_1160_389020292.1569878370609
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See <a href=3D"https://github.com/open-iscsi/open-iscsi/pu=
ll/174">https://github.com/open-iscsi/open-iscsi/pull/174</a><br><br>On Fri=
day, September 20, 2019 at 2:02:20 AM UTC-7, Dirk Laurenz wrote:<blockquote=
 class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1=
px #ccc solid;padding-left: 1ex;"><div dir=3D"ltr">Hi,<div><br></div><div>w=
ant to read the session stats for a connection, but iscsiadm claims not to =
be able to connect to iscsd.</div><div>I&#39;m not sure how to debug this:<=
/div><div><br></div><div><div>$host:/etc/iscsi # iscsiadm -m session</div><=
div>tcp: [1] $IP1:3260,1032 $host1-lun01 (non-flash)</div><div>tcp: [2] $IP=
2:3260,1032 $host2-lun01 (non-flash)</div><div>tcp: [3] $IP3:3260,1 $host3:=
lun01 (non-flash)</div><div>$host:/etc/iscsi # iscsiadm -m session -r 2 -s<=
/div><div>iscsiadm: Could not execute operation on all sessions: could not =
connect to iscsid</div></div><div><br></div><div>any idea?</div><div><br></=
div><div>OS is SLES4SAP12 SP4</div><div><br></div><div>Regards,</div><div><=
br></div><div>Dirk</div><div><br></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/f4da4808-aa2a-4de5-ace3-8f8a072b6593%40googlegroups.com</a>.<b=
r />

------=_Part_1160_389020292.1569878370609--

------=_Part_1159_609853302.1569878370609--
