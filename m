Return-Path: <open-iscsi+bncBDLPRE656MLBBVEMXD5QKGQEFURROEY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED01278BB2
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:01:41 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id j4sf1130581ljo.1
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:01:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046100; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYTwk2MyaQDYV8OEsRHuGM/ij4iBFYryZ4u9sXawmYOPkU18qjSNXBQ0zVYyBgIiEG
         5nud7SrQdoQOVyN6lQ9fnqzHvJE/wr//SUFNjRyK7WSCHSyBC3u7dDmcIaXecqX/BBv2
         uzuCFHvhyzP1Vt0aMlLD5kInwxvHY6OJ7GMkVCuSbBjJy5kKJ4IzsOCXBdnlNYRiGGbe
         SmlGHCdrtenqknLfBD5DPFyXY5YosyMZX2bpbGvFAYnQbkvUeivYcXFTCRa+CrJjth+H
         Eu1/dRVxpEiZ8MF6digqVtXGxQR+CtA/BdI8eQn130l1emejP71lJSM4p6vLxDuexwfE
         Ztng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=93VVbInoVoknLvMRZjqecfat4Jz0aLvp5qd53WRg/ms=;
        b=LHst9L96ysPxvcqFrEWiumV8yeVPNZs9XyfVPcZIAxHYPKzurJhWO4cpNOSZMWzNI1
         dMKf2JOEaU3n1mwj7q+LQmIy/NDt1n5OsRJBWe9YQfVX6UgUPISyZy0pFT9Qu+4Jf78/
         lxEj2E4RqZS57FTTZOLzHa07+7wELVMtqSMAjsxSjEUIqb8ZPUwfY+SuAV0YKXdHXMpl
         mO+e/nA8EcSBlN7mimzfQ2IJJoG5byRCGalMs0Al+LL3L1bg793b3uIzsPYWiebDQpvj
         0X9Dhj8qUL7rFbX8wY6v3XdPoBopLl1W3i/y14St4jSfRRdqIt32rMHTR7GwkCJ6Hq9g
         UcPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93VVbInoVoknLvMRZjqecfat4Jz0aLvp5qd53WRg/ms=;
        b=qdaN+hMqLJkbQeGyKqw1y6VAy38GqXSnvwYdnHhhzvR48ppNkB54r+JZhIaRVbhKS5
         mLFlxLJqU5yBPz8dgKqeA7N69t0gBVAvcMHQ8+wSXrzFLtGAtiBB06Z/2/CA/mUka+zr
         hSDOJyyuG9pk7v0DrbOwNM4t+t5tS1QsvC5nd+D3615DdbmVoe7Hz+46f6A0rnl2RCus
         Fp/ktrw9/Am8zhlAzD9OOvsAwM3mE/ebZEFY/ePyUatd8GF5CFpcTnMI1T27Mrvz2BG6
         Sfn7vbYMnZrMh8N5Bfa1OfoLaHAnn7P0uBz+cwc5l9vwdhPYIIw5bDsG/5ckyHWblxlf
         xt/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=93VVbInoVoknLvMRZjqecfat4Jz0aLvp5qd53WRg/ms=;
        b=TBGbKchaKKnkANq6mHEjf03Ys5DrECfG6CtBR+V2kD6VHlcz8nOVydNts+5Sa31BGW
         9NQGQ87Qklmxxs9XEQySPzM1FnYn+gFU/TxYbOf7i1YnkMzAsP+IX4jcZHZ5X0zWHE+J
         e9YGf6+QxGEfJ+gxELmwXM9sm7hIGPn8rkWdWHCPPV3oFOTnAZQzxfuCFgJ1P0JgAR1n
         xhuEHHuxfp7u2yic2xiyJBqB7l5PA/ZaU+3z7n5KACEmJ7JtL3fw+RSiADBl1+W6Ooyi
         Z3txCb7OjopZjvLlV1IQp+fW6sbN5qoc4QeDtbCVJ7mePj04LxADUuzbtlPHxWARszwt
         50cQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532iWEY4F6eTEp+A1WAtTr4X2mcOKzf8xB6H9K9y35/03SEFqz3F
	rv6p/fCC+y1hybSFWkwvans=
X-Google-Smtp-Source: ABdhPJxFjZzhuWz2KCS2dErJAiqrB8voP7tSE8JWYbEyYL0/XkieypUi1MEBkuKQD4dv9gah9rAHGg==
X-Received: by 2002:a19:87d6:: with SMTP id j205mr1652891lfd.271.1601046100641;
        Fri, 25 Sep 2020 08:01:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls819277lff.0.gmail; Fri, 25 Sep
 2020 08:01:39 -0700 (PDT)
X-Received: by 2002:ac2:4d8e:: with SMTP id g14mr1655438lfe.386.1601046099569;
        Fri, 25 Sep 2020 08:01:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046099; cv=none;
        d=google.com; s=arc-20160816;
        b=k5yse74O3PED2na7lffk0JRpQZir6ruXjAEFLvw4LwABIXgqZCNNTotJn4OPHVjGaZ
         yuhxOvkZEQjccXMGJcUh3NFUNDbPTL786BKNdoG85nCUBqYyNjXeI5HLaJYv7JfOUb6e
         BaXtFJ8lqbhjSTDDa4X1y80Rhq7uKfs+Yl70ndg2tCy7RBJAzKeM58zJf8TNxuK05By8
         jbDs5vrXGO+a7Ru98HLqXbDshSj5vIc3gystjQUaE49gN2aGjppfGqeI/IqlABVw8S8N
         75g1+9pACwOvwXk3JHTZJo+VEuxLS3Np6gRFDzNsjm8D1GhcIUKPegaO1w3QCSpcKkku
         iymw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ZAgoNmzkk2wFGuKLSjaCjyabsJNRgYhBVY3y6A/PNHk=;
        b=KlHK7qp/bu6fMOaSGaAzA4ecLGbeomaVeSd4fdVozzWYCaKm2IY8YBmHb8feZi346o
         30mzylS4Iqont3ICc+sQHdbR9VAiDpfzf7aajg+IfjedzG1xINPvXuXrKjIZQFavvzHX
         AdNJr4plQi3BW1FUF2MCy26Agq1n0LoHca7bOlcWxUCr4to8Kcn9IKIXWXVjVev30pjP
         RrpgfniGesSnhX79EzCfGLQ1KnRJs1QRNHORlZByto992WOLRt6Zp3GBhujc/sajY1uE
         cMLDdfG9zxlrQet+7FoMg+UixJVFYf3lMa7aFTH+2uTBeT5jCU1Jo8kysDn9P63HMMIn
         EheA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id r13si94532ljm.3.2020.09.25.08.01.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:01:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id AD492B02E;
	Fri, 25 Sep 2020 15:01:38 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Chris Leech <cleech@redhat.com>,
	Christoph Hellwig <hch@lst.de>,
	Cong Wang <amwang@redhat.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Hannes Reinecke <hare@suse.de>,
	Ilya Dryomov <idryomov@gmail.com>,
	Jan Kara <jack@suse.com>,
	Jeff Layton <jlayton@kernel.org>,
	Jens Axboe <axboe@kernel.dk>,
	Lee Duncan <lduncan@suse.com>,
	Mike Christie <michaelc@cs.wisc.edu>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Vasily Averin <vvs@virtuozzo.com>,
	Vlastimil Babka <vbabka@suse.com>
Subject: [PATCH v8 0/7] Introduce sendpage_ok() to detect misused sendpage in network related drivers
Date: Fri, 25 Sep 2020 23:01:12 +0800
Message-Id: <20200925150119.112016-1-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

This series was original by a bug fix in nvme-over-tcp driver which only
checked whether a page was allocated from slab allcoator, but forgot to
check its page_count: The page handled by sendpage should be neither a
Slab page nor 0 page_count page.

As Sagi Grimberg suggested, the original fix is refind to a more common
inline routine:
    static inline bool sendpage_ok(struct page *page)
    {
        return  (!PageSlab(page) && page_count(page) >= 1);
    }
If sendpage_ok() returns true, the checking page can be handled by the
concrete zero-copy sendpage method in network layer.

The v8 series has 7 patches,
- The 1st patch in this series introduces sendpage_ok() in header file
  include/linux/net.h.
- The 2nd patch adds WARN_ONCE() for improper zero-copy send in
  kernel_sendpage().
- The 3rd patch fixes the page checking issue in nvme-over-tcp driver.
- The 4th patch adds page_count check by using sendpage_ok() in
  do_tcp_sendpages() as Eric Dumazet suggested.
- The 5th and 6th patches just replace existing open coded checks with
  the inline sendpage_ok() routine.

Coly Li

Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Cc: Chris Leech <cleech@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Cong Wang <amwang@redhat.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Eric Dumazet <eric.dumazet@gmail.com>
Cc: Hannes Reinecke <hare@suse.de>
Cc: Ilya Dryomov <idryomov@gmail.com>
Cc: Jan Kara <jack@suse.com>
Cc: Jeff Layton <jlayton@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Lee Duncan <lduncan@suse.com>
Cc: Mike Christie <michaelc@cs.wisc.edu>
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Cc: Philipp Reisner <philipp.reisner@linbit.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: Vlastimil Babka <vbabka@suse.com>
---
Changelog:
v8: add WARN_ONCE() in kernel_sendpage() as Christoph suggested.
v7: remove outer brackets from the return line of sendpage_ok() as
    Eric Dumazet suggested.
v6: fix page check in do_tcp_sendpages(), as Eric Dumazet suggested.
    replace other open coded checks with sendpage_ok() in libceph,
    iscsi drivers.
v5, include linux/mm.h in include/linux/net.h
v4, change sendpage_ok() as an inline helper, and post it as
    separate patch, as Christoph Hellwig suggested.
v3, introduce a more common sendpage_ok() as Sagi Grimberg suggested.
v2, fix typo in patch subject
v1, the initial version.

Coly Li (7):
  net: introduce helper sendpage_ok() in include/linux/net.h
  net: add WARN_ONCE in kernel_sendpage() for improper zero-copy send
  nvme-tcp: check page by sendpage_ok() before calling kernel_sendpage()
  tcp: use sendpage_ok() to detect misused .sendpage
  drbd: code cleanup by using sendpage_ok() to check page for
    kernel_sendpage()
  scsi: libiscsi: use sendpage_ok() in iscsi_tcp_segment_map()
  libceph: use sendpage_ok() in ceph_tcp_sendpage()

 drivers/block/drbd/drbd_main.c |  2 +-
 drivers/nvme/host/tcp.c        |  7 +++----
 drivers/scsi/libiscsi_tcp.c    |  2 +-
 include/linux/net.h            | 16 ++++++++++++++++
 net/ceph/messenger.c           |  2 +-
 net/ipv4/tcp.c                 |  3 ++-
 net/socket.c                   |  6 ++++--
 7 files changed, 28 insertions(+), 10 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-1-colyli%40suse.de.
