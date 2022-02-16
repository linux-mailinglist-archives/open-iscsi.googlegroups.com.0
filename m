Return-Path: <open-iscsi+bncBCS4D34BZMBBBOFGWGIAMGQENA5ASFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E87434B7C5D
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Feb 2022 02:28:26 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id b4-20020a05660214c400b00632eb8bff25sf399720iow.1
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Feb 2022 17:28:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1644974905; cv=pass;
        d=google.com; s=arc-20160816;
        b=bmqywTqq4js61wM7m6nDfE9YoQ9K4ZAkicz1sN92olPFpbBmQjXUaJB1YOz/dLz9DA
         dffdyruboa9cmprLxEnFajumReJsBJuRZ83NpCEGA3bxHWczrgrXpMse6GlRKugN1yQn
         m4rbr1WQWb1s8PQmkK2qBo7bj508wzZuDlWcKYxeGIDiUJ/l0tOkxyBF14rZTa1ABloI
         13dauUiVBtOENKYmqMLxX47xIQ0L40KwBEswp6FvZDpr8efcwVaEg2lJbRVkQlXYpAXW
         EHVvuZf3Ui0aE/QQ4D/v+PbXRQCGEKFh6DfpfI2oeq28II1sz7umdjzBvtSGx4MK7+Ua
         WdVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NeKnZ2HjzkWv6pThjKUD3lr4uaW94CPycjLZs13r/Co=;
        b=SN47DueVnhBiOKSOn7HzMpm/iseObPZ+TIz7RuOQukoZVP4fn+oMYKZgOsCKWv8Pac
         y45f+9+0swxd5r8N8LrAsU0xpCVLZteUAD+3+Li8ujDXyPRv8iR9uNbXHvpsCMa76pgf
         9A8OhByGtxZNK44y5kqC1VQ76WAzV5Oq3+yhaYrjNojafwzPtk7Gu3kyAD1WNTe3HTlw
         lq3Tv54JKZSH4nSVO8tGXAGKeQWuLhNSN3S2xBUgzlDNvOnZMF02+4txgDidTS82/y3i
         0GhKNtz5xvFOwszzIQOPr6VE+fJqwaJb+t3+KOoIrqA42lsycIq5qvuDiRib2KqZmaG2
         0xiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="l2L0Yq/M";
       spf=pass (google.com: domain of liuzhengyuang521@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NeKnZ2HjzkWv6pThjKUD3lr4uaW94CPycjLZs13r/Co=;
        b=tOr3TIt0Ofbxx0YcC4GffizyzAq+8ecMcy6Z52NwtSQtM2hAXqkYSh+KaeVl4NFZ9f
         B/reGHtNqJdfKSV25UAhdLTD5/jOHcwI4yab+Sr4zKD3VcKMpYrtt6DbOQBU68vADdAA
         vLtDgF2tjl3a/IjwQeqh8b8QFhHCQtHw0eiUZCxqYlsz9Z7EcZO63e8BBFzpFuWaQzPj
         7W4mwSGA4o3RDhAscJT+pSXVbTbMpDJWcEV6CQOZlgVwk/GnUYjmbCJ+ECuCFtKH42UA
         HTtsBAHymR4XtIOtRZJ9vzbVWenj6F8W/Lb27mWypvINKWWc0S2I4qvVEY/jS8acQNp3
         orIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NeKnZ2HjzkWv6pThjKUD3lr4uaW94CPycjLZs13r/Co=;
        b=WPmcDhJNr9f9mEE99d6ybpmWhfeTHqaxDsZ523+fP36I/T0LMgG0qCLHHE/Yh2opBr
         rKjLyEIElB9dptQqxrF1GwZbue9GJALeVeJ11/Bmu9WP7Ji3w4sfVuJaZF/3X1FnEzG/
         ix5acG9ipa0CZxtd7h5sQ+xL4XSiDSIQvyIW3H3vglc3NXSvRBql4O0EyWoYls1/dUye
         oB2llDDDGQuQux3llCFZ9OTSEIOVGizB3da3Efw8r3YsaVSOzbFvwhpcy44nmE4Zc3TW
         5elOzNILpDAYJkt6L0Y68QbUAA1xCw9J3LJGH+2U2YNn5lFv1Un72/rxppS5KIUBIOmq
         6WSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NeKnZ2HjzkWv6pThjKUD3lr4uaW94CPycjLZs13r/Co=;
        b=O5gmH6uUj3RD7ta6EtBMhLxkkOgBZ/df/07VZ//BtRKb79yCRuKig9f7hR6kh0WrI/
         F5Hsqq1RrD47uKTUDl7FY7vK1Wcbvf3d5QGEc12P4XmPXht4g/abaJ4YxShNWL/3PZIn
         Tlp1RZT8p84Ffh32Gs+gEahSrXW02dHxDxn6gg/7737vYhMvjTPocxBglZy/BrB0xluM
         2sDFQppJoI7iBPW/XOvULjsP8CTqFpy6Qi94wTaaa1D3E1Yb/tm5cefVsQrKtZcnQ4qc
         EwVP89S991v5qK5k3SIuYXmTM+pMDzcykmakl9RuRBS9AkC/8RVChzJ6L2nCsVWuz5or
         J63w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530gb+82APnYxKebh3ZGe4mH+4gR2VTLkwagx0TXjgOez8jQdL1N
	zz6rKzVX2ZSQ7RLNbJnSWfQ=
X-Google-Smtp-Source: ABdhPJx5voEHwY5MIpW9njtPf+iIakPHe9rFbiTwQMd+ocgxHzIBrNp0dZ7dZE2xmCcVQGHFt2nUlw==
X-Received: by 2002:a05:6e02:de1:b0:2be:8968:ce6d with SMTP id m1-20020a056e020de100b002be8968ce6dmr321642ilj.168.1644974905688;
        Tue, 15 Feb 2022 17:28:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6602:2d84:: with SMTP id k4ls589837iow.6.gmail; Tue, 15
 Feb 2022 17:28:24 -0800 (PST)
X-Received: by 2002:a05:6602:29cb:b0:638:d53c:d212 with SMTP id z11-20020a05660229cb00b00638d53cd212mr339481ioq.167.1644974903838;
        Tue, 15 Feb 2022 17:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1644974903; cv=none;
        d=google.com; s=arc-20160816;
        b=zlRjRIwVQXWBw4ogXrq3Tu4zzO6LhESzYTNdNy8YDUgTH6gHaoWGkGGmwjeszZDuGC
         M9y85fbFekWYr/tRb1vsLTSGjQqvT6kcrFmAXz/GfBl9fmSSAaBDq8+bq3lJRzIov8dD
         aIRPGxcJ78388KLHadJbjgl0/uz5/Y/PiKHlf67TGFLYUtjdq8738MZOBMGxVcGVkNL8
         X6h/i+DCkS2BYBonoBre+r6lSWAENq6d//OwxK1wKDD0o4d+rTbqqjVutNjtiG23zdmf
         sZwiyTb30N2229XOeHOp/aTMaLrb1KSf/OrP3jsKR5joH3KIUw86GLppcanhdOp2VLB3
         AkGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z2OvqLfZl+hYuGhPphHFvWMwyNyMYmTbKrVX+fI0uIY=;
        b=zBP9UpHGnNBCwx4fZzO0K+IqNkIy598/+b3vSP9GjOaROTs7ym0eGz9+h8uE18dCop
         esykslLLVjvpNXBhLVnxWdI8YgaOzrL80R1xUTrWx8NYyaG1L4nmixAyV1m7Ar3XF8mx
         JPrt6vlDxTnk3XY+DJd7PTCc+KDcMkRnfttZbxRk099QjKo5g7aEGyzhO0wa9w/4Lnhi
         xNKJrUHS1CB2AjVpGAdgwg1hLanl5TvNx0Pu6hcSoN8lU3u98wzSx6q4XZJNoSL8Xozq
         NIF0qFsiLCsWakr/GjaQYhhU4GUbRWezf1PcPNRSLLHM5jxi8yUQBfqLvSz3e3V1ggxr
         7xjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="l2L0Yq/M";
       spf=pass (google.com: domain of liuzhengyuang521@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id u2si656890jat.3.2022.02.15.17.28.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 17:28:23 -0800 (PST)
Received-SPF: pass (google.com: domain of liuzhengyuang521@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id e79so559164iof.13
        for <open-iscsi@googlegroups.com>; Tue, 15 Feb 2022 17:28:23 -0800 (PST)
X-Received: by 2002:a6b:4f07:0:b0:613:f763:7d67 with SMTP id
 d7-20020a6b4f07000000b00613f7637d67mr374953iob.4.1644974903589; Tue, 15 Feb
 2022 17:28:23 -0800 (PST)
MIME-Version: 1.0
References: <CAOOPZo4uNCicVmoHa2za0=O1_XiBdtBvTuUzqBTeBc3FmDqEJw@mail.gmail.com>
 <828ac69a-fe28-0869-bc1f-7fd106dff0aa@oracle.com>
In-Reply-To: <828ac69a-fe28-0869-bc1f-7fd106dff0aa@oracle.com>
From: Zhengyuan Liu <liuzhengyuang521@gmail.com>
Date: Wed, 16 Feb 2022 09:28:12 +0800
Message-ID: <CAOOPZo4Z2x_W7i=Vbnm-SsDgj5PndLVtOz6MqRzQxW-NeBwhRg@mail.gmail.com>
Subject: Re: Question about iscsi session block
To: Mike Christie <michael.christie@oracle.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi <open-iscsi@googlegroups.com>, 
	dm-devel@redhat.com, lduncan@suse.com, leech@redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: liuzhengyuang521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="l2L0Yq/M";       spf=pass
 (google.com: domain of liuzhengyuang521@gmail.com designates
 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=liuzhengyuang521@gmail.com;
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

On Wed, Feb 16, 2022 at 12:31 AM Mike Christie
<michael.christie@oracle.com> wrote:
>
> On 2/15/22 9:49 AM, Zhengyuan Liu wrote:
> > Hi, all
> >
> > We have an online server which uses multipath + iscsi to attach storage
> > from Storage Server. There are two NICs on the server and for each it
> > carries about 20 iscsi sessions and for each session it includes about 50
> >  iscsi devices (yes, there are totally about 2*20*50=2000 iscsi block devices
> >  on the server). The problem is: once a NIC gets faulted, it will take too long
> > (nearly 80s) for multipath to switch to another good NIC link, because it
> > needs to block all iscsi devices over that faulted NIC firstly. The callstack is
> >  shown below:
> >
> >     void iscsi_block_session(struct iscsi_cls_session *session)
> >     {
> >         queue_work(iscsi_eh_timer_workq, &session->block_work);
> >     }
> >
> >  __iscsi_block_session() -> scsi_target_block() -> target_block() ->
> >   device_block() ->  scsi_internal_device_block() -> scsi_stop_queue() ->
> >  blk_mq_quiesce_queue()>synchronize_rcu()
> >
> > For all sessions and all devices, it was processed sequentially, and we have
> > traced that for each synchronize_rcu() call it takes about 80ms, so
> > the total cost
> > is about 80s (80ms * 20 * 50). It's so long that the application can't
> > tolerate and
> > may interrupt service.
> >
> > So my question is that can we optimize the procedure to reduce the time cost on
> > blocking all iscsi devices?  I'm not sure if it is a good idea to increase the
> > workqueue's max_active of iscsi_eh_timer_workq to improve concurrency.
>
> We need a patch, so the unblock call waits/cancels/flushes the block call or
> they could be running in parallel.
>
> I'll send a patchset later today so you can test it.

I'm glad to test once you push the patchset.

Thank you, Mike.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAOOPZo4Z2x_W7i%3DVbnm-SsDgj5PndLVtOz6MqRzQxW-NeBwhRg%40mail.gmail.com.
