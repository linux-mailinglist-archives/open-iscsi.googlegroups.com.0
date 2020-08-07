Return-Path: <open-iscsi+bncBC755V5RXMKBBRUPW74QKGQEQCSR7RY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C27523F440
	for <lists+open-iscsi@lfdr.de>; Fri,  7 Aug 2020 23:29:43 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id d74sf1785775oib.3
        for <lists+open-iscsi@lfdr.de>; Fri, 07 Aug 2020 14:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=554qQ5VTpaB0jMZpLS5XIQu53ycF+UZVjm2HatA7jUE=;
        b=mhIXvRMWy+XraOGz8R2/HO+Jt+sKnQ7VRcgswkZpdpzDThu3s9ILnWe5LebkxuAKz+
         tsUKUHr9C0+Dmxp9DpcggJXs5kAG/le5E3n2dnHDTXTxMY+YeQwFGLUVvISDvIFhaQAx
         01IBt/6kOlEb0raXOFE0j6gmk1Vx+EuiyfsCjvSu0NvRUnho6j+aRo7wgoO7MHZEYRe9
         91k29V57S6dq+OHKA8v15Gjre3RA7H/MjwfPEqqYZ5PCeeuSJ95vx/DvQAy5TXjDBlfo
         8khYBGr3ybAKvoqP1HvoTdhz9GUMI0tN/VCzBZFkqcvgcIJQqarYkIBkb3b57DDgOjg8
         CypQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=554qQ5VTpaB0jMZpLS5XIQu53ycF+UZVjm2HatA7jUE=;
        b=PNNJgFZwZYUp/SbqmZTaOLlbe6LbWiIASNWwEwZJWqf+u3L+G4A4hcSIQCAhNmjsi2
         VPvQAni/RGH++9RuSaLg3SKdCGD9i/UjRrZt7scthYOi1nHBED1E0/AIzouO/o3UZS5Z
         2Bs6sE3c7LTNTqH2BrAt+vlEMNjW//aJBUA14wPAlPka5+qVDxKhlKkMExkDkqftTTSq
         SmKVZ82JmYUpayoaHmK7/+ijOtQcs2psNB6mIxLB3/lYpxqj/7AEzP7mRCWosim6Vxl9
         Okh02I2PkPyEX7rLUJD1n93oAuTubfluxEy/c5lEJWnbMBV4igImiQuwnH7D6AA5tw1I
         1JyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=554qQ5VTpaB0jMZpLS5XIQu53ycF+UZVjm2HatA7jUE=;
        b=RDoQcDteF5MrAOwP2TU6Uhh+MgkqNuGu6VeB9Dk2ug2J8P3qPhn+uCGYSv7SDIsggY
         WsGQYJUYSm9X9CN1kEWDf4JFJDLajt1TogC108fIJP1hBhrmoPY4GxjuMtXnFGNtihUj
         HMxf20PimlUuHmlPYkrGywEhmMRfHm82qU0fHUMsSWWlx46RdrzRYkCfIT4P79NWEcfJ
         abTJkVq4q8d7grEcpCZM5vIAIUGz1UnMIz00sH1NIPH9Z+wP1J8RhvdsjuS+qcX5DH4n
         EDOkowBi+LO90LCdr1A12lGpe/HdYdWiO8/RrLNnbzgR4uz74R1YmioS6kU/5snXA2Is
         hleA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530kapZyKj1AxNObOtNJWOwgWUcO/I/SIlLBq+0U52cZGypTiYsk
	b3jL7sbCQeaxoBFfB6elNAc=
X-Google-Smtp-Source: ABdhPJwWCRkNr0K/jZ1BqLzNVNg7nJwt2vgplbKZ/jA61tHBnQautFL8MwmUTJvl4GVfB04RHk5i0g==
X-Received: by 2002:aca:388:: with SMTP id 130mr12380816oid.144.1596835782207;
        Fri, 07 Aug 2020 14:29:42 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1dc3:: with SMTP id a3ls2469891otj.8.gmail; Fri, 07
 Aug 2020 14:29:41 -0700 (PDT)
X-Received: by 2002:a05:6830:17dc:: with SMTP id p28mr14069446ota.296.1596835781753;
        Fri, 07 Aug 2020 14:29:41 -0700 (PDT)
Date: Fri, 7 Aug 2020 14:29:40 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <709390a8-7a98-4990-afbb-4b54bef2d4dao@googlegroups.com>
In-Reply-To: <d8826338-bb99-4623-b4a1-4226cd5139c9n@googlegroups.com>
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
 <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
 <bf75d5e8-f4ed-4a16-86a8-ab78d0cac1cco@googlegroups.com>
 <0aed6f01-5c36-46db-af27-5b6c353fd7b0n@googlegroups.com>
 <d8826338-bb99-4623-b4a1-4226cd5139c9n@googlegroups.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_505_1024736474.1596835780964"
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

------=_Part_505_1024736474.1596835780964
Content-Type: multipart/alternative; 
	boundary="----=_Part_506_1794301678.1596835780964"

------=_Part_506_1794301678.1596835780964
Content-Type: text/plain; charset="UTF-8"

On Thursday, August 6, 2020 at 1:42:35 AM UTC-7, Amit Bawer wrote:
>
> Another point i'd like to ask about is iSER fallback that we have: 
>
> Currently we check during connection flow if 'iser' is set on 
> iscsi_default_ifaces in our configuration. 
> If yes, it is first checked if its working on server side by attempting 
>
> iscsiadm -m node -T target -I iser -p portal -l 
> iscsiadm -m node -T target -I iser -p portal -u 
>
> If the login/logout worked it is kept as 'iser' instead of 'default' 
> interface setup, otherwise it fallbacks to 'default'. 
> This is used later for the actual node login. 
> The thing is that this check can also waste valuable time when the portal 
> is down, is there a way to fallback in the iscsiadm command itself, or 
> prefer a specific interface type when trying all/parallel logins for same 
> target+portal but with different interfaces types?
>
> There is no way to have the iscsi subsystem "fall back" to default from 
iser given the current code. The problem is when to fallback? Also, falling 
back to a secondary interface could add an addition 180 seconds, if it 
times out, as well. So it's up to the higher-level code (you, in this case) 
to make decisions like that. 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/709390a8-7a98-4990-afbb-4b54bef2d4dao%40googlegroups.com.

------=_Part_506_1794301678.1596835780964
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thursday, August 6, 2020 at 1:42:35 AM UTC-7, Amit Bawe=
r wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0=
.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div><span>Another poi=
nt i&#39;d like to ask about is iSER fallback that we have: <br></span></di=
v><div><span><br></span></div><div><span>
Currently we check during connection flow if &#39;iser&#39; is set on iscsi=
_default_ifaces in=20
our configuration. <br></span></div><div><span>If yes, it is first checked =
if its working on server side by attempting <br></span></div><div><span><br=
></span></div><div><span>iscsiadm -m node -T target -I iser -p portal -l <b=
r></span></div><div><span>iscsiadm -m node -T target -I iser -p portal -u <=
br></span></div><div><span><br></span></div><div><span>If the login/logout =
worked it is kept as &#39;iser&#39; instead of &#39;default&#39; interface =
setup, otherwise
it fallbacks to &#39;default&#39;. <br></span></div><div><span>This is used=
 later for the actual node login. <br></span></div><div><span>The thing is =
that this check can also waste valuable time when the portal is down,
is there a way to fallback in the iscsiadm command itself, or prefer a spec=
ific interface type
when trying all/parallel logins for same target+portal but with different i=
nterfaces types?</span></div><br></blockquote><div>There is no way to have =
the iscsi subsystem &quot;fall back&quot; to default from iser given the cu=
rrent code. The problem is when to fallback? Also, falling back to a second=
ary interface could add an addition 180 seconds, if it times out, as well. =
So it&#39;s up to the higher-level code (you, in this case) to make decisio=
ns like that. <br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/709390a8-7a98-4990-afbb-4b54bef2d4dao%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/709390a8-7a98-4990-afbb-4b54bef2d4dao%40googlegroups.com</a>.=
<br />

------=_Part_506_1794301678.1596835780964--

------=_Part_505_1024736474.1596835780964--
