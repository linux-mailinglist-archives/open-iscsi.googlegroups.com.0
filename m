Return-Path: <open-iscsi+bncBDQ7VBVATUHBBAPCS6FQMGQEQIBY5RI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BE842ADDC
	for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 22:33:06 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id k21-20020a9d7015000000b0054d5b451decsf377136otj.3
        for <lists+open-iscsi@lfdr.de>; Tue, 12 Oct 2021 13:33:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634070785; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRsroMVTyWF4iKLQ3lUaEscl3XHp8tKIxRRhlyeG5V/hnVqZkPSjAOi1z53WeasMUV
         tG5XGzPt1GH9jkBnL8BWQoJ346C7+APEybeg6r6NrJuROwvB2LHpuZHVVwQIF9YuQu8F
         Fu1qUj0CYXSSqs5aM4ljGyB6vrG82Z62LZAs15cWOHwZUEEIQqlNe/Fkwt7+S9cQf6UA
         1AZta2gicp3H8dM5mY3x5z9tl+1BVRzxgVYeA1cSSpGT9evgnf9dgIIU4XquERhDc5gg
         11wihUImG53wFPIgKeyZx+QbrNqNgKovjrBrGqFXZBC6OxG0uWJb8RLxgxdAfEB8hNpK
         TDng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:sender:dkim-signature;
        bh=89vSY5kZJEayRKwIuwiBbpXzsdMr+ev4azOaKTdc6x0=;
        b=Iquj2LWn4ZVSHBAjUsJegCa+5HLBD1sGts11KzSyu36E/tCKFuo2qBI1KeK9R1jdk9
         dhJZUz9gcOaz8vGjlQTzATvJk6Yj8BmY4QGD9DYEXEhwqYqgBxJst2fqtSS2VfJaIKxK
         /dka5mwJWot6eQ5qWAxf9dWa3tiJXzLMMvlWnjoyDufYrkKdthnz/hdWDdUU8t21NSJZ
         hNlBHPMZc7ofQ8CD+WvNC1wsPkqhN0E3jXjxh16v2S0cr9cJE9gO+84BZ+gzdjXsx/Ji
         9dAABS2Yh9CmWNzoXdkKsSyqF4k6CtBy7M2zYxJwAEUSfKioQndPQRtPeH7QMp0WNlfq
         oA/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@smartx-com.20210112.gappssmtp.com header.s=20210112 header.b=M23AiDiW;
       spf=neutral (google.com: 2607:f8b0:4864:20::e32 is neither permitted nor denied by best guess record for domain of fengli@smartx.com) smtp.mailfrom=fengli@smartx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=89vSY5kZJEayRKwIuwiBbpXzsdMr+ev4azOaKTdc6x0=;
        b=rZx0kJ/IBVTl4wMsFwJ4qmgWWCUfhd/2qBV3AnnqAyjzcmiSm642EL8mKeRqRJxEjr
         N4paiFJs3cwTf2j2eYCZSuPrVaYVoQLllZutpL35RKVrsPJKPdZXUg/Taf/TglhwKgfl
         Gmem/4ux28iBqc4WmjD9l7V7JI0vQkJdCsjyIzyyQ8LKQdQld1YI25jHMn/mVcD2tM0W
         3l5SqnvNZIYXFcE24m+Ol9OQuIe2Uuun1tGkyx1yqRjroqOytgf5KdjMothWsHMByBnq
         Nyytbtx8PsNqCbuNciC49GiXpbkUbUz6EBXKA0S7qCWWTBfRoZITUULVI7+uYsbLinia
         l10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=89vSY5kZJEayRKwIuwiBbpXzsdMr+ev4azOaKTdc6x0=;
        b=E81GpxRd0HCkxHolX5T9PQ+EwOS228eEfAQ69+csJfycGOgDI4X18KD+4EiMzUVyuX
         tmy9DHEFiyBrNenrsjcI6jnDyLYdQXBkFHg5SjQ1iHrQHHLkMoTnjdSNoYp0Y6M4Q79B
         KW7FXu5Iz+595HA4TUXg3lbZ4bZvqI3e47cq8QK2HgUtXzXcIX8SwyeGG1vHPIC5kw/2
         PxRJaMNPKawA5zG3+Oa15YY9+SlJxCW3SJZ/ot2EE2E/KwmJ029ptqXn34Cfze4DJgLx
         4gx++ZdH/SkYoYPMD6e1ZmrpahDBb9fE3qSCqHMU0YTrSwEawGKfjdhM+KwS0MiL3AfT
         NfkA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5301x1EKJVDsossByOIGFMibw2v/lwfNbIB+r4fREfMdJOhx10KQ
	WpG1WIrN2Ib8AfowqzJ1EeM=
X-Google-Smtp-Source: ABdhPJw2Dn3Sfy0KG97Vo4SRELZQrVR1uFWXOdc3vhiVHR6ovFa8r09RypS7WWzy+KbcEV4yyq+GtQ==
X-Received: by 2002:a9d:384:: with SMTP id f4mr26982536otf.94.1634070785329;
        Tue, 12 Oct 2021 13:33:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6155:: with SMTP id c21ls30977otk.10.gmail; Tue, 12 Oct
 2021 13:33:05 -0700 (PDT)
X-Received: by 2002:a9d:1ab:: with SMTP id e40mr18420601ote.281.1634070785110;
        Tue, 12 Oct 2021 13:33:05 -0700 (PDT)
Received: by 2002:aca:2802:0:b0:25a:47c7:7cd9 with SMTP id 5614622812f47-28fd0833e9bmsb6e;
        Sun, 10 Oct 2021 19:04:02 -0700 (PDT)
X-Received: by 2002:aa7:9111:0:b0:44c:c206:ad9a with SMTP id 17-20020aa79111000000b0044cc206ad9amr21494507pfh.72.1633917841548;
        Sun, 10 Oct 2021 19:04:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633917841; cv=none;
        d=google.com; s=arc-20160816;
        b=pPupsIuUbEFs+vsBzd/P8z1UHEhTOHLy40mjldeileU7U2cdKicdB/noWNkhEgbycO
         zMehMJ7CmkckGTXpYdzhpjJUYN1eHXfY/PolACcXWBPh3hMJxhNDqlWsW7L3poZYWeUz
         FUg1xTzglVvguL78Tcv67R3UFtloadL1CXZzJuuc4I0lUALb4xnRH245IjAoZ/JarCc8
         PfG5YC5rvxs7zYCHOLqeH7+SQUnK0DuPAt4WckhUqvweROpIFXY/T1cLjhRJxuvdpxL+
         xj/glRyS87R9QeHdTxLoEpKL+qVvwDtQILtAzBCoLoGYwkoHjB4t5jQpwilqCLzx8ALs
         ghlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bfZxBQqSlnMz3lcuj1XK/231rEN9kT4LRHRvZ4eNtbk=;
        b=Qpas4vn9WmM11F/vY3wieMcS8T5aDaGPP/BaT++JwR1HllZM4iC3sVab2CeRYh+qRL
         +xzTUqLnHKyVsuEJNrTWKxHJIgubYX1j3PGFQo+VPhiVNk0jXOvtlLbhCZl5k+MMfMPw
         5m4AkVagh8GP86nk4g5s6S6mw6cDdeDwV3B9km9l7tKP94s0Ilri/KHbMmo0EatfNXDY
         QZtzYGnEouclejUFQoXoLokdn+ZZeYdrH2W5KUfHnQIHbn38nIv7y4C1zO0H4MYCXIp7
         Js7h1Amy9gfEpb6taYTuj0cPK4vJUqoMnP5TGvph0lMaANNiEAOupEgdqgzgXk5EIVYX
         kJSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@smartx-com.20210112.gappssmtp.com header.s=20210112 header.b=M23AiDiW;
       spf=neutral (google.com: 2607:f8b0:4864:20::e32 is neither permitted nor denied by best guess record for domain of fengli@smartx.com) smtp.mailfrom=fengli@smartx.com
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com. [2607:f8b0:4864:20::e32])
        by gmr-mx.google.com with ESMTPS id u5si1866369pji.0.2021.10.10.19.04.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Oct 2021 19:04:01 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::e32 is neither permitted nor denied by best guess record for domain of fengli@smartx.com) client-ip=2607:f8b0:4864:20::e32;
Received: by mail-vs1-xe32.google.com with SMTP id p18so17205797vsu.7
        for <open-iscsi@googlegroups.com>; Sun, 10 Oct 2021 19:04:01 -0700 (PDT)
X-Received: by 2002:a67:ee4b:: with SMTP id g11mr18874850vsp.5.1633917841003;
 Sun, 10 Oct 2021 19:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <20211010071947.2002025-1-fengli@smartx.com> <95db5f3d-99dd-ddbb-ea44-8cd37d92ce0f@oracle.com>
In-Reply-To: <95db5f3d-99dd-ddbb-ea44-8cd37d92ce0f@oracle.com>
From: Li Feng <fengli@smartx.com>
Date: Mon, 11 Oct 2021 10:03:49 +0800
Message-ID: <CAHckoCxCRZXXcSp3A+i+vxzM8AomDtAohVYDy1FmARJzB2SrCQ@mail.gmail.com>
Subject: Re: [PATCH] iscsi_tcp: fix the NULL pointer dereference
To: michael.christie@oracle.com
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	"open list:ISCSI" <open-iscsi@googlegroups.com>, 
	"open list:ISCSI" <linux-scsi@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Gulam Mohamed <gulam.mohamed@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: fengli@smartx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@smartx-com.20210112.gappssmtp.com header.s=20210112
 header.b=M23AiDiW;       spf=neutral (google.com: 2607:f8b0:4864:20::e32 is
 neither permitted nor denied by best guess record for domain of
 fengli@smartx.com) smtp.mailfrom=fengli@smartx.com
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

Thanks,
Feng Li

<michael.christie@oracle.com> =E4=BA=8E2021=E5=B9=B410=E6=9C=8811=E6=97=A5=
=E5=91=A8=E4=B8=80 =E4=B8=8A=E5=8D=8812:05=E5=86=99=E9=81=93=EF=BC=9A
>
> On 10/10/21 2:19 AM, Li Feng wrote:
> >  drivers/scsi/iscsi_tcp.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> > index 1bc37593c88f..2ec1405d272d 100644
> > --- a/drivers/scsi/iscsi_tcp.c
> > +++ b/drivers/scsi/iscsi_tcp.c
> > @@ -724,6 +724,8 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi=
_cls_conn *cls_conn,
> >               break;
> >       case ISCSI_PARAM_DATADGST_EN:
> >               iscsi_set_param(cls_conn, param, buf, buflen);
> > +             if (!tcp_sw_conn || !tcp_sw_conn->sock)
> > +                     return -ENOTCONN;
> >               tcp_sw_conn->sendpage =3D conn->datadgst_en ?
> >                       sock_no_sendpage : tcp_sw_conn->sock->ops->sendpa=
ge;
> >               break;
> >
>
> Hi,
>
> Thanks for the patch. This was supposed to be fixed in:
>
> commit 9e67600ed6b8565da4b85698ec659b5879a6c1c6
> Author: Gulam Mohamed <gulam.mohamed@oracle.com>
> Date:   Thu Mar 25 09:32:48 2021 +0000
>
>     scsi: iscsi: Fix race condition between login and sync thread
>
> because it was not supposed to allow set_param to be called on
> an unbound connection. However, it looks like there was a mistake in
> the patch:
>
>                 err =3D transport->set_param(conn, ev->u.set_param.param,
>                                            data, ev->u.set_param.len);
> +               if ((conn->state =3D=3D ISCSI_CONN_BOUND) ||
> +                       (conn->state =3D=3D ISCSI_CONN_UP)) {
> +                       err =3D transport->set_param(conn, ev->u.set_para=
m.param,
> +                                       data, ev->u.set_param.len);
> +               } else {
> +                       return -ENOTCONN;
> +               }
>
>
> and that first set_param call was supposed to be deleted and
> replaced with the one that was added in the conn->state check.
>
> We should just need a patch to remove that first set_param call.

Yes, I have checked the upstream code, this is an obvious mistake here.
I encountered this issue on 5.11.12-300.fc34.x86_64, it doesn't
include this patch,
so I check the pointer like my patch.
Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/CAHckoCxCRZXXcSp3A%2Bi%2BvxzM8AomDtAohVYDy1FmARJzB2SrCQ%40mail.g=
mail.com.
