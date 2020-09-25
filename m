Return-Path: <open-iscsi+bncBDLPRE656MLBBZ4MXD5QKGQEQHE6QEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A3838278BB5
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:01:59 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id b17sf1118737lji.10
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:01:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046119; cv=pass;
        d=google.com; s=arc-20160816;
        b=GRDAzPBWhEU/CFqISsrQamjyjF4LGP18QkX8bZyhk9Av4TxQrNTVo7J7fo/daRrW3x
         rY+7iRypnUx9kHKGC8uvJ6F4y6pEi658SIn0TSxLNeZmB0ZMWZeJrHn5XS/s8sGfagR6
         ldjoV81RkSYGy0jOu/eS/EeIS8hIWu8udTET5TDU+4xjJ3jFMnsw+qxqQufHuFntd9kE
         9RLIxA48yu+To2SmK+rmPcWybGgnrbc/q3z/baCFZfCJ18FOzc5qgsIszCsMQb0WqthK
         2dob6+YLCC8K3owHi3rIRLkOq9C8GyIekdm7/BnFeCsWUw7tCSr2g3cwbe+ViYbBnj7w
         dbJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=vyscl8IK7o7nPVxpf5R2fIb9zQ5lfXl3BLdVtPTeTGE=;
        b=OMRSR0PW1lNyFdzC6CCshe00pOyNo/Jkbq8EVPnbzdGq1ESvW6d7zdcAii9EWjRKaz
         Uiit66bEN3h4yRpDE08DeCkwCnJ6fvuNbfZAygiKtH9Eqczxe0VQuyH9bgHQ+EO0nAEK
         A/rxHy5fSZA3+KUp4m9uCok+f3bi2LGIeUkKAvtl85jxdbmOK8S+/OoHBOySUbvnp66c
         xq1U3KLVdNW0BGRRzX7qFAPwJeex+hZaVLg+Q+0A82fPExlaXxYy/pn+Ho+bLzw14WYp
         Cb29rb24t07ttqFs7A+5xHFVq90W8Ob1Hu5DLD2GvQCsWV2i4YtjbmfhQ5hjl7pSvV2K
         z+Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vyscl8IK7o7nPVxpf5R2fIb9zQ5lfXl3BLdVtPTeTGE=;
        b=XXFvMI6MdJcZhAKhldCx+VnsvqU/iKRSpoZ9IFmkuZ6T7lk8qiQnlJ6OYi6aP59Sfs
         i9dtY1obxpSH+1T5AbvGdFciZkdfDARq2hfjZN5uXy0O2ieaE74VPp3WWmi1LSKuf+mP
         DZT1KYUbD5/JFZt+e9998yvEGyyk3cMHbIJPYqon10lee+2xsx8NaB1eXXbj716uJUMO
         jf62826t6qYMvPpHNgT1+5dNRFYYNFLLphnAO10ZjWPccT+SU3FEoV61KjRZHgZWMzeN
         Jo2kesKSa75sjlMAEId7/74Y0n9T4oYoxatF/HUcpD6VTFTNob0e8n6s07TxyCyl6w+v
         F4qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vyscl8IK7o7nPVxpf5R2fIb9zQ5lfXl3BLdVtPTeTGE=;
        b=d+o68mX4BioIKzk1uCKfWIn9vwvtOVutyeiElxm4N9XDF5Rw54Gmk2fGILFNYSCZkA
         nRGdxzYxgTkZ9PyE8APRtBnSPALUFtGJnYPC/7oMbK+oeh5XU4ovuzp+wyihs3jVVXAc
         u50vmAKK2waE22Q+9gotrtjv20M3v83dzMSveHR3nwuSWOdC2tg86irzm5KJ1ygcgUzw
         kju/7RFP5FoGCO/PYKgdpg8xoLeINsRgaVDkrY9s3aKhhpac3WOtSO0bTtFF53j4Wz8J
         9HwuFtHxXYsX9tXQeZ4o+Mki9h4fzv+Dyg67Gd2rykFwFczZ5PZCPV5C+kD5QSsc2f9c
         AEGQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532XAyKmVrpEbC169wGtjISpXNP29Q/dQQblkJsOSQ/1Cu+8rZcb
	nVx1NRyHaTcFzIPNZfcxksw=
X-Google-Smtp-Source: ABdhPJzQbfFrE6bnoO9Ltxl3/2ZHmIj7/y4PjJw7fk9LjG+YpWR8hiocDMIBGvK5s31pbYQRWMD8Ng==
X-Received: by 2002:a2e:2244:: with SMTP id i65mr1632627lji.185.1601046119240;
        Fri, 25 Sep 2020 08:01:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:7c08:: with SMTP id x8ls435854ljc.6.gmail; Fri, 25 Sep
 2020 08:01:58 -0700 (PDT)
X-Received: by 2002:a2e:98d1:: with SMTP id s17mr1458381ljj.188.1601046118221;
        Fri, 25 Sep 2020 08:01:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046118; cv=none;
        d=google.com; s=arc-20160816;
        b=Zdugkym4KTV57WdIzLnjwF4Dvaw4OfRiQcKm4gcSgcGR6SRhII/gce0MB0Wb757B/0
         svNH5GXYkCtdQyYYRWur9Aj0dGg0HGYCvxCMvu4Y5h7ltfe/X8DOKOxy7VbmmTyvmZWo
         VYCR2um/R+nHSubs4p965xjKT3lFjG79NKA5DCdu7gGjtZzNyGPDbjml/2I1NFdVy1uW
         owQ6I43WvGELOOtNWCMsxE/2TQuiV0aCP07xIoX6FOu2WkV6ArMY+cPpDyuImt4xhJDK
         DglLOT5k4++sThBgdLOzRQaaKpF6AXmevCl6JodubFFgLLFhjqPBzrzttE1AH9tXj25S
         WFUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jlP9uJs8N1dLuhXyn9htTbd+21VDbVbTbOTVrTcNL7Q=;
        b=qro2GrHCmndG1J+1v7b4ILyv+WIuLs6/EmLzPAP5vNmn3AnOaDSiBhfMML2wJL6iS0
         wunnygaiQj9SMiXPnAIWrqv24cn9u/9SUP3AIbP5Sq9u2JTE02eWwOcC5Be3JyRMqhX4
         FyFYjDYsh5+JUYhf87ruC1Q8WpXdt0unMWcfqD0TE0dTGUU5P+Sp6cyov8zVnbieM1mH
         Apm99BOJdXtjhualaIKh564qmHMUQYFgp/FZgRIXCaX17ETnzojwoOB4gXFo4lKkywFI
         srXO9j0u1ZteGZcOOnJRXQV/wULfsgESB0GRU9HIOO1emtlXDLSpTPJYsEZlMS9Tq+My
         7kRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z6si97588lfe.8.2020.09.25.08.01.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:01:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 8C1C0B039;
	Fri, 25 Sep 2020 15:01:57 +0000 (UTC)
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
	Christoph Hellwig <hch@lst.de>,
	Hannes Reinecke <hare@suse.de>,
	Jan Kara <jack@suse.com>,
	Jens Axboe <axboe@kernel.dk>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>,
	Vlastimil Babka <vbabka@suse.com>,
	stable@vger.kernel.org
Subject: [PATCH v8 3/7] nvme-tcp: check page by sendpage_ok() before calling kernel_sendpage()
Date: Fri, 25 Sep 2020 23:01:15 +0800
Message-Id: <20200925150119.112016-4-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200925150119.112016-1-colyli@suse.de>
References: <20200925150119.112016-1-colyli@suse.de>
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

Currently nvme_tcp_try_send_data() doesn't use kernel_sendpage() to
send slab pages. But for pages allocated by __get_free_pages() without
__GFP_COMP, which also have refcount as 0, they are still sent by
kernel_sendpage() to remote end, this is problematic.

The new introduced helper sendpage_ok() checks both PageSlab tag and
page_count counter, and returns true if the checking page is OK to be
sent by kernel_sendpage().

This patch fixes the page checking issue of nvme_tcp_try_send_data()
with sendpage_ok(). If sendpage_ok() returns true, send this page by
kernel_sendpage(), otherwise use sock_no_sendpage to handle this page.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Hannes Reinecke <hare@suse.de>
Cc: Jan Kara <jack@suse.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Cc: Philipp Reisner <philipp.reisner@linbit.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Vlastimil Babka <vbabka@suse.com>
Cc: stable@vger.kernel.org
---
 drivers/nvme/host/tcp.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 8f4f29f18b8c..d6a3e1487354 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -913,12 +913,11 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		else
 			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 
-		/* can't zcopy slab pages */
-		if (unlikely(PageSlab(page))) {
-			ret = sock_no_sendpage(queue->sock, page, offset, len,
+		if (sendpage_ok(page)) {
+			ret = kernel_sendpage(queue->sock, page, offset, len,
 					flags);
 		} else {
-			ret = kernel_sendpage(queue->sock, page, offset, len,
+			ret = sock_no_sendpage(queue->sock, page, offset, len,
 					flags);
 		}
 		if (ret <= 0)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-4-colyli%40suse.de.
