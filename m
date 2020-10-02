Return-Path: <open-iscsi+bncBDLPRE656MLBBCOJ3P5QKGQE6NDSXYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 44019280EBB
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:27:54 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id j2sf386908ejm.18
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:27:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627274; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcbR9qPW+sO9eAbjZS/wMVWy2+JnUYr/oW4vCgj4jDCBWE4eJtALjgACpSrq0oVerK
         oPu3F2M9QcZS5MlS4qJD9kBrIt5UTs6hWQKNB5nA9tn0u8u0G+liq0sBQY83d9SA8znU
         Hlt7YotTGtIBpU0/5WZ8xLoOXqN7EjP00u5ZxsXjwLyM3KnelB3n+EdFyielsDv4aUyx
         X2o0KzeAr3/pC2ZfK4eDeVTUTbcJdk0ZTUoVbEg10HQC0DR0R65E/cTa5G7dbjCb0rFS
         ggxBFzwVd/FLtfRQO0t8pVrijNei5xFdApcKujJr8gZIus1tzA4187WlxlS7yr1M3xEu
         O0Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=fJ2/5hum7FhAU6qlxLQ2Ix7sx9vvBM78G2VYFoPG3J0=;
        b=dm3O6KeZXAPueiBUUK0LMxg5XhcqONjb9Rre/xnDTNHnYCW/4Oga2v8Wi35Clv/Ybf
         iijpl3rIY1wies/XNVTISr8FDqCWej8d3766xMsxbNVWDgT51moQFwzlPwiAfS6sVOv1
         63kZSrD2RTGvmQnVgly9HuFR0Ef77JZl0S2NL/0hLbz7u0+u7m5jmer20iwpV0E56l94
         daGEQvMP3e+CMxe/Yml1VHibcORt9J0PHxcktL/7qGGGUkjX1F1JZ5Q46g+LAhzm+tk+
         T5kRH+kcw0oW2o5Sa8AzqeL4ve6Hxx9QtU4hN3sFh9zO3PQD1+yrwmxbL7KYsK30OYu9
         W45g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fJ2/5hum7FhAU6qlxLQ2Ix7sx9vvBM78G2VYFoPG3J0=;
        b=VwovrcMtesrLKLDP1vtpf+MToikLBzXvNnT7DPpkhG/zDoVaETONaneX4qelYuoorr
         rtLQu4uoCkaxknckNStJx3ZvSHwTIuok9wOmXMit1LPUwKYBJyfg2xMC0LRNARMUi/11
         cLNJR6BahPl/B5ufxEudCvnnqLmUURRD/Lv6Fytu2AUEmt8+l5tQc5hAb7RAH82jFfry
         cwPcMphzsW5+qbRrY12qm2a7epT4ZMfCR9GLejd1dBfQ19tVnba3aJarSsQNkWkvYrCY
         Erw+u8Gqmlz58ZWMPVzyA0ixEbXwOHNq7uduBEOk1OxTlXyTb4YbJdeMzsGuzrwoIGYh
         K0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fJ2/5hum7FhAU6qlxLQ2Ix7sx9vvBM78G2VYFoPG3J0=;
        b=ND46cqf45QL3utjLSGWYT+k5xf4zJ12cWuoFICLbONmY+O5Uib1cUIOn5aZ/NCjC1p
         0Dp1x5BaO1GEZaxK3rXzaaji9eZ3q1ycS6pNJKaFIgxZKMhe3978zbGvkNK1oL+U8UQA
         JsJ9MgEDhH1583bezkc+ZwvGqWyJFyBjmgmxiKyq7ekm2591HYk4dnPnUv3PPQfaLOjr
         hA/vCO9APLjy4mljVrCNsCXCO9bTkAHfaKQlgntcRdhJZvTglh4KnGy1UUbPpFG/RGTI
         fas0MtUMxWNng3HgEFhVv+xjANxMR7mk/W+OFo9mjMfLl8+W5649Sfy+nRMpyDrqBCmo
         E6Sg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530oTJRkrVqUZKb5yyvWbYGj0+dIvsUXZO5xA/xkI8+whpWvpDYl
	ngz4EAkJtUM2Xh+/fVB9E9k=
X-Google-Smtp-Source: ABdhPJzLulbw09GTHvcX3yGxmNxx5bkgA5TOVUW5sfnfgHntwDnxG5WZ80gVeBgf5dQUl/aUyTKxjw==
X-Received: by 2002:aa7:d4d8:: with SMTP id t24mr817689edr.247.1601627273920;
        Fri, 02 Oct 2020 01:27:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:a20b:: with SMTP id r11ls336733ejy.4.gmail; Fri, 02
 Oct 2020 01:27:52 -0700 (PDT)
X-Received: by 2002:a17:906:82c5:: with SMTP id a5mr1154585ejy.173.1601627272797;
        Fri, 02 Oct 2020 01:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627272; cv=none;
        d=google.com; s=arc-20160816;
        b=T8Q8L0bKmuCtgqmjMg+nphv5vHCb9dM3zKKJJXZAJXjnnAUlZwOCg2GYxYxCglx/ev
         1GdvdYKu/S1CDeKjbrChxOBejyrHVrz/DJnD420AdZN9hhVECpChCc00kCm9U/nosvOm
         jmPi9QnQ9GEsh13wY3CdNkouSg+AthsGDRvKOKib0GVaNQrRnIhq9GO14uLj1wAzgtVr
         X9meeeROgIWAqOyXWVcBjjMPHy1KHzr7x7F6CAsSjBaXX4BEEvyqORI9VIW6ZMArZ87b
         eHL6cQITg/q96Rz8KabYlwBftbrqSN0cUeklPUR+g9ebcHrxwM+upgeXg+OdGu5kAYXh
         iu4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=kmckn98wjM/k1tDU2SqWUpNlYpqpR+WGdQRfGRspJIo=;
        b=AIx2BLX5YxiS0uaCuhwIkIb1rP3uCdolhzDsVtGCBHdeSXOqhQ9A8/pnOkmVDO6Asv
         bG8YpwTXHzXGK/f1dLNf+spltJQJCxnMr57DsBU7m0QXdLptjymymSzHoD6ycmUg/1BL
         hx2W7ldlVNds+DQ/p+n2785FOwBcU+iT2ec9kVpPeQYRRHnWCz2m0Bal9UZWg0Yth4W4
         69i+WQkM84ffiovlQmXNyU1T5dI+SPXWprzOzkkUHXqbPEhY/hkOrsG0at1lXbqwGjFh
         IAmdt6UP4fX2ftSrBrnkbA19UU2wyLsZi0EtZdmdyR2Ehj1q0LJsZg80Gd3Lh8V1Lvbr
         WGZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i9si23727edn.1.2020.10.02.01.27.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 37D19AC82;
	Fri,  2 Oct 2020 08:27:52 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: davem@davemloft.net,
	linux-block@vger.kernel.org,
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
Subject: [PATCH v10 0/7] Introduce sendpage_ok() to detect misused sendpage in network related drivers
Date: Fri,  2 Oct 2020 16:27:27 +0800
Message-Id: <20201002082734.13925-1-colyli@suse.de>
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

As Sagi Grimberg suggested, the original fix is refind to a more common
inline routine:
    static inline bool sendpage_ok(struct page *page)
    {
        return  (!PageSlab(page) && page_count(page) >= 1);
    }
If sendpage_ok() returns true, the checking page can be handled by the
concrete zero-copy sendpage method in network layer.

The v10 series has 7 patches, fixes a WARN_ONCE() usage from v9 series,
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
v10, fix WARN_ONCE() usage, and add Reivewed-by tag from Lee Duncan.
v9, fix a typo pointed out by Greg KH.
    add Acked-by tags from Martin K. Petersen and Ilya Dryomov.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-1-colyli%40suse.de.
