Return-Path: <open-iscsi+bncBCEOFWXG44MRBONF5T3AKGQEX2V7NAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6311F0480
	for <lists+open-iscsi@lfdr.de>; Sat,  6 Jun 2020 05:51:22 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id p9sf10400602qtn.5
        for <lists+open-iscsi@lfdr.de>; Fri, 05 Jun 2020 20:51:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591415481; cv=pass;
        d=google.com; s=arc-20160816;
        b=V0FzWkHUh1BRvexUvlW9S3ObnIYbrU92RWjjf2j5acvGbOzMOvgbeJ8GJjgPuyOgn3
         DBZ0p5WtTHVB6yq4lpi7fZ4pXBA7ozEdadozA8M5hrugX67NBVhZPJ159nm3kgKP1wrl
         lGoZ+XagjOESn3EESNQOOpPm+gF3WJAqQ1FYBENMLbbdgq8XYOJLYNuu4vuyzivoikiZ
         d7G22OLf9hK6fGl4D9/OsdlqSw1Q0P8yJ9jA/bny9BY6dpjhU0e8qbaTYGSnfTVV77k1
         pXCL7fdALAdQb+O+nNqNUO3RwJTyK0n2L++Rhrrlk/eEao8BXzUrte3ONSmXcg3+PIRz
         dUUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-filter
         :dmarc-filter:dkim-signature;
        bh=KphVnMk+K1RMco3TF9GuP9DGnB87Ou0q9T8klaYWTEQ=;
        b=cxjGd+jaQjUfVlE1YtJeSWYs/yNsJfzipdwjUKRM7/mMiK3MS1sUkV2Ku7RFp0meDT
         4PPX63RB8Xqv485G+ZvB0Enw5MGr86AIqv3aaDxrAZQJ5ZWvO+1PYU35HUMT7OF8Ub76
         prJhHN/0ZZwutq+wn/L5G1yiKgMzKir4CXkSRMyWB7ZA3Ssz1K2rG3e3CAFUrvS9Ul/U
         hS3E/voTdKbyXMTA4Rk3YZ3VL3CE5t/khJ7FBVmhz6rTsRUyTEmbKey0tCQvlVENqmXK
         IHkrL07eKWUiLzLxhkLAQXYj9LODL5jV+K4ShPyJIEo5Bh81r8yJOHgsB6wBRyvGmS8Y
         vFeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@umn.edu header.s=google header.b=gx4Jw6yA;
       spf=pass (google.com: domain of wu000273@umn.edu designates 134.84.196.207 as permitted sender) smtp.mailfrom=wu000273@umn.edu;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=umn.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=dmarc-filter:dkim-filter:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KphVnMk+K1RMco3TF9GuP9DGnB87Ou0q9T8klaYWTEQ=;
        b=WqONQxHhc/Ff6RGApvdf8QO9mKzof3pglyMJG98N7wUsXQGDzkDVK7yvgJ1moz+uJX
         5wwu8kbhrCyfDqjA1dnn0ZPgBbKa0hm4bvi/qkRLnyKTiHBu3IKVhWmOeDKB7tgKfuHw
         nFDoTcWTS1wNYpPLykRGnWVeyE5fLjebckdLtFldRIBLZVlZUtMdUFuZUrG4cnMTj3+W
         owEVegSylJpqcitMF5Dfb71fZSIvUguggcSxe5pE45q6uNvqhYjobXpzVRf5wjXUCaYk
         XUIdhxchpvMpzw9j9ztR2KLMTSMkpNLJdHN5nXPisAJMQjXYCVx4RMr/QkrCP8rOKXlZ
         dY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:dmarc-filter:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KphVnMk+K1RMco3TF9GuP9DGnB87Ou0q9T8klaYWTEQ=;
        b=cUuaQldALZsWTFOwcI/4H+RDOZblpwRrUZrqqCUVb99HXkUMg+Va0PqVaMOgAOKgSt
         fvFD0s7gJlL9X9fbYZcPSjFGQDiWvdAe5QIEkwzrTUQOGHxrAhOiHgWUfVs2ZWLHUM28
         6rVQEPfZdD6/8lPTw60CdPtrgAAdkn/39zCJVKQYEhVOFnpELkMfu6DdEJpcVrd3n7vR
         +N2Bq0mh+GIM5AwWOCKICf73W9DhGGHCrwWmg5rAmamjTOPJpj8oEEt2pqnpFyczEmoh
         SJWenBm4PbsAwLjF63ndZOJ8y4Gsb3p9zYhoZTur/Gb6O+0ekep20rv5DKM8yn0s8v6O
         38wA==
X-Gm-Message-State: AOAM532x/IZ6TlKnTVevbl84goGb3+hLDsjHFYX5DyG2jUk0JmnuMc+2
	pfmE/jKLD7rN9+91qHnvc+U=
X-Google-Smtp-Source: ABdhPJxur+f6qtl3n01m1QBVhcZqOK+H7ONUQgY2YoCcGfMSPydBN+M+AyMZqUs59DWaR2u32UNawA==
X-Received: by 2002:ad4:47aa:: with SMTP id a10mr13221822qvz.61.1591415481753;
        Fri, 05 Jun 2020 20:51:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a3cc:: with SMTP id m195ls5377791qke.11.gmail; Fri, 05
 Jun 2020 20:51:21 -0700 (PDT)
X-Received: by 2002:a37:49d1:: with SMTP id w200mr12382593qka.153.1591415481566;
        Fri, 05 Jun 2020 20:51:21 -0700 (PDT)
Received: by 2002:a05:620a:95e:b029:f1:b630:a9ab with SMTP id w30-20020a05620a095eb02900f1b630a9abmsqkw;
        Tue, 2 Jun 2020 19:33:17 -0700 (PDT)
X-Received: by 2002:a05:6902:52b:: with SMTP id y11mr45571938ybs.465.1591151597475;
        Tue, 02 Jun 2020 19:33:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591151597; cv=none;
        d=google.com; s=arc-20160816;
        b=fT1e3I/SQgyfMyiGnByRiKZuIzv3Vw0LF5SKw4/wpWbFFRe9TMakd+hBDfqU9xnU0M
         rfgVIJFNuxHgYzKL6Kj02Ss51w1UbPnRM1SG68W+pc/6PwmDxhP/RDstukMv448fcmk6
         5UFPbbydJKmFU7rCLqvT1/m2+7fyosYHlpPyBkcRCkFZUa9R4xVD+NLv040Xqz4K2UPj
         pqgEV4s57NrWkrBjicdONsepnNe9hiBnbp/uzwwd2o6xlLIjLy51pjY+8YrlfNoleoJ5
         iBQihoneSnKOhjP0MuIP9SjpWTc4Tm7VtbbvbcFP6v9IDfzoY4H0YpTjA03vEmJ1nfja
         LRHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter:dmarc-filter;
        bh=DTZ+Srlkznsqo5FSH26mVYU3ACJjFTEc1iT2qbh8qy4=;
        b=jfzaV0LftsGv/3buEOMNhcdyC6qWz8ufacc5r1BThIhYep/XiVcR/fFsdUwY61mT/y
         GYvXlq8sFeJCjMj26Zyq7T6Mgw5VnnHXs0ANpE7XPAFkUDvRr0yAY1S61c7Qs7JdbB7w
         3BgDx28PG5Q7y8XSqYclCn6R96B8hy7++pzZab1Xfcxo8EA9AnPAj+8HP50prcEXOLKA
         Y58oJUTznQry171u63OAVUzYgJNDgHBdEQgNYgYU/18dFnU3nCYDxa8p8W81odA0QOgI
         78r4TmhezDJQWQKkUV8/FX4U+yBG81CodF2PmYiR0Qzlw4KoLsNDOS6vVHzFdD9Hn+Id
         HBbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@umn.edu header.s=google header.b=gx4Jw6yA;
       spf=pass (google.com: domain of wu000273@umn.edu designates 134.84.196.207 as permitted sender) smtp.mailfrom=wu000273@umn.edu;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=umn.edu
Received: from mta-p7.oit.umn.edu (mta-p7.oit.umn.edu. [134.84.196.207])
        by gmr-mx.google.com with ESMTPS id r143si18910ybc.5.2020.06.02.19.33.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 19:33:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of wu000273@umn.edu designates 134.84.196.207 as permitted sender) client-ip=134.84.196.207;
Received: from localhost (unknown [127.0.0.1])
	by mta-p7.oit.umn.edu (Postfix) with ESMTP id 49cCd86ylwz9vC7n
	for <open-iscsi@googlegroups.com>; Wed,  3 Jun 2020 02:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p7.oit.umn.edu ([127.0.0.1])
	by localhost (mta-p7.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eqnxe0A7dFt9 for <open-iscsi@googlegroups.com>;
	Tue,  2 Jun 2020 21:33:16 -0500 (CDT)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mta-p7.oit.umn.edu (Postfix) with ESMTPS id 49cCd83rWxz9vBt3
	for <open-iscsi@googlegroups.com>; Tue,  2 Jun 2020 21:33:16 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p7.oit.umn.edu 49cCd83rWxz9vBt3
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p7.oit.umn.edu 49cCd83rWxz9vBt3
Received: by mail-ed1-f70.google.com with SMTP id y25so344050edv.10
        for <open-iscsi@googlegroups.com>; Tue, 02 Jun 2020 19:33:16 -0700 (PDT)
X-Received: by 2002:a50:ac84:: with SMTP id x4mr30250229edc.124.1591151595398;
        Tue, 02 Jun 2020 19:33:15 -0700 (PDT)
X-Received: by 2002:a50:ac84:: with SMTP id x4mr30250214edc.124.1591151595074;
 Tue, 02 Jun 2020 19:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200528201353.14849-1-wu000273@umn.edu> <159114947917.26776.6215710664403797046.b4-ty@oracle.com>
In-Reply-To: <159114947917.26776.6215710664403797046.b4-ty@oracle.com>
From: "'Qiushi Wu' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Tue, 2 Jun 2020 21:33:04 -0500
Message-ID: <CAMV6ehHyV9PNP4+49u2uOTtTCE17vYSA_cX2+RteUFyG1OB15Q@mail.gmail.com>
Subject: Re: [PATCH] scsi: Fix reference count leak in iscsi_boot_create_kobj.
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Chris Leech <cleech@redhat.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>, Lee Duncan <lduncan@suse.com>, 
	kjlu@umn.edu, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009bd03f05a724d907"
X-Original-Sender: wu000273@umn.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@umn.edu header.s=google header.b=gx4Jw6yA;       spf=pass
 (google.com: domain of wu000273@umn.edu designates 134.84.196.207 as
 permitted sender) smtp.mailfrom=wu000273@umn.edu;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=umn.edu
X-Original-From: Qiushi Wu <wu000273@umn.edu>
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

--0000000000009bd03f05a724d907
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks=EF=BC=81

On Tue, Jun 2, 2020 at 9:32 PM Martin K. Petersen <
martin.petersen@oracle.com> wrote:

> On Thu, 28 May 2020 15:13:53 -0500, wu000273@umn.edu wrote:
>
> > kobject_init_and_add() should be handled when it return an error,
> > because kobject_init_and_add() takes reference even when it fails.
> > If this function returns an error, kobject_put() must be called to
> > properly clean up the memory associated with the object. Previous
> > commit "b8eb718348b8" fixed a similar problem. Thus replace calling
> > kfree() by calling kobject_put().
>
> Applied to 5.8/scsi-queue, thanks!
>
> [1/1] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj
>       https://git.kernel.org/mkp/scsi/c/0267ffce562c
>
> --
> Martin K. Petersen      Oracle Linux Engineering
>

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAMV6ehHyV9PNP4%2B49u2uOTtTCE17vYSA_cX2%2BRteUFyG1OB15Q%40mail.g=
mail.com.

--0000000000009bd03f05a724d907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Thanks=EF=BC=81</div></div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 2, 2020 at 9:3=
2 PM Martin K. Petersen &lt;<a href=3D"mailto:martin.petersen@oracle.com">m=
artin.petersen@oracle.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On Thu, 28 May 2020 15:13:53 -0500, <a href=3D"mailto:wu000273@umn.ed=
u" target=3D"_blank">wu000273@umn.edu</a> wrote:<br>
<br>
&gt; kobject_init_and_add() should be handled when it return an error,<br>
&gt; because kobject_init_and_add() takes reference even when it fails.<br>
&gt; If this function returns an error, kobject_put() must be called to<br>
&gt; properly clean up the memory associated with the object. Previous<br>
&gt; commit &quot;b8eb718348b8&quot; fixed a similar problem. Thus replace =
calling<br>
&gt; kfree() by calling kobject_put().<br>
<br>
Applied to 5.8/scsi-queue, thanks!<br>
<br>
[1/1] scsi: iscsi: Fix reference count leak in iscsi_boot_create_kobj<br>
=C2=A0 =C2=A0 =C2=A0 <a href=3D"https://git.kernel.org/mkp/scsi/c/0267ffce5=
62c" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.org/mkp/scsi/c=
/0267ffce562c</a><br>
<br>
-- <br>
Martin K. Petersen=C2=A0 =C2=A0 =C2=A0 Oracle Linux Engineering<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/CAMV6ehHyV9PNP4%2B49u2uOTtTCE17vYSA_cX2%2BRteUFyG1OB1=
5Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.=
google.com/d/msgid/open-iscsi/CAMV6ehHyV9PNP4%2B49u2uOTtTCE17vYSA_cX2%2BRte=
UFyG1OB15Q%40mail.gmail.com</a>.<br />

--0000000000009bd03f05a724d907--
