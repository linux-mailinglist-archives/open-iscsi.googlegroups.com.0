Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E572490E6
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id j7sf14162098qki.5
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfTAZkKu+ICfJu9GANc1IvYKyCLrYDH8fFToSOB9DapX/Oin3nBYudipTFUHXnq7NK
         lHPp40aFtAElX5gyF3x4fJ/PCALlnTECkWGcscfopD5Ga8KQGShnBzhQCxwPL2aNMp5C
         gfMVf75e/CqMlwp+7lpacAeBjbE44Ljaodn7uEj29xLNWnMzW2V2kaMk5xNsQdn9/Ye6
         nnrIOgN0k1eHMiL3Me3VLctfp6Iuu1GuZy6rnm2FOSkyQ6wysS4uMG7AT71snPrU9v+X
         whRFh437dM5J5IPvdU8Bb2JGCgh0Y27IuLJQdlctONpYJRzWy9uCw8A3e7/2BEQO1m9u
         WQ4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=ajrQP+JA7Z4KbVLyoyHy9AFZAB/cyv1mAlen7oJl/zU=;
        b=ORTV6/nMBy35jfl2NkGFjvvmfTp/frVUkXKAxE4UCWAlCLda5qqEzY0ECPYIgR2Wuq
         vM5iNFSY1sNol50IX+1jutBbd3HGQcdtF1j2JpDDYqWMsB/rgKi9LnK+pXvlhAatl4oP
         ncfKJ/lgdUTVWFlGrZ35RPh+6kL3FilWJba6HizDJWXF/UDQS3Dtabfca7HtSO9vSpMF
         KP26KORREdVwJ8M8X7otRhYc0BNZKpOKFfQLgFf0X1Xi2IJqRYIqYCupRjOe3OPU/t3N
         8krvnolqX4hXzTYg2TbZZJZaHjHLe9CSrdyioDUsgOYxRxMrvZJdU+sZb8gomCCizrTs
         nAYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ajrQP+JA7Z4KbVLyoyHy9AFZAB/cyv1mAlen7oJl/zU=;
        b=c8ajZu38w6G2yn8/d+Mjv1LzSfxW/nyrrWIhqyGOfMnQ7EU+InD7VXn0g9vmmuZBie
         pkD2yK3rmeJdmFYqzgNF+chGIufvtUVFSIow2C6a2uM/S3AltNPy93A2s3SAg3pBwHWh
         pm9J6xctxTPs7eaPd08uVCfL1ubLnu7J5wpjoyeBoozzBuceUq4JIpCUVkhdr32Ma31F
         ajPOPijH86eEFgLTF2PUGieQpwl0V7KCEqL7bCLp3D59wSo3Oy/QM43x6YTvqSRBZS+M
         Z3aXou7fGvKzGQG2RhNwEUgEpau16TPAQC+fbwIfqCMzFCADL8n0eEYzXGCScfMtOaRG
         bvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ajrQP+JA7Z4KbVLyoyHy9AFZAB/cyv1mAlen7oJl/zU=;
        b=WezyfCg+WpB7zhz23PDAAWJc9MSOpQnGW0X0Lvc6wGCTBIfcpSQfbxprKyR0UOFKr3
         EmHD/zsRkUoTdh2k5pbJ3RXtO5p/pqBTG83OODsCJQUfe7DXFQH0ZSVESxCSIjfbXg3T
         OyXEHGbIKjg44sdN6urzTlr5o/hDzQm5t5Ds+cCVCA8E8wJ+Gx9AmtCrWvgNo+QV3P6z
         dwx6A3rAVqZhfpf7FM4Ong8zhlGrJMZL0m95KhfZRejC0DvS1PefGKZBKZneIIv0CWUe
         4ewBf2FALDx/QsGgBUVzqHlF4VgP+IHPy+PofGbroBzkgXz1MYftjQ8sJKhPV8vLqw0n
         DCAw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533af7/xj8J9l3ccFEyomL+UFd4Fx9ZXGQYduLA38LeupCPoZXkX
	MMoc8B5BCeD1HKVKJsK4jWU=
X-Google-Smtp-Source: ABdhPJwnckV79Pple1Y5i1KkpXBlpiBcakAVGR6TU9636GgOZL686t95q8MOV8d7W0paP660vMnK8Q==
X-Received: by 2002:a37:ef13:: with SMTP id j19mr19214813qkk.184.1597790044876;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:4c9e:: with SMTP id j30ls8568184qtv.0.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:aed:35cd:: with SMTP id d13mr20437251qte.362.1597790044685;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:ae9:c316:0:b029:105:b637:9221 with SMTP id n22-20020ae9c3160000b0290105b6379221msqkg;
        Tue, 18 Aug 2020 05:47:54 -0700 (PDT)
X-Received: by 2002:a1c:3285:: with SMTP id y127mr19303032wmy.104.1597754874193;
        Tue, 18 Aug 2020 05:47:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754874; cv=none;
        d=google.com; s=arc-20160816;
        b=00K6a5ruerSq8hp5GN7Cz1SOG+07JAYirZcZUmY9/Gt+4HZ+yG9u/SIEgo5Koa1nE7
         pu32wRju9InycflWcFcfyRQItyZNOC8zCCEbIb/Y9R7FifXm+0O24wcrjeUQPZ8TU03t
         F/kBMv2B54sVy1S7uBzjrjKNeSwynnmk/wU1zKcZPFlvbmuAWhcbXc+rYLpXsUOs3pz5
         MP6zbyysSBYaeNiaq7QfF9Cd1zY100y0NanqS87eS79zabQNWEU3+YCsMTgyM4V2ViJj
         KkZllri2+eEc3ULCATLKWHerLZvCUDx2YJ5DjXfI0PIwdCBotGYZEzwbhX+aVNxoXc1e
         LnKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=+lpJWKq20JIq4WnucpB3buAw80qtVxaqHE+QZwovzVw=;
        b=pBfs5zL7wuTWZKdA1ExM6WntNFaVV4VZXM9AHR+TGNJQac44EXJYLiNhsTQthH7fLG
         XTSYq0D/+mUFaBrapoIoi8w3mOJIUIRDGNcryfUWY88M0Nz54e+HKRRyMo++XLD1gq69
         z81DREHfihdsYe54ot8BIa1KdUFQKg4CZFJIX+Q0wtlhuY2IwuiHFMFFuCQgfHKvmwWj
         YdNgHmtOo7igrRpdOG30rotryK66DcURbozJmu9HGEXlElJtydvXerz/4qTdFwdKIJLa
         maMZkLWSHjrw1NpR2F0/W1RReRATJMi8S+ulBVzyDs2A1LnH9hD1POUsYOlUl+Eiu2rD
         G4WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j16si650965wrs.5.2020.08.18.05.47.54
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 69CAAAD60;
	Tue, 18 Aug 2020 12:48:19 +0000 (UTC)
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
	stable@vger.kernel.org,
	Vasily Averin <vvs@virtuozzo.com>,
	Vlastimil Babka <vbabka@suse.com>
Subject: [PATCH v6 0/6] Introduce sendpage_ok() to detect misused sendpage in network related drivers
Date: Tue, 18 Aug 2020 20:47:30 +0800
Message-Id: <20200818124736.5790-1-colyli@suse.de>
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
zero copy sendpage method in network layer.

The first patch in this series introduces sendpage_ok() in header file
include/linux/net.h, the second patch fixes the page checking issue in
nvme-over-tcp driver, the third patch adds page_count check by using
sendpage_ok() in do_tcp_sendpages() as Eric Dumazet suggested, and all
rested patches just replace existing open coded checks with the inline
sendpage_ok() routine.

Coly Li

Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Cc: Chris Leech <cleech@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Cong Wang <amwang@redhat.com>
Cc: David S. Miller <davem@davemloft.net>
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
Cc: stable@vger.kernel.org
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: Vlastimil Babka <vbabka@suse.com>
---
Changelog:
v6: fix page check in do_tcp_sendpages(), and replace other open coded
    checks with sendpage_ok() in libceph, iscsi drivers.
v5, include linux/mm.h in include/linux/net.h
v4, change sendpage_ok() as an inline helper, and post it as
    separate patch.
v3, introduce a more common sendpage_ok()
v2, fix typo in patch subject
v1, the initial version.

Coly Li (6):
  net: introduce helper sendpage_ok() in include/linux/net.h
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
 6 files changed, 24 insertions(+), 8 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-1-colyli%40suse.de.
