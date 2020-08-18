Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D962490E3
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id d6sf14134051qkg.6
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=WQx9LdWdb5w+S0W1NGxqnk0Mgc38vOKIKvgLOfkspJReQL9EnW0E4GIDK42V7/ID4p
         L20j9pow65CWlL8p5vU4r8paFIQrl6mX4wcabBV4JZukknuMqtPvobIJr+pCULy3TtAb
         64G/5N38P1y+ZMrkCCjhzev9ku+r353KIFe6N63TvZofKcreWZ2vSid8M7L62XYfZF+L
         lyLSw6926l1owELVFHQWBLzwu+qONfUX2v1qSX3ZDggXw1EAit11WdsQjVc8jnIFiPot
         01nj7sL/4y89ekzbjJ+KUvZMgVflNbX93BDsLYCPtz+Pcu0rff9mf/fuGztkkz00m28E
         RqVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=r1Rx6s1VUgeLtIaAg86wgW6xhjvgvD7uz/PmMsjExuo=;
        b=RpXpd6YhfDFkXMEfJ6nChQ0pBden1rU5sk5PbHGDD1pQeKD1bIdpF+1IUjudMRHRt+
         7DYRg2PzPixlgQuY2jh0BkB9K3P4Qvu2bk91ma1agiGgyRQr4RGbyHXm1bDsiMbd0teK
         hW9Rz5lFau0JPBpXovnn8W3dnBrdFbZxoPP2LOUlLBjg7IVCIifjx2GXcU09Qp8UzrXa
         xW4M3CSAPy1rh4mjt6DG/NWx5cuFPUZzSzQ6Y+N8yfmW/56w/t05VaEo06DwugVrTjg5
         St2BCWR9AAdh3toydQ0dxcwpHglsoSP5icto+5CXCZo02/degPS5JctFKWtxWHMuK0uh
         oasw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r1Rx6s1VUgeLtIaAg86wgW6xhjvgvD7uz/PmMsjExuo=;
        b=Zort2hLijIPPx73SpLCaDxo2QmKDZkWk3PnPN7GJIKxSUKRVTSoAxxXG/Kbe4DEQe6
         dhQaXP1057LzsWsCC1cPv8I+ASpyTdf/LkamORGFQ9WQIh4c07Ca/RkywCCBioP4Ha6g
         qAwhMLcTz7LI3QvojgUQBbxJyXgFChGH1MK9qq8345sxAxwqsQdlkOzc7P2vrJS8gInC
         2DEHvAHFucQOcHuXQ3k4QkFLjYR8vMfBRsqTL6Etg1weBMy0IocMBhCojV2jhiy9ehoZ
         aGR5ORvoZdTLA7DDHeuxuGiSbFK7bJkT7JfNj+EUGVbL/zmSLLhs6ABWnvihGxIzDDbT
         1gYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=r1Rx6s1VUgeLtIaAg86wgW6xhjvgvD7uz/PmMsjExuo=;
        b=Y6zDVgDfXRe+ec0Y+n536KRKkk7qg5syaCCExZlLTZj5RdqNXqiB+wD07U93rzfjUF
         d3j/sWRh33cLhevYAzNgU1NItl2JQiJkpdFHrUoPeJ+7Koy8blnR/rClsQ1eiIqi9uDN
         8hz/p2Hi+hZfj1FlUCOAIiRj1v/fDUUSbHMvTrsqbFyP218rvsf8dGGnn3PbuMIDtXrK
         3eURy/F4Omf5v/j6Lr2JhLM2yyVj8MYkCWAtcbdfHXzLTqbGYE0g0D0n1Wfv6gP96kBP
         JVBJfbtawCMNPrmkooqE42JVJLJftPUWplRFqdR25jIvZhIk4rMnA4mxtkq2G/188XZW
         5W1A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5314FA2Tf+OE/Ym4LM18Da6ILVw+/6kxX+FE0l8Nuj9WNx8ZnxlC
	esQ6nECbbQNXPQva5l/1OSA=
X-Google-Smtp-Source: ABdhPJxNxTLtEpDyJ3206ZNrf3KvmG8KpgAsBnSI4/AGtx2JNLd4HrAWZhlpOZUtWsKGqsUjHWjpug==
X-Received: by 2002:ac8:4c8e:: with SMTP id j14mr20689060qtv.381.1597790044844;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:8ce:: with SMTP id y14ls8563783qth.7.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:aed:2782:: with SMTP id a2mr19244242qtd.289.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a05:620a:696:b029:102:b6b:b400 with SMTP id f22-20020a05620a0696b02901020b6bb400msqkh;
        Tue, 18 Aug 2020 06:13:19 -0700 (PDT)
X-Received: by 2002:a2e:b6c3:: with SMTP id m3mr9961816ljo.450.1597756399011;
        Tue, 18 Aug 2020 06:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756399; cv=none;
        d=google.com; s=arc-20160816;
        b=vy7741CXxgA423kfB0nstm4fS45ynIVRe/aCegfn9ubq2yFPLDwaeWWC4GDXcUwjU9
         MtzPe1MId649hKD7gNwKrX4CFt+uN77OG3dF6uNJzsHvX1FXF9fvoEo6soMJslUladGL
         RkXeTamGETQ1b4nkVOKE8xC3eIq2foKDWr+AYwVpYdgJW3r19IDk2X6QBIDBWRLrz7eK
         dFzGvK3Xe8S38p+u1kw7dzRLc6tbUZ/FdRWs0I9F01qSzBi6LpdRRtsObfgr8g4aUjoA
         2tdWROBQMZ2iM35FVEPSZFQpD6Zum2h4hUPN7Fd2B+WBtKYK8NkfP8n5CssZAgk7tLlb
         TriA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=u6lh5LWsmSTqi9Ds5pCl9l4eR+3garWymWsPWK5d4Yk=;
        b=qbf1MAozRehtQqnmHJnUpa7lsz0EWXZMg2MPPzHPFghlF3KFV7vKjRcOJunlGqfkwF
         4UAecnzyM7SSv40xRs1Pu/BHyuxwVFgklfmswuJ4tsdotOzw9/lJqzBzMIUm28jaY+FM
         W/FBhl67b/Uoa+XK8K874aS1yVAiswlDkCU8FOcWvt9lU/ENmh/4Oif5hB13M4UoaC52
         5pRnu9k03/S+0Rnro6hiqDx1gPFb1Ka5Ut0qanvf3ZOCBgVuw5lFENJ4d1y/RWcmXzu3
         cpD7X5Q8pYmEadl2pGezIjorbXAqFAdRcdOXyoA2GZSAOndNwI0bi1dVOhcb2ABv04iJ
         HUZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z14si662280ljj.4.2020.08.18.06.13.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 2008BB167;
	Tue, 18 Aug 2020 13:13:44 +0000 (UTC)
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
Subject: [PATCH v7 2/6] nvme-tcp: check page by sendpage_ok() before calling kernel_sendpage()
Date: Tue, 18 Aug 2020 21:12:23 +0800
Message-Id: <20200818131227.37020-3-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818131227.37020-1-colyli@suse.de>
References: <20200818131227.37020-1-colyli@suse.de>
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
index 62fbaecdc960..902fe742762b 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -912,12 +912,11 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-3-colyli%40suse.de.
