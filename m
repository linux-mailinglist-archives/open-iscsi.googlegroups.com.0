Return-Path: <open-iscsi+bncBAABBPPG335QKGQECNSYU4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C34B281EE4
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Oct 2020 01:09:50 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id c19sf2194738qkk.20
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 16:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gvSN5WMat9GN0GCWXdmQOMDN2JAZxikuvNZzRUSDHLQ=;
        b=cp5wuV6jpuA10a4Tnp4Uz7O0DKYqlp+5X7CHV0GQQcMngMi0aklS4bx17Xb7/deFYy
         LIr6cO4NochMYib/Vm4HAKedFErETeUlBsQ9g54HdLALYr2LjEWmS8n+hfPiB2XoqXH5
         xpCerj1g2iI2w/pARQVOreYfdNQjNmgh/UwcXCbDXNZmpW97Ph46lPIyTtJLEqpq9shR
         WCuO9VccdCxkGbhm7eNsyc5RsxjeHZnQ1bzcpCOAPNtDsMVtJmETFg9H97H+Sp6TvqYf
         mtJ22WAt4ZLWOomk+Lq9iOSf/I9XPMI7QfC3gBAd71gBU2KYlX10EIqTpIstG0db3gA9
         WfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gvSN5WMat9GN0GCWXdmQOMDN2JAZxikuvNZzRUSDHLQ=;
        b=OWznLDyUCVjM3y2o+3K+f4jidiOCuX1w/nVw8ZpMMBiEXZdwhhCXR8UNrZ9DIUwOOo
         8NOr2QOZ1UfycRSF36XGaiN6C8GfyXRGhyzL1bwwy0vQ/fAzw93SljvsUqI5g7o2ifiE
         Qsgei8OJiK435+t4RmmFaTN97QqII/AXvgBYqs3tDq61aHoTcbRZm+pMa1OJi/ydqyF/
         xtwOaUxmN07YIk2aHqVzB0bC5iBk5YrEHhVmJXSQkehtkGQS3gZtptratBp8trCOKFwJ
         ynENabzU43MHrcu1KaJeCBC/FnY0XBBO1VtGcOCJD2JxKKxDCmITojx+DCyhbY6KVHed
         ztZg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530GPX1ilvSfupMwe5Da8jNIi/gi4YtFh807feV2eSRzsjwnqFjl
	wV3o+RU7x1rylXCJ+DJaIhc=
X-Google-Smtp-Source: ABdhPJx30S4hKXwVP+lm6B2XhC/UVu9+wW6txxdVOQkwn8wGLgdqQhA4wP1u9G6jDO8AR1cgZ+z7uQ==
X-Received: by 2002:ac8:44a7:: with SMTP id a7mr4768362qto.173.1601680189355;
        Fri, 02 Oct 2020 16:09:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e00e:: with SMTP id m14ls1437916qkk.3.gmail; Fri, 02 Oct
 2020 16:09:48 -0700 (PDT)
X-Received: by 2002:a37:b55:: with SMTP id 82mr4528686qkl.40.1601680188913;
        Fri, 02 Oct 2020 16:09:48 -0700 (PDT)
Received: by 2002:a05:620a:4093:b029:f9:71db:3eb4 with SMTP id f19-20020a05620a4093b02900f971db3eb4msqko;
        Fri, 2 Oct 2020 15:28:33 -0700 (PDT)
X-Received: by 2002:a05:6000:108a:: with SMTP id y10mr5572060wrw.41.1601677713178;
        Fri, 02 Oct 2020 15:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601677713; cv=none;
        d=google.com; s=arc-20160816;
        b=t1ckkTlq10A/+BKQPm5fqkEkavqbATQVBhBcQmhipJDM45dYRxNzt44BiFUplo3WMz
         C59yU8PfL+hh3Zq6T1KIjZvCSE9Z1vvfCERCe7VTtVaRJH0YFfDvnhVK9E8vBThRuI+C
         oRc17oTuTAgyWrUS1zIDwZyD0CkYpp7tkNR2T1XqPMmoQ3/5BeiU89zjS7kNfKT7yJ1N
         3axjCkVN2bENSowneApGBQGnoXZ37j4GiHcHxxzw+QDH2iD8VWkZlL42+lvyIShlmxIJ
         RiMJB0GffusAaFHNAMj1gDGTQFN0Rsh2AqtfSNogS12eY5idtmbaOylet0iN0s8gWDho
         oCbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=gvSN5WMat9GN0GCWXdmQOMDN2JAZxikuvNZzRUSDHLQ=;
        b=eMdM3Yzf6YbvG5Ut3Ce/9N/JtnKBYKZWOD52qO2bHSJhCN0MIXz9dc+v0DqcYWyUCG
         cTOyFxovdIw1YOrScb2epjMnmpIZe1a+zQTNVfaFEbYPrDh0IK3TVh83vkEFvi9b9lqv
         SnllSl8mUA0N1Mvrk0rvIkWG/c+4Ujt09KKlHSkEwIjd9rXAX7pHwaT5iCz8FnHcDh2L
         jA1gGapjxgTu8n4H69vPAfkMhmAD9D00RjDxzF+AOdTH6xjHLSTB5mTUoWMaGLGay9Gx
         Lh82bAsE9nRV6gc/2mJWC53kQFxpH+4HZ9gy2h/zJs/AEyqQ/PJnSClVPsughaGkbeSE
         NFrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id z17si78166wrm.2.2020.10.02.15.28.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:28:33 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 75BFB11E4824E;
	Fri,  2 Oct 2020 15:11:42 -0700 (PDT)
Date: Fri, 02 Oct 2020 15:28:29 -0700 (PDT)
Message-Id: <20201002.152829.1002796270145913943.davem@davemloft.net>
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
Subject: Re: [PATCH v10 0/7] Introduce sendpage_ok() to detect misused
 sendpage in network related drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <20201002082734.13925-1-colyli@suse.de>
References: <20201002082734.13925-1-colyli@suse.de>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Fri, 02 Oct 2020 15:11:43 -0700 (PDT)
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
Date: Fri,  2 Oct 2020 16:27:27 +0800

> As Sagi Grimberg suggested, the original fix is refind to a more common
> inline routine:
>     static inline bool sendpage_ok(struct page *page)
>     {
>         return  (!PageSlab(page) && page_count(page) >= 1);
>     }
> If sendpage_ok() returns true, the checking page can be handled by the
> concrete zero-copy sendpage method in network layer.

Series applied.

> The v10 series has 7 patches, fixes a WARN_ONCE() usage from v9 series,
 ...

I still haven't heard from you how such a fundamental build failure
was even possible.

If the v9 patch series did not even compile, how in the world did you
perform functional testing of these changes?

Please explain this to me, instead of just quietly fixing it and
posting an updated series.

Thank you.
