Return-Path: <open-iscsi+bncBAABBPPG335QKGQECNSYU4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 61062281EE8
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Oct 2020 01:09:50 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id b39sf2239101qta.0
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 16:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=smu1Iz/WCTZUvRIPQyaMxVauHo3dC96i2evgEn5EB88=;
        b=Pph40iRjVAjoPpWC2ZdItMduhO3Ns9rKIoVD0HX9GEFZF5mJ+J2E9RUJRwt02qVEE6
         +rgIewL+G9ALK8PrYvw25jIat4qxHT1bprvnnpoL99wVPm1C4QOJabd3dSbYiDWYr1g5
         cUGaI7u0/MH/Y2AlBWQaarLKdwxqDx0+zA0FIESmC4nZTntZbXyecyOXG8rgrXKnq1Am
         e+IuAvS5SFcdBU6JLy6TcyvWVrUStPp5d4C4UpASRo7Mw58AWUSLw1yYXBz+JjehDN96
         siMdpLit6/TjpB3/nDAb7liMiGblSlmTjwIwHelghugM9wnWckFZc3YEKnq/zc3SDXtR
         DXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smu1Iz/WCTZUvRIPQyaMxVauHo3dC96i2evgEn5EB88=;
        b=neClB5Az562N/ndBRAVy2bDewZQK3k3b+RiBnnv9Sz/0DHAZGS6bsyMeI7MZ5KidWw
         +7973sSfjAmHSFadijloDY8ekqleOes3efLtmS/9vZfOYNQthMgyYSnWGSAIxOKnogBx
         QZ3UQxQiUpSJ2YH0cudMCiFwaBMj4CzrShxPo84xcL2B3+lgSFgMFnFANw8WOkeNYzEd
         Qt/gxnJV5dBBK1EZnuU/PCRHWxzKnT3tM/TnaM0+o3r5jGddPkLuolSgJ2BluUMv/GGY
         6ZkUWnzuyMcury2aeenosgeYZgvU5bPHPOL6Rmt/aXN4k5RPz7yuFZptffHeKFXVvYTU
         yWbw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532h44+Wr6nANUtn5hQ+Mn6fPpJL0470e+zxm566P22u0shHa31l
	xfNU9w6935Ro9toGIIyBiC4=
X-Google-Smtp-Source: ABdhPJxOdNWHPgqTY73Tdn1rXWNiBPO8vxWq1mAGonlGRvs1zkZt2LWYlSK3D2kbUQqnSVG7I1nebg==
X-Received: by 2002:ae9:f80f:: with SMTP id x15mr4398707qkh.341.1601680189338;
        Fri, 02 Oct 2020 16:09:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:4c91:: with SMTP id bs17ls759684qvb.3.gmail; Fri, 02 Oct
 2020 16:09:48 -0700 (PDT)
X-Received: by 2002:a0c:8d82:: with SMTP id t2mr4422395qvb.62.1601680188918;
        Fri, 02 Oct 2020 16:09:48 -0700 (PDT)
Received: by 2002:a37:4f06:0:b029:114:cd49:d583 with SMTP id d6-20020a374f060000b0290114cd49d583msqkb;
        Thu, 1 Oct 2020 12:43:50 -0700 (PDT)
X-Received: by 2002:a1c:2dc6:: with SMTP id t189mr1687562wmt.92.1601581429673;
        Thu, 01 Oct 2020 12:43:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601581429; cv=none;
        d=google.com; s=arc-20160816;
        b=OW96t/IVOVewMA0/3EG3ZOQ8YYWlQJ18ekKDKv1hVVeruEx6k5xjzgXhsoMUim9rtB
         UcyVaksQUhbMQV8TLDOPixd5jlDGOUeDMXM5NrkW5N1F9E/lnBn1TxuJL9S4XKGofz2Z
         /nJVLOF38hOttZ2NEfP7miWw+tzzcLb1j8bktgYMuoMmXVGBtKCaUho91GHrzim0gEeB
         cFtFHsNZrhftSTqIxIEPIGTbEUWO7WAG9OZRJfcXNgkLYBTO0GeSA0fFa25C1yl8Yhzo
         pRuS05884Ik+AyK/0+IQ7kUaNJs2/hnxc2eMxenIOCmEdd4WXHCiS3uWCpFAPWziJugU
         f/UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=smu1Iz/WCTZUvRIPQyaMxVauHo3dC96i2evgEn5EB88=;
        b=PO9EhVCYZMgp0L0njSII8/u01zTU0nF7wmw5Mp7DYSyrBzoeZ+FGWrRgIGD2HJbg6t
         LuD6zbQospX40M6PfuhuCOC/XH34m3Vdctl1nerG/KcYKQVwdr9uhiIzzY3VmYH4Kvxn
         6uJ1A24PNxNuC/ZqL892vYkjO3TN8N5ANJ093EYK2GIwxOpZQ1cnnyI2CNyQ+vRrLl/V
         U4c2FYqpzD7VHuCL89bpRbcIO+2bjK84rHcwamiHawbZfu9f5wQEjckaXXPeMTIHHiYy
         4r4zN4hTH5aqUsYW7m5N88IxOFr7W7ZemTGLjMP1fiAKgpktVv5WNMPrZ+VwqGbqmd4A
         Yo3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id b80si75992wme.1.2020.10.01.12.43.49
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 12:43:49 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id E28F81443FFCF;
	Thu,  1 Oct 2020 12:26:58 -0700 (PDT)
Date: Thu, 01 Oct 2020 12:43:45 -0700 (PDT)
Message-Id: <20201001.124345.2303686561459641833.davem@davemloft.net>
To: colyli@suse.de
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, chaitanya.kulkarni@wdc.com,
 cleech@redhat.com, hch@lst.de, amwang@redhat.com, eric.dumazet@gmail.com,
 hare@suse.de, idryomov@gmail.com, jack@suse.com, jlayton@kernel.org,
 axboe@kernel.dk, lduncan@suse.com, michaelc@cs.wisc.edu,
 mskorzhinskiy@solarflare.com, philipp.reisner@linbit.com,
 sagi@grimberg.me, vvs@virtuozzo.com, vbabka@suse.com
Subject: Re: [PATCH v9 0/7] Introduce sendpage_ok() to detect misused
 sendpage in network related drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <20201001075408.25508-1-colyli@suse.de>
References: <20201001075408.25508-1-colyli@suse.de>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Thu, 01 Oct 2020 12:26:59 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Coly Li <colyli@suse.de>
Date: Thu,  1 Oct 2020 15:54:01 +0800

> This series was original by a bug fix in nvme-over-tcp driver which only
> checked whether a page was allocated from slab allcoator, but forgot to
> check its page_count: The page handled by sendpage should be neither a
> Slab page nor 0 page_count page.
> 
> As Sagi Grimberg suggested, the original fix is refind to a more common
> inline routine:
>     static inline bool sendpage_ok(struct page *page)
>     {
>         return  (!PageSlab(page) && page_count(page) >= 1);
>     }
> If sendpage_ok() returns true, the checking page can be handled by the
> concrete zero-copy sendpage method in network layer.
> 
> The v9 series has 7 patches, no change from v8 series,
> - The 1st patch in this series introduces sendpage_ok() in header file
>   include/linux/net.h.
> - The 2nd patch adds WARN_ONCE() for improper zero-copy send in
>   kernel_sendpage().
> - The 3rd patch fixes the page checking issue in nvme-over-tcp driver.
> - The 4th patch adds page_count check by using sendpage_ok() in
>   do_tcp_sendpages() as Eric Dumazet suggested.
> - The 5th and 6th patches just replace existing open coded checks with
 ...

Series applied and queued up for -stable, thank you.
