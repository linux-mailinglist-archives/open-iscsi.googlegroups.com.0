Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B382490EF
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:06 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id c4sf14361822qvq.15
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZkZ93WCkGHrX3+2NhbNLktcJgQdcMvxngLKFwCkalFfjN1y60LQajPksmLllSRIKl
         g26huYFPCJnj4VHnalGRnohV2T7QxzjPZIk3UplsfQm08WwK1muLy7gdZUCCCwND4C6R
         Q+FI6n4wM+e7zYFE2v0yLKghV2TLM/B6QKu23lX3MEFpyFYDyPBv0gSkpDD53J5rgVR2
         gpCeY/uMKB/XA7ziDMEigEXC3dif2eLYYnCUiZjWXl9BLcpUaavsA82mtFw5MOqs9PVo
         5P1eNMqNBSb5u82jCV40h32eus66K3bldjkkqUpjTsmKzSht5JPrAkqszDLL/MfBunz1
         TK+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=S7YNvfwo7DvdmSMqWbGv/KBrIxfgxfK3ZOzKuHGb5Nk=;
        b=imlo3Kx0mJqYo8RWBYHxDkOOaW8bTXfJRETO821+YtU+4pL7lI8cp8XD/k0ZakwabU
         JXhDPWpjM+2zo+KI18P/MO7oW2F66K65Q2IJ21WPGFPqmrbf6XfAf+SEypihPeF2lI2q
         XUble6jojQ8Q1d75xzTgQBjF+egBEeTGp+asIhuZ0Dmv7WJXGmufxU+F+cE9ZZE/LJuX
         Lv/9EYis6o0RfYh13KG4VN/xj1e/e5xt+1Ct8yxihqH8AeEqIgj1eeNTrJle064/91Uf
         ydPIKp/tR1rT7n3CCMLSs78K/Lr6NKkGh9n0PGvO3MMtuKVrU4VpQd0kMRKUItztjkuc
         PtHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S7YNvfwo7DvdmSMqWbGv/KBrIxfgxfK3ZOzKuHGb5Nk=;
        b=VO+cGm/8sUQyNaopq7cW0Sz05mxKycBhLAv257aatZokSv1E+2X8JaEUqRfpE7z5H/
         PPoOOOih3ZEK4sEhrHL6CyRlBIyo7txiH+nnAq8nHx5w8G65InKPaBSjfWIsyXomh6rQ
         Q/ZVMVdGCoogTlgTopOcehkk/e13fM7NSu4VVyLuswf/tNYN/B7WlLp2lObvDNIY0jGU
         vxWAHKgxefl711tCmFDQ2q9lqboMTZeRD3ccbeGlPQYFrdd/K35gyrKM740ecfosv2RL
         +pe5b8im9ZwpgM/4C5Dpi8LA9EZGiqBZNFLVoW+QLZ3Y/AkgGWWMNVoUxNKM+KxraHA2
         YKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S7YNvfwo7DvdmSMqWbGv/KBrIxfgxfK3ZOzKuHGb5Nk=;
        b=g19hXw80XorWzuVJW/cPSOegUES3WWbOEYuOwr76dP+2iyxbN4lFO8obqOR4CnrrRC
         PBypdbNpURbUJm6yS5J7MAJFHycyylwdm+EMZF4wE8h5x7w6pfOycsAxqVYQ1NZQ8+aF
         XBZPBl7lGoazlI0u0Kqfdc5abBUBStyexjSeWyzCspMcs0s9iDCyyff/T99hcxzR6yk1
         fURyvq4w3xmJUG3lIUcNvjGxsWt3zH9D/ZD0tc7Om+nw6vc8zKgcHJXFji8li3phC5Bo
         j1PS1TLvdKHPmV06XKzkh3TEKpvpw/Taf3Z6wV8PAsYPGp5lxUgYTCkVCnSi4fM0ayO0
         u+SA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533pV+rIlmBHVz8ad7d+2vallh17JcDF7Td8P0cyN9zb+y+v2DG6
	i9Ubg3PN07+SA+IsDG02usg=
X-Google-Smtp-Source: ABdhPJzJuAslxXZTeVPpNYrdliE6N54HDmqF/RRHERjZLkEyRN5x20aYjDG7+E4wOlwXAQMJ4Ct4AA==
X-Received: by 2002:a05:620a:89a:: with SMTP id b26mr18606251qka.175.1597790044875;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ad4:4aa2:: with SMTP id i2ls5452133qvx.10.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:ad4:4d03:: with SMTP id l3mr20275025qvl.155.1597790044693;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:ae9:c316:0:b029:105:b637:9221 with SMTP id n22-20020ae9c3160000b0290105b6379221msqkg;
        Tue, 18 Aug 2020 06:12:55 -0700 (PDT)
X-Received: by 2002:a2e:b010:: with SMTP id y16mr10152608ljk.391.1597756375399;
        Tue, 18 Aug 2020 06:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756375; cv=none;
        d=google.com; s=arc-20160816;
        b=wtQNAB6/9yQ7PVzYcbINO9jmd4DLQIW48YJ/EAeuAvwr4DWusXAkXXilSlevjbb0Da
         f9wcc5KG8sLwG9tkee0vrqbjIPGR8DnlcJmb3rEgAgH6gQp6h0sHRG8QCa/P3pOnqfz4
         DQnOplLV4yjab3LSqEJxH2bqrEFNyJWy26o37AvXlV4DxczjHy9W/Y82k+DxH9TBzC6r
         hylXqy3Z9rjq2tgd6JfP96G4qANGW7UX+9HKYAeSSB0K2OHnGpl9bHAHK4Wn59alQfac
         /gyte5vbYcSEn5e56ZrBjjumNXql5cxNf8571IQ2YphoJgdkVm2IoqaGawLedKMh4QQH
         j8eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Vep2o1Y1RMCetlc/c0QTKxus//ukO5MPlBscGsF9Sww=;
        b=CfXVSaBo6i73pUJ1wxSE+IIlL4POXtr322iIo+nSh5rkPt6OBkasJ8FKydC2gHtVja
         Qa0/e0ewWPyd0ATKEUL9RepYQeWxAn55bWE6KCvFDdYGMWWeNlDDmFwuqingKEWur+gV
         YU7XmZWcPSElyACFRs9Omt+jgMNFjczp5imybiyxfzWe9IjYzlHDUA6oTQuwqsb6fF6Z
         7mN9hTwWm1dEzLDL+pJUxXHwYdjNu06Z78+AvYVjm34liP/dIj19ub4dNlowW4psAb0p
         MWbUZA6oR6886UDomjKCMK19CCHKMjbzIRZTfxYgs2edn+ItEFkwG0keZZCjMzPF17Jh
         6QcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id o13si681200lfc.0.2020.08.18.06.12.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 5645DB178;
	Tue, 18 Aug 2020 13:13:20 +0000 (UTC)
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
Subject: [PATCH v7 0/6] Introduce sendpage_ok() to detect misused sendpage in network related drivers
Date: Tue, 18 Aug 2020 21:12:21 +0800
Message-Id: <20200818131227.37020-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-1-colyli%40suse.de.
