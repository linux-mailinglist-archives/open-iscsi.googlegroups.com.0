Return-Path: <open-iscsi+bncBCNZBX4ASILBB6742DTAKGQE5S3S56Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C7118C55
	for <lists+open-iscsi@lfdr.de>; Thu,  9 May 2019 16:51:41 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id l12sf288498oii.10
        for <lists+open-iscsi@lfdr.de>; Thu, 09 May 2019 07:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557413500; cv=pass;
        d=google.com; s=arc-20160816;
        b=JNP30CgvlZwj108+3qssRNaVm29FnUHRaf2VpBop72zbikABboos8D6VAv11G1U6bo
         0U9V+1k2MqRlapFgNNxBj4JfNk/IDBujpj6eE/SXpVLKxhPlM5gNg5mJXNHlGFR3Mh8e
         yzjQVmgUQP+wiohEXMTIe7Iwp1HqbkxlHt5RoClAXKghPricGhe6cWhwObhhcqNAb6SX
         GsIi/i39MxmGPbuDoHdhKctBBD+qJW+Fz0EOhrW4RlssZVTNDcrY8UdBpzi0chdLvb8z
         dQd2TD1ERhaX5+8uu56tuRMpckAsVa3UcnKnOGhJ7+V7PbdoGldfHXxj/pxzwUwyQb5E
         uo3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rIFGvgNHSTMXZRn0ZUVOPFSYDYBYK14VoN6HR1YYaq8=;
        b=f7omV3U/6ybd0FYgRvqNHmjpLIjpxeDQ3mEddpOeI0VTWLag6c6Sji7xBwwDe2Drn5
         kQbMs5Ua31ZeqB7trlVkc0YEFhmXnlWEHfAHGy38SvHGsnS7KRitDn3B5ZNxUBn/KOJG
         EYvbxqbSD0TFBJBQayq/+u4z+xiXL3t/68/dd/1EkyHhWcfi+wl/QaY2J79RP4nHqbI1
         pwpcX7qZYRl4Nfceeq5bTkvxl70G/BURqfxrqK0bEc+jl44ntn2s5SCZcZMwLbLoeIlA
         H2UT8wEFQ/Jv2TKa1YhEcdB8s8DmaA6FK4cjq2ljP7rXzix3eTb8i9yoXjM0vw8Son3K
         XVew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wriede@gmail.com designates 209.85.222.67 as permitted sender) smtp.mailfrom=wriede@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rIFGvgNHSTMXZRn0ZUVOPFSYDYBYK14VoN6HR1YYaq8=;
        b=NiL7WppHUbBWrpq3PKUc9lORp/0TgzhTwvucaaG0uwCAt9ui25HEW2ZbRJFvrGgOU9
         oDrkwaad4eEtuZgLtNGtYC8lS/yJpsD2oZVb5BsJ1PkGUbbXlzlbwCygacV1DOJzkJrb
         48DhSlI9gcJAzamudSz7eyRwgqZMhsqMIi6Bfp9IXLvCYT34/lPwmwaY5HrRRkdDBCNv
         5yI3XwIhwxu/FbWzq8U6jQTMGfpG9C6/C5GKcvLOmiJa+4DLxiunf0RvK0YxVVnIiwY7
         Dq5P9ZL2IqrYifqw7xIBcBsPkMO7zLzZjMqu07qocOnf7BybiqJAUMJaBms0XfMYmkiU
         J6TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rIFGvgNHSTMXZRn0ZUVOPFSYDYBYK14VoN6HR1YYaq8=;
        b=ffnE3m5xsANU0xvHaiB7Zg51V68m7kxLZ1AMw2ucs6qgR0Ij2Pg4X/LFyvVZ+4NUyy
         vv34Ds+2Gthwr0NWJDc7Y2nXVRvhVCaIpgFIN05uH3gXGtAhKTd1NoLS/SDZBqYfCx+Y
         1qalCGjgxgFIsKqA+R38qUGRq+r0pwf60JVgjsJm3Bn1kb4MkJl928mLcrySlFTaSCn2
         bVd4JYoNrHl80Lh8CACdePWWtqZ0EOhfLfczJk7bzPhHZx6kE8L9GQ/FnHdCnNesrIzE
         Fu5G8EnAJc4esgwmEfBKinyFjOEm29Fp8w16D6UBDyQ7rLqYuIByGD8zgiiha8uptjkh
         4HGQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXGGSDqn6M/uQ58DiSkRWRn1nit0ru/cLQOcK17hLottkDkfVsp
	ySddcyt7aiYXO2upyNK0+OI=
X-Google-Smtp-Source: APXvYqwFXjsTPUaQSAPFbZthmLnD0MQ+t6tz24SMqrmpFMDVHoAXvIal/bFlF2ODUVYdlZl0O2Ujiw==
X-Received: by 2002:a9d:7310:: with SMTP id e16mr2928435otk.137.1557413499998;
        Thu, 09 May 2019 07:51:39 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:df02:: with SMTP id w2ls426029oig.6.gmail; Thu, 09 May
 2019 07:51:39 -0700 (PDT)
X-Received: by 2002:aca:3603:: with SMTP id d3mr1749229oia.145.1557413499671;
        Thu, 09 May 2019 07:51:39 -0700 (PDT)
Received: by 2002:aca:ea83:0:0:0:0:0 with SMTP id i125msoih;
        Thu, 2 May 2019 12:55:31 -0700 (PDT)
X-Received: by 2002:a62:2687:: with SMTP id m129mr6338073pfm.204.1556826931330;
        Thu, 02 May 2019 12:55:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556826931; cv=none;
        d=google.com; s=arc-20160816;
        b=wUT39URnv1lu7Tm9FEWdVCko4cai1vy07si/0te4xjchihyjZSMuDy4UXKx7K5Q8cW
         fkEnnwxEq0v//7ihfcix0URPd6bSxYyj1WfFC9LFeY22dBP19htHDdrLfd/yRD7Fabox
         NpSKJ/tEh/uIFGHm9777sQSdIxmoIyJFkTlgQsJUHRpBy1AC9Lnowp+HgqXfM5xrAMbu
         01y65hBk+xeDGA5M/FqmqrdyZqbXVUdY5TZP80X1PU65fF5j1xhApcosM9hpJhOzzCG9
         alFZFGyfpm0WPz4X8ZN8R6L3MZV98uyuhxLJ0ERjvIr7STMVxZV/X/72g5AblgJ+isl/
         5jXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=y5J4hUsVg5LJIRIqRhWNWvKjtr9j3eglU6kwm1pdZLI=;
        b=idSjU1M+g1yJYcyLWzWuo3ri8SLgp0vB6PNegGn7CKezbIjgANEyqwDvJrFqv1c9z0
         mbnwP+TKMlJR2Mse6Rxklim1D1cEFxbRlbNwGDFnl+sd6zJPBt4YqZxBRm/uvGsK9F+N
         ocyCuT/B9Ev8zAXxAkgGpICOtRCv8dAjwcf7rrludji16Lh/Y8CpZvVTtpCUfgoAY8yv
         Zfnv8+0rKuBqG5C2jUaTgGJqzKwIGZ2bj6bsJLkRgh25YZvq0bESt/0vTjbA2H6TmPU0
         LhyM975jKGfu1At+Jryokrl8cYGYTQuMSJZX2daChou3PCZwmhRdiKBm8QGzJrVq9EOP
         CBng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wriede@gmail.com designates 209.85.222.67 as permitted sender) smtp.mailfrom=wriede@gmail.com
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com. [209.85.222.67])
        by gmr-mx.google.com with ESMTPS id w5si9929plq.1.2019.05.02.12.55.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 12:55:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of wriede@gmail.com designates 209.85.222.67 as permitted sender) client-ip=209.85.222.67;
Received: by mail-ua1-f67.google.com with SMTP id u34so1164905uau.7
        for <open-iscsi@googlegroups.com>; Thu, 02 May 2019 12:55:31 -0700 (PDT)
X-Received: by 2002:ab0:45d7:: with SMTP id u81mr2881038uau.66.1556826930131;
 Thu, 02 May 2019 12:55:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190501161417.32592-1-hch@lst.de> <20190501161417.32592-25-hch@lst.de>
 <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de> <20190502125312.GA2560@lst.de> <10a8c8f5-879c-685f-f43c-d5af678b2187@suse.de>
In-Reply-To: <10a8c8f5-879c-685f-f43c-d5af678b2187@suse.de>
From: Willem Riede <osst@riede.org>
Date: Thu, 2 May 2019 12:55:18 -0700
Message-ID: <CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddiiw@mail.gmail.com>
Subject: Re: [PATCH 24/24] osst: add a SPDX tag to osst.c
To: Hannes Reinecke <hare@suse.de>
Cc: Christoph Hellwig <hch@lst.de>, "James E . J . Bottomley" <jejb@linux.ibm.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Lee Duncan <lduncan@suse.com>, 
	Chris Leech <cleech@redhat.com>, Doug Gilbert <dgilbert@interlog.com>, Jens Axboe <axboe@kernel.dk>, 
	=?UTF-8?Q?Kai_M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>, 
	linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com, 
	osst-users@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
	Chriosstoph Hellwig <hch@losst.de>
Content-Type: multipart/alternative; boundary="00000000000025b8fa0587ed0462"
X-Original-Sender: wriede@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wriede@gmail.com designates 209.85.222.67 as permitted
 sender) smtp.mailfrom=wriede@gmail.com
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

--00000000000025b8fa0587ed0462
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 2, 2019 at 7:19 AM Hannes Reinecke <hare@suse.de> wrote:

> On 5/2/19 2:53 PM, Christoph Hellwig wrote:
> > On Thu, May 02, 2019 at 08:06:38AM +0200, Hannes Reinecke wrote:
> >> On 5/1/19 6:14 PM, Christoph Hellwig wrote:
> >>> osst.c is the only osst file missing licensing information.  Add a
> >>> GPLv2 tag for the default kernel license.
> >>>
> >>> Signed-off-by: Chriosstoph Hellwig <hch@losst.de>
> >
> > FYI, my s/st/osst/ on the commit message message up my signoff, this
> > should be:
> >
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> >
> Maybe it's time to kill osst.c for good ...
>

Yes. I've been thinking about doing just that. The devices it supports are
now thoroughly obsolete. The manufacturer has gone out of business. All my
test drives have broken down over time, so I can't even test any changes
any more.

Regards, Willem Riede, osst maintainer.


> Cheers,
>
> Hannes
> --
> Dr. Hannes Reinecke                Teamlead Storage & Networking
> hare@suse.de                                   +49 911 74053 688
> SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
> GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
> HRB 21284 (AG N=C3=BCrnberg)
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddiiw%40mail.gmail=
.com.
For more options, visit https://groups.google.com/d/optout.

--00000000000025b8fa0587ed0462
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif;font-size:small"><span style=3D"font-fa=
mily:Arial,Helvetica,sans-serif">On Thu, May 2, 2019 at 7:19 AM Hannes Rein=
ecke &lt;<a href=3D"mailto:hare@suse.de">hare@suse.de</a>&gt; wrote:</span>=
<br></div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On 5/2/19 2:53 PM, Christoph Hellwig wrote:<br>
&gt; On Thu, May 02, 2019 at 08:06:38AM +0200, Hannes Reinecke wrote:<br>
&gt;&gt; On 5/1/19 6:14 PM, Christoph Hellwig wrote:<br>
&gt;&gt;&gt; osst.c is the only osst file missing licensing information.=C2=
=A0 Add a<br>
&gt;&gt;&gt; GPLv2 tag for the default kernel license.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Signed-off-by: Chriosstoph Hellwig &lt;<a href=3D"mailto:hch@l=
osst.de" target=3D"_blank">hch@losst.de</a>&gt;<br>
&gt; <br>
&gt; FYI, my s/st/osst/ on the commit message message up my signoff, this<b=
r>
&gt; should be:<br>
&gt; <br>
&gt; Signed-off-by: Christoph Hellwig &lt;<a href=3D"mailto:hch@lst.de" tar=
get=3D"_blank">hch@lst.de</a>&gt;<br>
&gt; <br>
Maybe it&#39;s time to kill osst.c for good ...<br></blockquote><div><br></=
div><div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,=
sans-serif;font-size:small">Yes. I&#39;ve been thinking about doing just th=
at. The devices it supports are now thoroughly obsolete. The manufacturer h=
as gone out of business. All my test drives have broken down over time, so =
I can&#39;t even test any changes any more.</div><div dir=3D"ltr"><div clas=
s=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif">Regards, Willem Riede, osst maintainer.</div></div><div class=3D"gma=
il_quote"><br></div></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
<br>
Cheers,<br>
<br>
Hannes<br>
-- <br>
Dr. Hannes Reinecke=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Teamlead Storage &amp; Networking<br>
<a href=3D"mailto:hare@suse.de" target=3D"_blank">hare@suse.de</a>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+49 911 74053 688<br>
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg<br>
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah<br>
HRB 21284 (AG N=C3=BCrnberg)<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:open-iscsi@googlegro=
ups.com">open-iscsi@googlegroups.com</a>.<br />
Visit this group at <a href=3D"https://groups.google.com/group/open-iscsi">=
https://groups.google.com/group/open-iscsi</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddiiw%4=
0mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/open-iscsi/CAKnBiiaSyW27tCqU4i6zStF3AoLPcndSL2gjz1b17LdoFddi=
iw%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--00000000000025b8fa0587ed0462--
