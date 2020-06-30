Return-Path: <open-iscsi+bncBD7Z7UVWSMJBBXWA5X3QKGQEBM7UJ2Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 182A120F8F2
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 17:55:12 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id u19sf1406287oof.21
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 08:55:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593532511; cv=pass;
        d=google.com; s=arc-20160816;
        b=R8WFZWty+mPbgu9JFUnpX+LkAekH6yDpqhWhB8RLYmvZbDJw2+XIHtATp8V+dc9whh
         Ohu2VWdGf0+tRvu5bkhSDklQfe0WGozxIQwKhA1XpLc2L8R7tYw1nutPQDbH/B59kXoX
         +LTSrc0Pg+HD4ad5G2L/BvjMigDtX/rnPZMaMhMbhQhFdwLZan6zB0xa6Vx5dwdwuUbY
         s8v9eAg+3JGNOt+4vyHb1Yf2G0wjkVECfg8D+fx1QZVvxV+26sr6q0Qs+yVa8u6D2xG1
         A0nwD/bmbJESEqeqDpRGmlYgNJeYbau/+42I0bvMBm8gFkVfRy10rk1nzBDbas9hd5+b
         07Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=X8xpo12mFqHwYQMQtQwC7vIaN/aavDK5TMiwYg8xp+c=;
        b=DGAucty6wWSicXVZnWjRk4Bswqc6JuHNJmtP/CDAKUIUPSbJBbGf0LlFxtPEg4kFyi
         eDK3mFhtxUL9cAKf2ldGiXzmJvOSLLon5l3NVjF0hBz4JrY7AWSm8LfjOujtBSFQ1RI7
         18BmwYV9GK0rr0D/7vJNj4xlGN2SuVHtIivYcirCLsKzUDwhOrrZBJREEwdlWXJ+Aev/
         L/HvW3nN0+0SueSfUikbpEQYNW1VMEW3F1JUvh/hwAkQHyU7LnwGfEkGupYuFdzA8YNK
         I6U7TsP0Qs7HaS22N5uDS+9zBRtI6HiEP5EI2ZTAgoJ3z1+xh9Dz773XfqsUzo8+UUTR
         G6/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YE+EkycA;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X8xpo12mFqHwYQMQtQwC7vIaN/aavDK5TMiwYg8xp+c=;
        b=P2lefIU7NPHXZayJs2o1fkFUFb4jWM3PKEtEhGvH9s5AsgCSEZJBcPeUdPfHyTNTk3
         a0nhzZWYe9pYyV5CuL6SZXfdCQD70BcN9ow47bLqmBrRUlz0XWhwZiPHfc9OxCSlsZVE
         5ndlbccq2o3K/gSE5BdB5AF2K1yKpgp7wpUm3nk9fXa+pg149Ya+kz5x9QzL4ctXSwvk
         AlTf5fRtxkOfeoq9dbSyb2Y31PY1EQrZgWf3Olbn+gfq7Mq6NipdEodVgZvcRDOFLi66
         mCCMJ317719c39JkcbeNr987ZAWoDtj7GyRyj7SDnTOY/KKIllX8KmD9/FaDHnCRDSjA
         L0mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8xpo12mFqHwYQMQtQwC7vIaN/aavDK5TMiwYg8xp+c=;
        b=qay5qHN6m+BKYcgWQV8mAfPiUTwYCj33FeXHneQeAePstpG9FlSgvoNFzsRwuxIWzK
         3nx7HS3No6uGvMC4zwKEJbREBTKATbAgYpGzFwUXTLGyAVhTY/Vdcah+5iZPIletsTx5
         UB0Y82/e0G9aJuU2Hr4iZCWGpHIGWgK33x5qZFqqgTG5pofnKaDjcV2Jq6wNyi0x5gRJ
         yEEMCpl0Fh5r0aSUD6hIdg0hKaGy6862p0qnYnLHpqv5JxyC/uLGrs5L+mYXXXVONHjz
         2aBjQOYib2FUHu1t8hwQJrXG3MkxDMB1MqY+/X6M9E9vW1VIK+Ajm0/rsRxROV5LqSFw
         omGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8xpo12mFqHwYQMQtQwC7vIaN/aavDK5TMiwYg8xp+c=;
        b=LyFIqlvmDBbLFtfehgLeaBRUzwjYxbAxTHT/u7JF3sejt/3Z7VWpIwrXbUiHE3yOe+
         IWszU0UOlUOFs/xBAwu37n1YqYF83wYRH14GyH5p8pjglNLbtRd0UilGuZGVGSu1gpxZ
         60x7T7q4m3aFGXyMFndIbpH76lNF0R0ZMRF0toAYvdYQOZ2ff9o+qFd9F8l9jp9Kf/el
         Y5aMet5bWXLMgLu2id92qpf2y08KhlyAQaBOv7LvDNpj+WzHOPDXHyHbVleYalqB0gV8
         U+OroZiwuG2h+1meh4pEWBLP1D7jjpKwK/EXfMBxUnPGpBuJVQK2G8RDE83x1KZek7m7
         zObg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533NN/zfsoflNkozJBsO53NR5qjzC82kUiA0dj1bJJd+OoF4H/9p
	9QWQrkpKQclsNR0OwgyDIYM=
X-Google-Smtp-Source: ABdhPJyScpjX1L6cm7uu5OnAliwqQltuOplYHhacwJVwvw81VFkf8mbKrmJ1xtBgicccrFWfp6/mUQ==
X-Received: by 2002:a4a:b109:: with SMTP id a9mr9918796ooo.83.1593532510941;
        Tue, 30 Jun 2020 08:55:10 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:4684:: with SMTP id z4ls2693849ote.1.gmail; Tue, 30 Jun
 2020 08:55:10 -0700 (PDT)
X-Received: by 2002:a9d:6c93:: with SMTP id c19mr18983706otr.195.1593532510595;
        Tue, 30 Jun 2020 08:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593532510; cv=none;
        d=google.com; s=arc-20160816;
        b=YSUHaYkMBYh9dKImSxOmJFglvgjxcSLPwH5VQZS0NMZglY4GLPXNRtL/0S+0Kn8tSV
         WRFw7aQLnTHRNL9gXb6UdvBnIISijuDnPIqPT1Kcs0ZXWcgBOH6bIF4w+fS3ygHrb65j
         AyeqSKxGSqBEie0lYPbnqlp1WVA7OgUDpOX1ZkONynBeDebS/4vRT0C3mqzYFYhL4Mru
         BbFe9U308GK37ZKLZouvl7eaxdranCqOJzVxHhYBAed7r3FlEqbjlIP6wiRlaeHtdDqX
         xUFj6CbjUfMpp+SwM0+SohP7BfE6qKtxAACq1EnCejKX1reUZK1zUDLn59p6qkw8QXJm
         7jxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=tg4wqM8QknjIHQH4TnDd9Sxsa+/p5B0rxcT2lcyf73g=;
        b=IzE/oc2tfeycQpm1vCNoidmdYghkymPD0PuFcy6VsREw9EJu15fP6/otZR+AfYRQhs
         K3uPSDp102nQBDIgerGPLNj5c70bCPIbnRlRtcs/SWVhjy7ZlRBnPEtumVavHefCAC8A
         XYqczHghI+peFKnTXnnX6H3e6u+QEsIZGP3+nzjlGrhYQ+2eufHY2tQC+WgPf6U/11cd
         x88EBQcNwJ24xkrM+P9Gf3HTD/LMV+9IYqe54z4qF+2ES8VWlMe3R2ZcfohmKkawkpEC
         3/heQZWhUc9PsQFiVRdlJHdg2rrr7jvqT4JFTZ6uF+bvYU20hYwJQ7QRHy8VXf4P+JaE
         oljQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YE+EkycA;
       spf=pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id l18si258446oil.2.2020.06.30.08.55.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 08:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of don.e.williams@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id c16so21524153ioi.9
        for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 08:55:10 -0700 (PDT)
X-Received: by 2002:a05:6602:2f0a:: with SMTP id q10mr21937821iow.134.1593532510133;
 Tue, 30 Jun 2020 08:55:10 -0700 (PDT)
MIME-Version: 1.0
References: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
In-Reply-To: <cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn@googlegroups.com>
From: Donald Williams <don.e.williams@gmail.com>
Date: Tue, 30 Jun 2020 11:54:57 -0400
Message-ID: <CAK3e-EYtSezXByd_YavtAVGMk9S_i7==eAYSABLxeSn9h+tE5w@mail.gmail.com>
Subject: Re: Concurrent logins to different interfaces of same iscsi target
 and login timeout
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000034660c05a94f3365"
X-Original-Sender: Don.E.Williams@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YE+EkycA;       spf=pass
 (google.com: domain of don.e.williams@gmail.com designates
 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=don.e.williams@gmail.com;
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

--00000000000034660c05a94f3365
Content-Type: text/plain; charset="UTF-8"

Hello,

 Assuming that devmapper is running and MPIO properly configured you want
to connect to the same volume/target from different interfaces.

However in your case you aren't specifying the same interface. "default"
but they are on the same subnet.  Which typically will only use the default
NIC for that subnet.

What iSCSI target are you using?

 Regards,
Don

On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer <abawer@redhat.com> wrote:

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
> --
> You received this message because you are subscribed to the Google Groups
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com
> <https://groups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.com?utm_medium=email&utm_source=footer>
> .
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAK3e-EYtSezXByd_YavtAVGMk9S_i7%3D%3DeAYSABLxeSn9h%2BtE5w%40mail.gmail.com.

--00000000000034660c05a94f3365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>=C2=A0</div><div>=C2=A0Assuming that devmapper =
is running and MPIO properly configured you want to connect to the same vol=
ume/target from different interfaces.=C2=A0</div><div><br></div><div>Howeve=
r in your case you aren&#39;t specifying=C2=A0the same interface. &quot;def=
ault&quot;=C2=A0 but they are on the same subnet.=C2=A0 Which typically wil=
l only use the default NIC for that subnet.=C2=A0</div><div><br></div><div>=
What iSCSI target are you using?=C2=A0=C2=A0</div><div><br></div><div>=C2=
=A0Regards,</div><div>Don</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Jun 30, 2020 at 9:00 AM Amit Bawer &=
lt;<a href=3D"mailto:abawer@redhat.com">abawer@redhat.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div><span></=
span></div></div><span><span><span><span><span><span><span><span><div><span=
>[Sorry if this message is duplicated, haven&#39;t seen it is published in =
the group]</span></div><div><span><br><span dir=3D"ltr"></span> </span></di=
v></span></span></span></span></span></span></span></span><span><span><span=
><span><span><span><span><span><div><span></span></div></span></span></span=
></span></span></span></span></span><div><div><div><div dir=3D"ltr"><div>Hi=
,</div><div><br></div><div>Have couple of question regarding iscsiadm versi=
on 6.2.0.878-2:</div><div><br></div><div>1) Is it safe to have concurrent l=
ogins to the same target from different interfaces? <br></div><div>That is,=
 running the following commands in parallel:</div><div><br></div><div>iscsi=
adm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=3D"http=
://10.35.18.121:3260" target=3D"_blank">10.35.18.121:3260</a>,1 -l</div><di=
v>iscsiadm -m node -T iqn.2003-01.org.vm-18-198.iqn2 -I default -p <a href=
=3D"http://10.35.18.166:3260" target=3D"_blank">10.35.18.166:3260</a>,1 -l<=
/div><div><br></div><div>2) Is there a particular reason for the default va=
lues of=C2=A0 node.conn[0].timeo.login_<span></span>timeout and node.sessio=
n.initial_login_<span></span>retry_max?</div><div>According to comment in i=
scsid.conf it would spend 120 seconds in case of an unreachable interface l=
ogin:</div><div><br></div><div># The default node.session.initial_login_<sp=
an></span>retry_max is 8 and<br># node.conn[0].timeo.login_<span></span>tim=
eout is 15 so we have:<br>#<br># node.conn[0].timeo.login_<span></span>time=
out * node.session.initial_login_<span></span>retry_max =3D<br># =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 120 seconds<br>=
</div><div><br></div><div><br></div><div>Thanks,</div><div> Amit</div></div=
></div></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com" target=
=3D"_blank">open-iscsi+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%40googlegroups.=
com?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank">https://g=
roups.google.com/d/msgid/open-iscsi/cc3ad021-753a-4ac4-9e6f-93e8da1e19bbn%4=
0googlegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAK3e-EYtSezXByd_YavtAVGMk9S_i7%3D%3DeAYSABLxeSn9h%2B=
tE5w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://group=
s.google.com/d/msgid/open-iscsi/CAK3e-EYtSezXByd_YavtAVGMk9S_i7%3D%3DeAYSAB=
LxeSn9h%2BtE5w%40mail.gmail.com</a>.<br />

--00000000000034660c05a94f3365--
