Return-Path: <open-iscsi+bncBCN4TVFXUAGRB4WD5D3QKGQEOVA6PUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDE520D056
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 19:16:35 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id l32sf11987059otc.7
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 10:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593450994; cv=pass;
        d=google.com; s=arc-20160816;
        b=SKOtSwNfvU1Gb6PBFjwhU+Hih+gzigeqqLPkz/rXxGjYi7UPL3l8arswh8STBc/P+f
         FgHAyWatkHGDXPxhNKG1228d5TSqKlX3eDCpbwJKnRr2lma38k1DDoSslt7cBBJ9NGFf
         Wu7reIm2ZzAm6akyWmsXtqJnYohlBY+qV201kZGleM9NWrW3oHM07AdCkB7QP2/A5nJl
         zZgxXSdcoLGRoVluBCIBOsxvN3QDkqEBNNTfPpCXfjGE0bgRmhQlATK8YeH+K/blZ7yO
         7hjSJbDQLUb4XgLXT7HyYrYve2REKfncRqLjVU4T2yatb0+k8vMG1sAOuwxwuo7uJO0n
         pOGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ijc1eyJzj4HyJRaotFQk1QZck/bS12YNIW/T0l4UjDM=;
        b=fcKcYkIMBcy9FhnEkiw7wxMlPwLPXhXTrhmZGyowkvi4cODPedJPlk5AkHCc9f3/YX
         ocAht1GjwCY5YM4zglOUSbWkuXSyyUNH6/hMJWSjvXL1YCkfKjTVE/dJqUHtQGnpNWAP
         YE7NVyBk/Sy60FxMMABUzZBjMAhGftBoG7BUIuLP3nsnjYEKOfZLEr2+9f3c9hjxmkmB
         zBBjAHUP7pKFwDkFggH36AlsugDnKSe9rLSTfyr4oJwl9mt1ANRc4nGCyBwBdA/TL6dP
         e+h5z5y1vrPZus3aGMCUc+v+QGDex/BAz7FwfZkhlD+tAukyCLdkPGTjeo5/VXC/5ovO
         DEgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DVS9jsOi;
       spf=pass (google.com: domain of jiangshanlai@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=jiangshanlai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ijc1eyJzj4HyJRaotFQk1QZck/bS12YNIW/T0l4UjDM=;
        b=G+RY8JwyIKquBLGoiizCCOU/LlnrTDPwFXVFeQ5zKszQgNu48PSpbkblWLDEl7lEGs
         +Ey1dXdbw5zV1SyWN+Uyo2pXVn+//l32ZvpuDD3NFld1lzB1YG6C4DVgpvv/mDdyZxf7
         R2uIwfqXyjHYxkY6ZMHCH16F7uqAphCYindFShMvdXWoFMBparmLEk9sgpRNdOs73j8s
         IabP4x1rYZX0BXkqVi6/GaRQmy03f6rnaJy1ZAmGhKJWZxQoPItcxh3vjwyLTL5Y1KNP
         4ijQ48cRSOWU+iqpxUPk8cEitphHDUADlJyc1YhUaZ0fegNk/F7Dsy8iYHyKJNGKFt4y
         gfeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ijc1eyJzj4HyJRaotFQk1QZck/bS12YNIW/T0l4UjDM=;
        b=skq153BtZkZ6nlpdr0u6TUqgprkT4ap/YJifC/TxiKmLlG2N4MYpi2km/31oqE3IKr
         t95c4HsGCGR+V9WGK7e9nFHOd5+c8SpV7xlvsORwqXjoMPkqbSORyVbVWoRPcNBwj5O1
         rJMlwfcoWOCHRJbfO/oXo5Ji/9pjnKvV4EgERT9htZ+oBJ71ye0nLB8Re/iZWsyLLFHp
         kmSAJf0q9dGT+QVaBtKqYhYOgqXaeiWTX3IEcOmaRxo6C+LZ1Xb5uRGVP1uKPutp6V5B
         DZaW7lymZnIzIcCcuZOOMXy4bkr6LciR/5BFcP6gH7ga8zrlnH2FXraNkyFaBs2wV6QO
         SgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ijc1eyJzj4HyJRaotFQk1QZck/bS12YNIW/T0l4UjDM=;
        b=U5V/auxfRoYylySidgTw3JTjKE+NPBkmg2QIWvM85r64ulpgElEhfE7wH9j4mRj/2U
         1nNst2cjol2jmPAZKiMHCjGtHm2TekHi+Qgwe7QqTynm+cl6vYZ62IYAh/aFaSp9s7tY
         B4k/1ukZ1WoQ65tB1/zDx+IJHlqYz4zXWqkpSRXpreXR0gqiyc/l9NnNc6smQE2gP22W
         kxaS1y7pRh7PV8iqK3Hx6aH1Sa19VBUDHUwLpy7yGLA5jkuuiYJ2p1O1JDe+E/kNTPxL
         cWnoTtQ4s4C0irMNDCPPW9TGncGh1uAfNAdBNfExAQisUSdCHo4JEmGuTcdlZKYF3cJO
         pEuw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530lk/93HFbgSZ9y9/85v0gbvyr84TLnZfOGfNsTWU/s5oAe7F8o
	+T4kLX7aTo9E2OtF/k2moOs=
X-Google-Smtp-Source: ABdhPJyRGv/fjgS8MDRlqJrCNCHeK0lQfSUZOhjbs8JiySxUbDLTsQDtQxf//9W0LGSMDoSwbB70JQ==
X-Received: by 2002:a05:6830:1391:: with SMTP id d17mr15252861otq.48.1593450994600;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:4b14:: with SMTP id y20ls486594oia.1.gmail; Mon, 29 Jun
 2020 10:16:34 -0700 (PDT)
X-Received: by 2002:aca:4dcb:: with SMTP id a194mr13086799oib.59.1593450994302;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
Received: by 2002:aca:7241:0:b029:c1:acaf:8c17 with SMTP id p62-20020aca72410000b02900c1acaf8c17msoic;
        Sun, 28 Jun 2020 17:38:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:1043:: with SMTP id p3mr13128438ilj.245.1593391081592;
        Sun, 28 Jun 2020 17:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593391081; cv=none;
        d=google.com; s=arc-20160816;
        b=vE+a5035BkcKviQbEMgN9QVlbiImFiJcJVXs/CO98Bsjo8JpPf7MY7Y6Kr808UahUa
         sxkTsILyAH2rUkirQBMa4nQCSltj8mULUYtycLY245tHD0cXyIzq4IuZNkjBq9li3S3g
         N+GIju6AVyC/hVKbtyPrV3f+i8Mgcb2ZjoHkTJRKdzmCvsX2m3V8NUNwlcNDFZBkLc/J
         dPRFOlVGuiTqcQD/0WfyO8sCzw4iCqMPWkJmvZ2y9EFiVBMYhwrpoHSKCQKIoSDypW6j
         6ZjP4PhGD4urskAv6mlSXZq9YOkSwlUfXxuUqOBuEjbzymLwfBkZ5N85ZVaApdPgv3rg
         mSCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fKC09IE4Z/YqrIvCH2GzaIGeSq5BwtgQav6ZulQOmGE=;
        b=vDdHFEk2eoIW+ksOh3TvS8ANzp6Cy5Yo5/4yVtI9jkKsGt7VhwO++Kuxs64iSgVLoi
         PLXWChpDXxNJewQyn7oGLOW77s7tzmT+EMv5NMVRZgMbX+fMteBrTIOyp/V2MIuhsB5V
         A3TUOnYHmBo6WGE1Gm6kWqBgtNq5dIynbSdX4VnxM7wzmsULH2kQw/fJfkMltYNsdLEJ
         fVGiM1RErk8BXfLZ79YmCr91pGZY7s0PiqTBY5+eoW7qDaNcOaCQQLTHQ/++FpUv77zO
         ETchIcEugCPXiNkEkiBDmErfiOHCqwW381rY5zkNQV841O9z/uQoVANPSYpucjikyxKV
         SFxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DVS9jsOi;
       spf=pass (google.com: domain of jiangshanlai@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=jiangshanlai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id q80si1373752iod.0.2020.06.28.17.38.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 17:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiangshanlai@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id o5so15343899iow.8
        for <open-iscsi@googlegroups.com>; Sun, 28 Jun 2020 17:38:01 -0700 (PDT)
X-Received: by 2002:a5e:980f:: with SMTP id s15mr14363091ioj.47.1593391081299;
 Sun, 28 Jun 2020 17:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200611100717.27506-1-bob.liu@oracle.com> <CAJhGHyDQLuoCkjwnze_6ZOLwXPtbNxnjxOr=fqqqsR_yxB9xtA@mail.gmail.com>
 <52fa1d81-e585-37eb-55e5-0ed07ce7adc0@oracle.com>
In-Reply-To: <52fa1d81-e585-37eb-55e5-0ed07ce7adc0@oracle.com>
From: Lai Jiangshan <jiangshanlai+lkml@gmail.com>
Date: Mon, 29 Jun 2020 08:37:50 +0800
Message-ID: <CAJhGHyBPrCr3+iu-dMe69J3+tj99ea8crCGBuXc4yoStD+dEFA@mail.gmail.com>
Subject: Re: [PATCH 1/2] workqueue: don't always set __WQ_ORDERED implicitly
To: Bob Liu <bob.liu@oracle.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Tejun Heo <tj@kernel.org>, 
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org, 
	open-iscsi@googlegroups.com, lduncan@suse.com, michael.christie@oracle.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiangshanlai@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DVS9jsOi;       spf=pass
 (google.com: domain of jiangshanlai@gmail.com designates 2607:f8b0:4864:20::d44
 as permitted sender) smtp.mailfrom=jiangshanlai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 29, 2020 at 8:13 AM Bob Liu <bob.liu@oracle.com> wrote:
>
> On 6/28/20 11:54 PM, Lai Jiangshan wrote:
> > On Thu, Jun 11, 2020 at 6:29 PM Bob Liu <bob.liu@oracle.com> wrote:
> >>
> >> Current code always set 'Unbound && max_active == 1' workqueues to ordered
> >> implicitly, while this may be not an expected behaviour for some use cases.
> >>
> >> E.g some scsi and iscsi workqueues(unbound && max_active = 1) want to be bind
> >> to different cpu so as to get better isolation, but their cpumask can't be
> >> changed because WQ_ORDERED is set implicitly.
> >
> > Hello
> >
> > If I read the code correctly, the reason why their cpumask can't
> > be changed is because __WQ_ORDERED_EXPLICIT, not __WQ_ORDERED.
> >
> >>
> >> This patch adds a flag __WQ_ORDERED_DISABLE and also
> >> create_singlethread_workqueue_noorder() to offer an new option.
> >>
> >> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> >> ---
> >>  include/linux/workqueue.h | 4 ++++
> >>  kernel/workqueue.c        | 4 +++-
> >>  2 files changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
> >> index e48554e..4c86913 100644
> >> --- a/include/linux/workqueue.h
> >> +++ b/include/linux/workqueue.h
> >> @@ -344,6 +344,7 @@ enum {
> >>         __WQ_ORDERED            = 1 << 17, /* internal: workqueue is ordered */
> >>         __WQ_LEGACY             = 1 << 18, /* internal: create*_workqueue() */
> >>         __WQ_ORDERED_EXPLICIT   = 1 << 19, /* internal: alloc_ordered_workqueue() */
> >> +       __WQ_ORDERED_DISABLE    = 1 << 20, /* internal: don't set __WQ_ORDERED implicitly */
> >>
> >>         WQ_MAX_ACTIVE           = 512,    /* I like 512, better ideas? */
> >>         WQ_MAX_UNBOUND_PER_CPU  = 4,      /* 4 * #cpus for unbound wq */
> >> @@ -433,6 +434,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
> >>  #define create_singlethread_workqueue(name)                            \
> >>         alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
> >>
> >> +#define create_singlethread_workqueue_noorder(name)                    \
> >> +       alloc_workqueue("%s", WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | \
> >> +                       WQ_UNBOUND | __WQ_ORDERED_DISABLE, 1, (name))
> >
> > I think using __WQ_ORDERED without __WQ_ORDERED_EXPLICIT is what you
> > need, in which case cpumask is allowed to be changed.
> >
>
> I don't think so, see function workqueue_apply_unbound_cpumask():
>
> wq_unbound_cpumask_store()
>  > workqueue_set_unbound_cpumask()
>    > workqueue_apply_unbound_cpumask() {
>      ...
> 5276                 /* creating multiple pwqs breaks ordering guarantee */
> 5277                 if (wq->flags & __WQ_ORDERED)
> 5278                         continue;
>                           ^^^^
>                           Here will skip apply cpumask if only __WQ_ORDERED is set.

wq_unbound_cpumask_store() is for changing the cpumask of
*all* workqueues. I don't think it can be used to make
scsi and iscsi workqueues bound to different cpu.

apply_workqueue_attrs() is for changing the cpumask of the specific
workqueue, which can change the cpumask of __WQ_ORDERED workqueue
(but without __WQ_ORDERED_EXPLICIT).

>
> 5280                 ctx = apply_wqattrs_prepare(wq, wq->unbound_attrs);
>
>      }
>
> Thanks for your review.
> Bob
>
> > Just use alloc_workqueue() with __WQ_ORDERED and max_active=1. It can
> > be wrapped as a new function or macro, but I don't think> create_singlethread_workqueue_noorder() is a good name for it.
> >
> >>  extern void destroy_workqueue(struct workqueue_struct *wq);
> >>
> >>  struct workqueue_attrs *alloc_workqueue_attrs(void);
> >> diff --git a/kernel/workqueue.c b/kernel/workqueue.c
> >> index 4e01c44..2167013 100644
> >> --- a/kernel/workqueue.c
> >> +++ b/kernel/workqueue.c
> >> @@ -4237,7 +4237,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
> >>          * on NUMA.
> >>          */
> >>         if ((flags & WQ_UNBOUND) && max_active == 1)
> >> -               flags |= __WQ_ORDERED;
> >> +               /* the caller may don't want __WQ_ORDERED to be set implicitly. */
> >> +               if (!(flags & __WQ_ORDERED_DISABLE))
> >> +                       flags |= __WQ_ORDERED;
> >>
> >>         /* see the comment above the definition of WQ_POWER_EFFICIENT */
> >>         if ((flags & WQ_POWER_EFFICIENT) && wq_power_efficient)
> >> --
> >> 2.9.5
> >>
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAJhGHyBPrCr3%2Biu-dMe69J3%2Btj99ea8crCGBuXc4yoStD%2BdEFA%40mail.gmail.com.
