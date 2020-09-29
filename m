Return-Path: <open-iscsi+bncBC3PHRO5QEGBBEH7Z35QKGQECR7BUNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F77527DC8A
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Sep 2020 01:13:22 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id w92sf4206379qte.19
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Sep 2020 16:13:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601421201; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2EPcpvD4j+0ef35CJuQOm1yhnoliEmeqMNUHvm9MGs8UDCnUcOlg8IcT507fK+6bP
         dZGEHkfaAurLz+uPG1UFb71AoVoXnBTgI8criwrNODp5ikOJaJFqRaElJuAAG135NMJc
         x70anPwU7jgc/qow/Znv0fMbJmh3W+F7htt0RmcktsJKrt+nFDWZSd6nOzDEqmYZoTj9
         0GLakSPNtbisxWFTcdH3Tbl9rsrYB2fC8xtnKy396Au2RQd5Geif0j+npNc8JuBr12ml
         cWNuMxfLQ8F+/+6tgKp5lc2oBOySQtC8EnpqdYChGxlANa1JxpIG/tFVCaWwTMZxks4z
         FzGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=OTcx/S5zS+siyaw7qq9R7QnqJwTYA0T4A69a/1t2CHQ=;
        b=ErLKW4zNqy9b7Ejcp8SOnvRsB2OYdWcz0lRysE6NE1vHV8/nuAJMCKiPW1PC7wNHfq
         5P51PZRMjJtJ5eWxrf7UUJzCi7D7uAtjZUEP3W695+cgFTklu82UcPAd86fYj8YLfYOT
         WaT/+lr6A6GVryBfNktr3rhkwl1zUUbnMGgjAYhb4SEIWIfjfyJQOmNgKKQ4zTRHOgJU
         2CkBuRRAXmZAEUGNbmOIdIibjLCWcHj+RmIqXpEn1saN417eVVWFGwwgtZg243li5uQQ
         KxdakuLikwBP9T9rP6vj+4bSDp6a6NpHCXJH31m3v8/BxWJC+VdGwjOPMDLG4v+AuPqa
         EwYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Tg/uX+BC";
       spf=pass (google.com: domain of marc.c.dionne@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=marc.c.dionne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OTcx/S5zS+siyaw7qq9R7QnqJwTYA0T4A69a/1t2CHQ=;
        b=KZ8jJspxQDEQ9v+FOXsgDz/ApXkreBmzqzbqgjvwoEKm306MHSC42EPDhjJ3SBw4Ou
         AxVPxcGV2LU6PQT/t/jds+OiYXm4EA6R8jGlWu9Lqf8JErzk17AJHGhCaARIlGstcTU1
         BjzwGFgc0WULsvLoJ1MVnu3DRqSYUyRLN4mcEze39RmWYhsMKeXtTpfLJgrR9f8/7J1u
         EgGaiSRLCin/swh7Yik2unb0DIvzl+VJdJSW1Y5YHoe85vmFX2nlPbAgvXxgc45L2c1l
         m8QLvjRkDhbQPMVuNfhctRlYeQevn2XZM75lHkZhpMZ53TlGMXb0sY9wdFPJmeSxtNsK
         YkBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OTcx/S5zS+siyaw7qq9R7QnqJwTYA0T4A69a/1t2CHQ=;
        b=fUL7N6FRrOSHxupeEZb2izdW2ASp/fixSVzNN3gB9Mln0hilk7fCyrjl43tykQtogW
         pYi88iOTYYfR3cX3cycqcDw8BaHDhyZUtHjBtd23AYQNyjo+UTBkUeboRYi7mZENEUli
         vrOuJLPmr90gQLPLLl66q9mqDfu2aEjmSxfoAlAW/+fDERpVy2Vg4UsvazsEmD79bOEc
         5UfdIr287sionod6RHS5lskM8owgaYHFuBIkg14JQzmN5ummUuZ80EEpgritrcIm/NH3
         e5NsMmzalDLQvWTTNEzMjQLp1HXtobY0qeacIgVQnc20V2ZdinWjZurdmXE38pySvshO
         KyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OTcx/S5zS+siyaw7qq9R7QnqJwTYA0T4A69a/1t2CHQ=;
        b=RgT5RU5DF4HWCIcGH9IYIET9PJcgPA2e1m/A3YYOj6SEPW6a2bbZkatEaKEF4rzwLN
         XhpYVq2IxiOmFfZCQARr4ZrkuIweN7N0VXaw5ldVspEsd4tKyaZ/A4mTro4PYtH5jv47
         3s7yIynA3Vc6Oy7a7Kv1bL1GkWzGTyfnDwubgTUdtdsCz/iK0PrHEb06K0giKQ277LEO
         hkrsoUBhlqv26EsAEyf7j/n5BmyJMfwN31pyg2I7oeNy1RePp3rGbiNVfHYRkJILIe3N
         oZmVMqL6cgiAcsJu3fINfMVwn8/aAnoAsyaMwtMHtEtKIwwoLbkwDkyJo9tqlq5G/Uwk
         Y53A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5317ARCEL0lw1bV7Ho6cg2rc7SAhYTuIMWZt8Rjd3qxTMB8Hm1WQ
	ljgJdxWvvQ8kbmk3RzLDj0Y=
X-Google-Smtp-Source: ABdhPJx45YOg97CnqYMioVLh9TihwHo4YPRZpecy68yuxl2UCa0AlGaVUyOWvEJeNlTwIEomFQuvSQ==
X-Received: by 2002:a05:620a:c90:: with SMTP id q16mr6910748qki.194.1601421201091;
        Tue, 29 Sep 2020 16:13:21 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:21a8:: with SMTP id l37ls206600qtc.7.gmail; Tue, 29 Sep
 2020 16:13:20 -0700 (PDT)
X-Received: by 2002:ac8:4f44:: with SMTP id i4mr5879984qtw.189.1601421200788;
        Tue, 29 Sep 2020 16:13:20 -0700 (PDT)
Received: by 2002:a37:a088:0:b029:114:f161:d5f9 with SMTP id j130-20020a37a0880000b0290114f161d5f9msqke;
        Tue, 29 Sep 2020 12:48:45 -0700 (PDT)
X-Received: by 2002:a05:6512:2e5:: with SMTP id m5mr1688997lfq.598.1601408924625;
        Tue, 29 Sep 2020 12:48:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601408924; cv=none;
        d=google.com; s=arc-20160816;
        b=akthmugj6v/SZM9TfJ/aYO9hfd7U62PCl/POjhLAEiFcCechJRCi08+mLB6cYynq8v
         MoLT9LRbgXREaRS+q4Zsq3dfxSY+7ZHlN2wwroHM74lJgbqML+x8aYUURAYUjERChFd9
         ZKPytMsJbAo6UXz0/GoMwTyfuXEtt6XWtj5PSgwVcYsdaX6VH4dwdad8tqyNyumHrPG+
         V/EIgecJs2G6JFCC8/xkUQ9lFmEkz7upfZfUvLwPAo9n+H1xs2iQXrBSGGmlX1EzvNec
         sAUr6FFV85ZRRKnmojvB5tNChB1K3pGqFR+dAZxSrH9f/34j5KKIanekfODgnys6I6Mh
         Busw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EfV9n3jCAY5e7p3ZDi51z+9ZxQ5VOAS4PnGR9TPcCJE=;
        b=drl/o7h60aCNkrGeabxWkY/LfPYQ2YLGEuswq/TY0VfbQ+9+5qAEuXBCszj3RVfpgL
         uHAi3MtB5CiY4iJclL4kKAR5orTHQaRq8kgJPBWOQGD9gAkwihMt9layg2s7twD7TRfI
         c+lmb5bS9UVI3zmwScX/0/XzbdwFBu34+HQl0zH/y7q3xYs9QM9ho8V5CR8SsxDkBnvZ
         Vnxhg3zrOdTqx/EIKBB//pid7eW4drlzdIKeTdW8Ra7/alRBA6hEeM5pArWuDztC7z8Z
         ECrhm2bd8qWaQQfGBhoch5gpLqcq1TkQFyt1CkYLBPZdI+tKnsEjSZvgPJRbYhYpvg+c
         gWXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Tg/uX+BC";
       spf=pass (google.com: domain of marc.c.dionne@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=marc.c.dionne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d1si147413lfa.11.2020.09.29.12.48.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:48:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of marc.c.dionne@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id h26so6773566ejq.3
        for <open-iscsi@googlegroups.com>; Tue, 29 Sep 2020 12:48:44 -0700 (PDT)
X-Received: by 2002:a17:906:fa0a:: with SMTP id lo10mr3262551ejb.22.1601408924109;
 Tue, 29 Sep 2020 12:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200928043329.606781-1-mark.mielke@gmail.com>
In-Reply-To: <20200928043329.606781-1-mark.mielke@gmail.com>
From: Marc Dionne <marc.c.dionne@gmail.com>
Date: Tue, 29 Sep 2020 16:48:32 -0300
Message-ID: <CAB9dFdvK2y==KjSfL6m+XOzBDP8kJmQX33Jf7m+5Ys762FPx2w@mail.gmail.com>
Subject: Re: [PATCH] iscsi: iscsi_tcp: Avoid holding spinlock while calling getpeername
To: Mark Mielke <mark.mielke@gmail.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: marc.c.dionne@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Tg/uX+BC";       spf=pass
 (google.com: domain of marc.c.dionne@gmail.com designates 2a00:1450:4864:20::641
 as permitted sender) smtp.mailfrom=marc.c.dionne@gmail.com;       dmarc=pass
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

On Mon, Sep 28, 2020 at 1:34 AM Mark Mielke <mark.mielke@gmail.com> wrote:
>
> Kernel may fail to boot or devices may fail to come up when
> initializing iscsi_tcp devices starting with Linux 5.8.
>
> Marc Dionne identified the cause in RHBZ#1877345.
>
> Commit a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param
> libiscsi function") introduced getpeername() within the session spinlock.
>
> Commit 1b66d253610c ("bpf: Add get{peer, sock}name attach types for
> sock_addr") introduced BPF_CGROUP_RUN_SA_PROG_LOCK() within getpeername,
> which acquires a mutex and when used from iscsi_tcp devices can now lead
> to "BUG: scheduling while atomic:" and subsequent damage.
>
> This commit ensures that the spinlock is released before calling
> getpeername() or getsockname(). sock_hold() and sock_put() are
> used to ensure that the socket reference is preserved until after
> the getpeername() or getsockname() complete.
>
> Reported-by: Marc Dionne <marc.c.dionne@gmail.com>
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=1877345
> Link: https://lkml.org/lkml/2020/7/28/1085
> Link: https://lkml.org/lkml/2020/8/31/459
> Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
> Fixes: 1b66d253610c ("bpf: Add get{peer, sock}name attach types for sock_addr")
> Signed-off-by: Mark Mielke <mark.mielke@gmail.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/scsi/iscsi_tcp.c | 22 +++++++++++++++-------
>  1 file changed, 15 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index b5dd1caae5e9..d10efb66cf19 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -736,6 +736,7 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
>         struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
>         struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
>         struct sockaddr_in6 addr;
> +       struct socket *sock;
>         int rc;
>
>         switch(param) {
> @@ -747,13 +748,17 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
>                         spin_unlock_bh(&conn->session->frwd_lock);
>                         return -ENOTCONN;
>                 }
> +               sock = tcp_sw_conn->sock;
> +               sock_hold(sock->sk);
> +               spin_unlock_bh(&conn->session->frwd_lock);
> +
>                 if (param == ISCSI_PARAM_LOCAL_PORT)
> -                       rc = kernel_getsockname(tcp_sw_conn->sock,
> +                       rc = kernel_getsockname(sock,
>                                                 (struct sockaddr *)&addr);
>                 else
> -                       rc = kernel_getpeername(tcp_sw_conn->sock,
> +                       rc = kernel_getpeername(sock,
>                                                 (struct sockaddr *)&addr);
> -               spin_unlock_bh(&conn->session->frwd_lock);
> +               sock_put(sock->sk);
>                 if (rc < 0)
>                         return rc;
>
> @@ -775,6 +780,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>         struct iscsi_tcp_conn *tcp_conn;
>         struct iscsi_sw_tcp_conn *tcp_sw_conn;
>         struct sockaddr_in6 addr;
> +       struct socket *sock;
>         int rc;
>
>         switch (param) {
> @@ -789,16 +795,18 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
>                         return -ENOTCONN;
>                 }
>                 tcp_conn = conn->dd_data;
> -
>                 tcp_sw_conn = tcp_conn->dd_data;
> -               if (!tcp_sw_conn->sock) {
> +               sock = tcp_sw_conn->sock;
> +               if (!sock) {
>                         spin_unlock_bh(&session->frwd_lock);
>                         return -ENOTCONN;
>                 }
> +               sock_hold(sock->sk);
> +               spin_unlock_bh(&session->frwd_lock);
>
> -               rc = kernel_getsockname(tcp_sw_conn->sock,
> +               rc = kernel_getsockname(sock,
>                                         (struct sockaddr *)&addr);
> -               spin_unlock_bh(&session->frwd_lock);
> +               sock_put(sock->sk);
>                 if (rc < 0)
>                         return rc;
>
> --
> 2.28.0
>

Works for me and prevents the iscsid crash.

Tested-by: Marc Dionne <marc.c.dionne@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAB9dFdvK2y%3D%3DKjSfL6m%2BXOzBDP8kJmQX33Jf7m%2B5Ys762FPx2w%40mail.gmail.com.
