Return-Path: <open-iscsi+bncBCN4TVFXUAGRB4WD5D3QKGQEOVA6PUI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8014020D054
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 19:16:35 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id u93sf12618156qtd.8
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 10:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593450994; cv=pass;
        d=google.com; s=arc-20160816;
        b=UemZ85YnTJdTkIOni4de0/ALTEVKBC6DbVAdg+rFyR3zh+ZSf/LHvm7/yS2srjhAnG
         mHX52QUwXV8Mt9UI0G83NvwI7jGBWAL5VdOCX4qmfMnTpThqbeigIOFv+MiXMrBXaJTs
         DfOEHGMd9Bxwq/tJsb4Zsx3lOU2AJhwRQO55dMqLBv9RXGJJx/cKFoh2La1hrsTAYeAO
         AHcJR/QXMML58fYPLwqCz1fAb4vZFzMi7dW6FWjRjwaVybArjDWKcaARGQ0VpQN4fm5O
         nSSnKHlUDOoNP0CQGG3nx0dsx5+cf1cIQNUZ+m1TFIcm0Q+I6qFMB6pztvX/WtR5Bg22
         /Tdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3fFlyafeglQjToWyS/BuOBq4bIh8I0tOKvMa1qB7L00=;
        b=d+G7Lfs3QMg5nofcAi+jw1fuWV/qGiV4CMYan47qMqBOPGOlElcoKcHtYNs9wE7tTq
         8Fx6TP0zVQNzMUQnEtyzF0tXzo85/BrDdWaQv3mVj/Z0bYtaVEptSi4SyWeyj0Gv33Rn
         suK8uPaDQnt7fsVbx/bfvpjwNJ5i61IWQHvzbmzYIp+UQAcjEKHc4/pFGrl9pR2UL23a
         NFbwKDcTPQ9nv1B+R3/Ef2HQ0Lq3bm3BgBBvBeT3tISFwL5fzcAuatfgZwpTAricgmTM
         uEZg6q1TYqrX+6XRFq/0Rh7FpledSuYdsDEIKlDHS7rjagxdKblH0MQP9RfrFobktk9E
         cSWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RySqVmaj;
       spf=pass (google.com: domain of jiangshanlai@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jiangshanlai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3fFlyafeglQjToWyS/BuOBq4bIh8I0tOKvMa1qB7L00=;
        b=YYQ+VC9PsSBIW+6mpaR3cHFafkC4prztosEgXa7r+dDkgmezSgWmpU4MSlKvy5QJ/i
         70XPBcWpzlSAxR/Wd4XyzkDqOQ4mOcNeunufWekO0ZXuBuaJp71dd850aUZ04sY8kNJJ
         KK6FjUwQnZbPZs7ft7Ns4EPYp4ZKQCdBCxBYzfYkXt7muu1z44yRWC2oR9DGTyrOqQlx
         8sKiR3ZoebyXnF1Zdo0hWsd/xxEyafOxOiuC2tM9y/JVrNIBo25sh9QbMC8q1/6M+hsv
         mqYXJ/aYbLT74XerZ8lloXCs3obFUtG50tcHgnwG9tGjQJ0syxkpn6EYp2AX9Ik2jDQp
         qSYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fFlyafeglQjToWyS/BuOBq4bIh8I0tOKvMa1qB7L00=;
        b=JpZy/KU5YqXHJ9I0z1Q52VD4AP6ugWkjZqOAaxwfv60pTiYomTKlYRNR28QDDA6g+g
         54OdR6tbG7xL/ROJzNWvdQ+nnoOk+IDMjBiIBF6NtcdzJOXTWsNEOfggrp81bIwYQ0z6
         k2yBsqShPJDeH2eHplgRe/f7WIfFLLgpCm7a4UPI5btEujr1CFXuDnFUKxAOHQNt3E4e
         +Xah0AZGbMpJvmAk4K2k2yrRpB7STUfCBDfGAMWvsplf5y2pK+RsSlafV7qgoTBYhA3l
         +fXGmzpPBW4XFv8MIPQj1ZcuDB843/GCKh1EE7GxEKH4uuYbMq52p3CebwuB3Yw3cA2s
         L9Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3fFlyafeglQjToWyS/BuOBq4bIh8I0tOKvMa1qB7L00=;
        b=Ngwb6Cjy2d+l6SK+WvTq11PvAztt+2SOye9lwdnWB2sOTEC8aTx1mENLq8Z70bXUiH
         gMgAP8CsSReHnkZQiX+FvtaCaJ2kWsWHJTUdJJsNVoO2XDtyIQRdzKemmuHaXOmLpDzP
         YQofB5CHmvxw76MKT9CnKWBQq/SeIfL9lX3cCYu0L8ZPGvxHQ1JyF6Hq7tV5/A1pb6pn
         UNvJCkDIcTXEb/y3dT66+US84iU3lVk0Mf3QhRmkRHcJ4P5DUngfP1sZwQOyMOiLUfTZ
         dV8eka+4J5GTtVjbMItKUU0n3uGQbn2W6Jgna8o81OjNRI9gOS+9YXVpHUDHhvmRG2Bv
         fVag==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533pzDGDheMnJBCDP0xqBB7cNRu9MRrlBZcvzx17i4SpkDTmk0N9
	26CVTiCvW6MADqUZapmjnFM=
X-Google-Smtp-Source: ABdhPJwi8/fN4unlN/lrU6aWtiho2QTADXqvMCT5ZWHcp/D5UeQPDx8Zfd1J8g4UKjwg3Fq9tbqG8g==
X-Received: by 2002:a0c:eec5:: with SMTP id h5mr14363175qvs.69.1593450994600;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:ea09:: with SMTP id f9ls8315772qkg.1.gmail; Mon, 29 Jun
 2020 10:16:34 -0700 (PDT)
X-Received: by 2002:a05:620a:81c:: with SMTP id s28mr15195736qks.133.1593450994253;
        Mon, 29 Jun 2020 10:16:34 -0700 (PDT)
Received: by 2002:a37:6506:0:b029:f2:356:9762 with SMTP id z6-20020a3765060000b02900f203569762msqkb;
        Sun, 28 Jun 2020 08:54:50 -0700 (PDT)
X-Received: by 2002:a05:6000:100c:: with SMTP id a12mr14413076wrx.81.1593359690437;
        Sun, 28 Jun 2020 08:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593359690; cv=none;
        d=google.com; s=arc-20160816;
        b=fudHdFLwv5Zgdrn3nwLaGUD3CycO7Yf2KSmTn4YRjCVKTVUGli/9Xz8NgnsSRMnf6H
         6WFw4dHb8ShUYqmrmYwuItGRBqaLt2mQDEXgTjdVYQFGeM4WTDsOWv0EVRlXC3k9VHYp
         aF4CaMX49xgDmCGp2jykQs0rsupZ0NTB4Ewb5kV2WJ+Mdq+FLdavr4Xgiyv2gtAIwQDH
         ytJVxRxdjHXQu2ukgWGnbJ+Q7zqkJO5NzglB6WcfguzKyST/bcPzcpjC7vgddFSWxOlM
         11PmDb5k4QJmnXb92+n1YRxOjGW5O3uIWdc4GmHrCwjpsPJsxFD5S+QGy0qhMnjG5c98
         dvZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sEfpGNC1wgHInVbFM/yJkO/397CoGeIpiR31ps+GqnY=;
        b=Qa5J2Ylipy/vS70XJxxOO/97ytAFXVxAqssdsIJbU3PLGD0D3Y0UfMNM+NETa0vcLJ
         uxkY3ZfDrlKgzAVEgI8wN6nzDS3O+Y1tg9qO7TeK87x5Eavfk49ju9nnXpSq+ZH+yaji
         rwMY9HI30/PcissQ5CBl+htivjspRN0axqliPg+MUo9eex/nNmFyh1LjTHr2T27sBbC3
         cefSheHXj4OMwH2nSZm8vlXqf03LJAaxwVwDYsTWaergxslqRdS2xJVAMS8Hqhe76E3Q
         BzEJNInle2qKUf+pUskJc9iItp/FSI2Lo2HEX6VVFYoz81Pzy69dOo7Z8wsD2nxi8isU
         gcFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RySqVmaj;
       spf=pass (google.com: domain of jiangshanlai@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jiangshanlai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id g141si1085272wmg.0.2020.06.28.08.54.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 08:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiangshanlai@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id f18so6125877wrs.0
        for <open-iscsi@googlegroups.com>; Sun, 28 Jun 2020 08:54:50 -0700 (PDT)
X-Received: by 2002:a5d:55c9:: with SMTP id i9mr13066890wrw.404.1593359690077;
 Sun, 28 Jun 2020 08:54:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200611100717.27506-1-bob.liu@oracle.com>
In-Reply-To: <20200611100717.27506-1-bob.liu@oracle.com>
From: Lai Jiangshan <jiangshanlai+lkml@gmail.com>
Date: Sun, 28 Jun 2020 23:54:38 +0800
Message-ID: <CAJhGHyDQLuoCkjwnze_6ZOLwXPtbNxnjxOr=fqqqsR_yxB9xtA@mail.gmail.com>
Subject: Re: [PATCH 1/2] workqueue: don't always set __WQ_ORDERED implicitly
To: Bob Liu <bob.liu@oracle.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Tejun Heo <tj@kernel.org>, 
	martin.petersen@oracle.com, linux-scsi@vger.kernel.org, 
	open-iscsi@googlegroups.com, lduncan@suse.com, michael.christie@oracle.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiangshanlai@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RySqVmaj;       spf=pass
 (google.com: domain of jiangshanlai@gmail.com designates 2a00:1450:4864:20::444
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

On Thu, Jun 11, 2020 at 6:29 PM Bob Liu <bob.liu@oracle.com> wrote:
>
> Current code always set 'Unbound && max_active == 1' workqueues to ordered
> implicitly, while this may be not an expected behaviour for some use cases.
>
> E.g some scsi and iscsi workqueues(unbound && max_active = 1) want to be bind
> to different cpu so as to get better isolation, but their cpumask can't be
> changed because WQ_ORDERED is set implicitly.

Hello

If I read the code correctly, the reason why their cpumask can't
be changed is because __WQ_ORDERED_EXPLICIT, not __WQ_ORDERED.

>
> This patch adds a flag __WQ_ORDERED_DISABLE and also
> create_singlethread_workqueue_noorder() to offer an new option.
>
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>  include/linux/workqueue.h | 4 ++++
>  kernel/workqueue.c        | 4 +++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
> index e48554e..4c86913 100644
> --- a/include/linux/workqueue.h
> +++ b/include/linux/workqueue.h
> @@ -344,6 +344,7 @@ enum {
>         __WQ_ORDERED            = 1 << 17, /* internal: workqueue is ordered */
>         __WQ_LEGACY             = 1 << 18, /* internal: create*_workqueue() */
>         __WQ_ORDERED_EXPLICIT   = 1 << 19, /* internal: alloc_ordered_workqueue() */
> +       __WQ_ORDERED_DISABLE    = 1 << 20, /* internal: don't set __WQ_ORDERED implicitly */
>
>         WQ_MAX_ACTIVE           = 512,    /* I like 512, better ideas? */
>         WQ_MAX_UNBOUND_PER_CPU  = 4,      /* 4 * #cpus for unbound wq */
> @@ -433,6 +434,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>  #define create_singlethread_workqueue(name)                            \
>         alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
>
> +#define create_singlethread_workqueue_noorder(name)                    \
> +       alloc_workqueue("%s", WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | \
> +                       WQ_UNBOUND | __WQ_ORDERED_DISABLE, 1, (name))

I think using __WQ_ORDERED without __WQ_ORDERED_EXPLICIT is what you
need, in which case cpumask is allowed to be changed.

Just use alloc_workqueue() with __WQ_ORDERED and max_active=1. It can
be wrapped as a new function or macro, but I don't think
create_singlethread_workqueue_noorder() is a good name for it.

>  extern void destroy_workqueue(struct workqueue_struct *wq);
>
>  struct workqueue_attrs *alloc_workqueue_attrs(void);
> diff --git a/kernel/workqueue.c b/kernel/workqueue.c
> index 4e01c44..2167013 100644
> --- a/kernel/workqueue.c
> +++ b/kernel/workqueue.c
> @@ -4237,7 +4237,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>          * on NUMA.
>          */
>         if ((flags & WQ_UNBOUND) && max_active == 1)
> -               flags |= __WQ_ORDERED;
> +               /* the caller may don't want __WQ_ORDERED to be set implicitly. */
> +               if (!(flags & __WQ_ORDERED_DISABLE))
> +                       flags |= __WQ_ORDERED;
>
>         /* see the comment above the definition of WQ_POWER_EFFICIENT */
>         if ((flags & WQ_POWER_EFFICIENT) && wq_power_efficient)
> --
> 2.9.5
>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAJhGHyDQLuoCkjwnze_6ZOLwXPtbNxnjxOr%3DfqqqsR_yxB9xtA%40mail.gmail.com.
