Return-Path: <open-iscsi+bncBDLPRE656MLBBPEW235QKGQEZZR6EDI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id E369527FAA6
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:54:36 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id s20sf1542500ejx.19
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:54:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538876; cv=pass;
        d=google.com; s=arc-20160816;
        b=gOKMdNBeisNPeXNxVrN3my1/R7Me+y2QVOrZRywUEMynHqu6LgM4I9Qdw2mGvJkTLh
         D1nZ2hMoTzX2aN2GFctJxkT2oZELmLE94l0s5Yvulj76EyJTS2fWDO1zjnZvnNLR9BE5
         EUtKB5CIEbVdf9rI46+3CNd8IAb2zljtiGWBWy6sKRVslCD0kDdnErBaJxt7u3yznTt8
         +ujYSBhXh33rOwyHyvApfM5GMSryTOwOrS/Kc/aZLlOXqyQVBB7x0nYWftc6ZethJOO9
         oVXUpuDKLKVpUOTgeth0EiVnFCesICcywnDpIIZCvbRt613yIKZrw+xmGhotsqZBnVmC
         91JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=ciZyicIHUA5YGmGyhUYcYuiK+ulImAqE8B+5kMoHPXU=;
        b=o2hklXws8hdU6rzRPEFUu3FQc613R6f9A25vOuN0x1AeJkajwC73cUPFe7fMHv/7HZ
         K42tsXfaZnJ/lH39Cs13VZ7BIAUP6TWEWLBRsyO4xu9juBa71LGUfq9fq4w9Kz/yBvnm
         uxWsAJPf7YBvcp7taFatzKTdZE4Zv89qM7yECZyS0Sx88Do4/Uka3mvThL64TiA2zftp
         xqxVSjPZxsgYK/7xDfjBk/b69mxlh0LR0uViRnwHGjCyZf/pWWIbsWT4eBLs1Gq7/hny
         z1nW1d/j0ZG8o6aLlXPBm2OUsj46gHH2jIljHOMfGqyP7FDEaAsoq4jRuy6Bo43MLNUr
         jf1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ciZyicIHUA5YGmGyhUYcYuiK+ulImAqE8B+5kMoHPXU=;
        b=iZmxgfYKMa850rRp24VCYMR1B0mMklSQ5UhEL8mMXU8ext8Z7sTzN4+Ag8M0Stb/Ur
         1e2HaKCRUmJu3uujKA79fkZub+obq4Taxppe1LoviP/rPQgJhljmQY6BrwNDGSxqWEpP
         ZxPSX5JxDy0gN4l/8Jbhg2u9wdyr9SY+vy3fGIJfKw48m7ez/w2U2WpY605zOgeDltjr
         8smgQ47AdkWFz8eHoDbfHD0g4FAfuDbRfXSZyVh4yrqLEtyAa3kV2HgLO0SW8Oejlw48
         lw+HNRqMDaa9+cLst2inyM6Zuqnmg8A8SuAfuXrwrhDA69x+yOCV5J7Ik89vZ+DvBo9y
         lTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ciZyicIHUA5YGmGyhUYcYuiK+ulImAqE8B+5kMoHPXU=;
        b=SmJj5Yrlu+fX2JW9saaTrSa9HKYuQx0T24rKTAJM3Kfi7ilyIDy0e7naxP3sRgRRiH
         dvaYpPHSum4vPl4oQB3Bsi/tmwstpMnQk016eWmSD4YmZQrikSZz/9ZlBoG5kW/HjR0B
         fR/0h6d22l0eGyZbvvNnXdAlXYUNHrrCrkDYvrs3Xd/UvGIPa5Wa8hbqI8VF6N+5N8G4
         9to/MdHxIGHN8AtrJhrZ9eioXorXKaIxMWZLoIOJMeIQ/uEBE145WV9Lc9nQfA51Rhv4
         z7YpjZXMryvi+BQa3aHZUyunAaNsgsB8XTr4tZSZIfDYTsp0HkNBnFyAatosFJaaWlVY
         /rKw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530b9eJMawRQ/wwic9xBwJTxiqSvJ5XxYz/WgJPQE4gvJY6i4uki
	2tQ/SIrEHQj6WjfAk3BiYsg=
X-Google-Smtp-Source: ABdhPJzTVFCRYX65QnxGC9+vefy98bQXN6Qsqm8pNjRRJ0okOMVm//20WuQVUrOeKVEgPVnSjJxuiA==
X-Received: by 2002:a17:906:5008:: with SMTP id s8mr7102470ejj.408.1601538876595;
        Thu, 01 Oct 2020 00:54:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:c545:: with SMTP id s5ls254045edr.3.gmail; Thu, 01 Oct
 2020 00:54:35 -0700 (PDT)
X-Received: by 2002:a50:f102:: with SMTP id w2mr7046733edl.63.1601538875696;
        Thu, 01 Oct 2020 00:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538875; cv=none;
        d=google.com; s=arc-20160816;
        b=02oDaxLEmWBL83zQk6b6eXhpwacIRSvL/g56VEsWsJP5rVDC6xf6mE9POXaAw6HxQg
         MtzWUxmU/ImawDwb/KM/SmEW4BVZxJ6Z93SLVSuV0uxgm1FMmraL3EODsz6VrQocqNFB
         yL7abwomkVXGD+ROX6d5TV3VHbikmbkLFH6F+pgiQZ1SvbnpagP92jwFX1JZhan95xf+
         HbgyMLKcGbeEvK6zIyjqokUgWkwsTqmOZmt2Gv+evqSr1ysL1wfrj6F1GRG3rBL5Ndc6
         6DYRIz4M+Ubs4ErQsSFVpVK/CsIxHZFBOJtfgL6ETUyCE4B8pr6P7QDyd6jvm213Tegp
         AaJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=A71NnbcNPXiNdB+RU5GRlkwxn1kFGIxVvOoqU/8niJw=;
        b=A+DMJs/GaO/WK4JPoFwA280uk06TJQdlr5vpwEM08rZYiyqhszRk0+obU8o1jD3MBP
         LgRZc3aI4o9KsK708CgEGbcrzjCzoMXWThxLPJzbhxZQ64dnO+PEBYIItP3kgmc8hiNp
         rWQbVsPZCJ1x7cv8R9hUOrrQ9Sdxs2tj6KWACsFz4bJBYBsVh9FkVUpysfBJiev0Dkyy
         RHM6Olpyi/88uDXZnSsdRCFdkbRKYCo+JQ92uJk91KAqjwM2nyEnM1JzbVmzTllspuvp
         XKP8rOf+ES25yWkQaifpfYp0cNh9oHNNKravM4he7LQvM3kqIUJM1eA2f3nHkCu/WGnE
         sIRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f17si114972edx.5.2020.10.01.00.54.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:54:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 1A9C6AC97;
	Thu,  1 Oct 2020 07:54:35 +0000 (UTC)
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
Subject: [PATCH v9 0/7] Introduce sendpage_ok() to detect misused sendpage in network related drivers
Date: Thu,  1 Oct 2020 15:54:01 +0800
Message-Id: <20201001075408.25508-1-colyli@suse.de>
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

The v9 series has 7 patches, no change from v8 series,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-1-colyli%40suse.de.
