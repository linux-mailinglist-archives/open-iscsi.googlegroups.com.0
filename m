Return-Path: <open-iscsi+bncBC755V5RXMKBB5NMVDYQKGQE5DDBRHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C13147374
	for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 22:56:07 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id e1sf60907qto.5
        for <lists+open-iscsi@lfdr.de>; Thu, 23 Jan 2020 13:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RNBgovTzJ67qQXoGgZOn3GgVyJ65ahqBUUrHKtpuoas=;
        b=hOjuFCC8F5L66/rIdoU2jDQRuJ07wJ7+RA/z1GUvUlMaPTRvhzKfd07qo91O60H36G
         nf9FSaGjYXxt35N4szeJX9sCC1efKC2VSKiemYl/3agee7AQEl098ykq38xhglOxvpsk
         AxVtobPPsDZYNvY+rAVWl7cWFLgklwVPncrWi5RdMvcsNHGhIs23szwUYlhQX+df8cCD
         t+uZBBSI5myK5WVrh45GiIdGlssYXeyEyd1acGSNV0wKRHr0zsfFa3t/5ZCjEB6d91NJ
         U6R5XusDAUzSyys4gKVW2pkNUk5Iti4MC/HriTHqMVw/nMMBSTqbJ0TtSuMNqMI9b0XE
         AziQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RNBgovTzJ67qQXoGgZOn3GgVyJ65ahqBUUrHKtpuoas=;
        b=XaMM9nAC+w1iBr+oGC84sPlLPGpLS7kBXgTPezGdkZ0PCUgivCZmWVqcoKKPoN1Wkb
         6pgf68rnIIA4PuM67m9h6qNyyOQFwA7uLNHvNYp9quAFZAwXUTDpRvSY0Ohku4V8AeE5
         6mgYsPF07c86K3kTETXiL1jwSOyk51epxspDZS4Y5mWQu9eNNMp+38DgKgtlwMV76Ahk
         hCsmdG5jAr4zbvW5bkK4ma9VWlVvEAau4d2nhH4RTVL0baoGHg2Zl6VGsoF6ndxkVewn
         dsFcNrWCasl3VqHKcslqf28d6XWXTEmLDlPgL4vRd0mBn0hveBX+O4HKQBjLoVnkbrRo
         Z/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RNBgovTzJ67qQXoGgZOn3GgVyJ65ahqBUUrHKtpuoas=;
        b=oaWqexPCfpFZAHFQ/s4ueBohvfAYvA3L/y9By5lxNlf03IDAKVH+i64Yldgm1IeBJF
         KacWO9HcpwkdX/q8ZecQOKMH4msauRSC8nx1v+2fnDe/lyxdNX795V4o2VHN+zytpH09
         nyzXrmSjm0HVAQwKlw/bBX0NuIbaO3iZ1+ijzPdIghZfM7AKMGgJWp/OTZzK2uY+R3cO
         suD3K2GwIOpKurel9V2dJMChmDIeo85kNalTANiUBK4jnFzurDNDRQE89dmg3J1wJEF4
         kEzKoVNx3epy/9T1Xde18+VDowPoM017gvXyGUS19Crwt50jn869KJWqdKvWJDZ3BNSs
         5zjw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXiJMzxrDEPd1kzAPkVserHg38YzRR12Cl7o7eneUcEwlbmz4x/
	5rm/g5YbocoYzqbt0dOVXvk=
X-Google-Smtp-Source: APXvYqwN2B478ZgJON9jB1dbC3g48Q/bj646vq5Po5Y/R020izsGsMXJPRFr1kT0TH9L+tLrOhF6dg==
X-Received: by 2002:a37:a881:: with SMTP id r123mr338111qke.275.1579816565131;
        Thu, 23 Jan 2020 13:56:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:c30e:: with SMTP id n14ls179201qkg.3.gmail; Thu, 23 Jan
 2020 13:56:04 -0800 (PST)
X-Received: by 2002:a05:620a:20c7:: with SMTP id f7mr361689qka.440.1579816564742;
        Thu, 23 Jan 2020 13:56:04 -0800 (PST)
Date: Thu, 23 Jan 2020 13:56:03 -0800 (PST)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <1ece4cbc-29df-4b10-952d-a8d829e24e6f@googlegroups.com>
In-Reply-To: <yq1tv4wnjm2.fsf@oracle.com>
References: <20191226204746.2197233-1-krisman@collabora.com>
 <CACGdZYJ3hasgRV4MKpizX3rSQ1Tq4R+wDREcYXFUgx720ac5sg@mail.gmail.com>
 <85ftgx7mlr.fsf@collabora.com>
 <CACGdZYJKF85SgOt0-yHiROsqhP0K+x+XAg7CRJv_0oKt60VtvA@mail.gmail.com>
 <85r20g2vfw.fsf_-_@collabora.com>
 <yq1tv4wnjm2.fsf@oracle.com>
Subject: Re: [PATCH v4] iscsi: Perform connection failure entirely in kernel
 space
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2946_708602857.1579816564089"
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

------=_Part_2946_708602857.1579816564089
Content-Type: multipart/alternative; 
	boundary="----=_Part_2947_632034393.1579816564089"

------=_Part_2947_632034393.1579816564089
Content-Type: text/plain; charset="UTF-8"

On Wednesday, January 15, 2020 at 7:52:39 PM UTC-8, Martin K. Petersen 
wrote:
>
>
> > Please consider the v4 below with the lock added. 
>
> Lee: Please re-review this given the code change. 
>

Martin:

The recent change makes sense, so please still include my:

Reviewed-by: Lee Duncan <lduncan@suse.com>

>
> > From: Bharath Ravi <rbharath@google.com> 
> > 
> > Connection failure processing depends on a daemon being present to (at 
> > least) stop the connection and start recovery.  This is a problem on a 
> > multipath scenario, where if the daemon failed for whatever reason, the 
> > SCSI path is never marked as down, multipath won't perform the 
> > failover and IO to the device will be forever waiting for that 
> > connection to come back. 
> > 
> > This patch performs the connection failure entirely inside the kernel. 
> > This way, the failover can happen and pending IO can continue even if 
> > the daemon is dead. Once the daemon comes alive again, it can execute 
> > recovery procedures if applicable. 
>
> -- 
> Martin K. Petersen        Oracle Linux Engineering 
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1ece4cbc-29df-4b10-952d-a8d829e24e6f%40googlegroups.com.

------=_Part_2947_632034393.1579816564089
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wednesday, January 15, 2020 at 7:52:39 PM UTC-8, Martin=
 K. Petersen wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>&gt; Please consider the v4 below with the lock added.
<br>
<br>Lee: Please re-review this given the code change.
<br></blockquote><div><br></div><div>Martin:</div><div><br></div><div>The r=
ecent change makes sense, so please still include my:</div><div><br></div><=
div>Reviewed-by: Lee Duncan &lt;lduncan@suse.com&gt;<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px=
 #ccc solid;padding-left: 1ex;">
<br>&gt; From: Bharath Ravi &lt;<a href=3D"mailto:rbharath@google.com" targ=
et=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;mailto:rbhar=
ath@google.com&#39;;return true;" onclick=3D"this.href=3D&#39;mailto:rbhara=
th@google.com&#39;;return true;">rbharath@google.com</a>&gt;
<br>&gt;
<br>&gt; Connection failure processing depends on a daemon being present to=
 (at
<br>&gt; least) stop the connection and start recovery. =C2=A0This is a pro=
blem on a
<br>&gt; multipath scenario, where if the daemon failed for whatever reason=
, the
<br>&gt; SCSI path is never marked as down, multipath won&#39;t perform the
<br>&gt; failover and IO to the device will be forever waiting for that
<br>&gt; connection to come back.
<br>&gt;
<br>&gt; This patch performs the connection failure entirely inside the ker=
nel.
<br>&gt; This way, the failover can happen and pending IO can continue even=
 if
<br>&gt; the daemon is dead. Once the daemon comes alive again, it can exec=
ute
<br>&gt; recovery procedures if applicable.
<br>
<br>--=20
<br>Martin K. Petersen=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Oracl=
e Linux Engineering
<br></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/1ece4cbc-29df-4b10-952d-a8d829e24e6f%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/open-iscsi/1ece4cbc-29df-4b10-952d-a8d829e24e6f%40googlegroups.com</a>.<b=
r />

------=_Part_2947_632034393.1579816564089--

------=_Part_2946_708602857.1579816564089--
