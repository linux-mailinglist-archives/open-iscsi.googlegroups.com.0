Return-Path: <open-iscsi+bncBDLPRE656MLBBTUW235QKGQEEH7UOYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FDD27FAB4
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:54:54 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id j7sf1721929wro.14
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:54:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538894; cv=pass;
        d=google.com; s=arc-20160816;
        b=hR5JttFv5ObB1ME1EWEPOalVU8dqqgpftEVVILV43Du2asoXiQF7h/EaaRWd19VRLO
         lrBmyUvjEzM6/xDucXkK1rmMKVjSkVqxZR96PIYxrip/EINAoLwIQUVfLH/LS4WMaGor
         Jp9pz+hl36hy8SqPNNy8yrVy9k6l2QYUbVgZBIJiGeRzwwweIjUKHeRZk3YTZwXUPZs7
         U1Jj/qOB5L4q4syqyB/VOa7WnbiPW/H42UX10geK9g2/lv/oWRHjlyrsKvSCxYY/19de
         F5u43lRAJZN/n04ne5+l2fzjVp2pft57zQqyQTwv7gjVVBCBCVQDMfEg5XAlyTAyQmaj
         4ldg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=sjPAadteM2g81hgx4NPGVFiEXFTRoA29v0r43KIbN90=;
        b=pASP2zn+37u+12YZ3EPoxDEeNXA+e9iO8bMTIsuovV3QvwX55o8oUxlsUgXFA6uXS9
         2WsdwWb/Q/GfxcjS3hedqiTfxh7+T6Q5ROTezyxGASYFGLxnaMvUqLXWkLs8J3J5v8er
         Zfu574cZSzkk2w9Kknm4pUr+yS241KaBxqkHsGzpdI9tQYP4e1iC7grtg4K87WZ7jIQQ
         F4CH9Yop/yOnUNMW1W7R9Llnieq7dRRtsDRPUEen9d4DF2zywHg3wSasP8Rbi3eObO0h
         1qA+EtU/RrXlok+OHXDuXbt4zszpX1/4qBUSl1pwUsi48vfR+OwshDImwqURSme3FM9t
         df1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sjPAadteM2g81hgx4NPGVFiEXFTRoA29v0r43KIbN90=;
        b=bSQ7Ow0XdDddu1ytZtD3xHVvmSgGPT/sOkNzsNBt1c7G6Jg6ft7iGuHVG+ZGqPOjlA
         vv0t0xkEsYp1CAfGAZAkGKRikAs22uTxf3kAADTsa5WAbYgEvIWeaLT1XXSuZHjsSD45
         E0KXjjrm1JorkoDg9QR1eN0CxjfVAAPECmpFC+bjcCFA32L1n/A2PMY8ZiyZx54tH7Xi
         JmuZo/fz7aKLSklaaibEEPDY/dAiwKkRT8XCCxB4XJgKLNrMdpNE/v5T0AZhfS10Jvg1
         jIB8ZmNbwAAC2XWRvWLWTEE+b+AzhA50DVhCYxt/1DcBLTEJa0qBAXOYYKhHtTnnT31X
         ARZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sjPAadteM2g81hgx4NPGVFiEXFTRoA29v0r43KIbN90=;
        b=HYH/GiAoYjAMD32tzepGjODnb2P9fQE6XLEx6jD46KfLlRJ1tjMhng5XBmlI5Hi6BU
         LVrPddueeqisRuwBWAc/4utl6RpLvOVAATQTMBVov0oocxIH9NEZKKnhaAPyWkUuwUen
         +2MCC4hvCQLuIFSyLfMXl39EiBcGekL+tcUr6iX86QisqYHEdDGssRUFWh134N3SFDP0
         1HPkIknMVk+yR+MDFjRXJfc0mWWTfRCgVlsbHrcF6Yw5jApTwE45kBJUEeB0euA1q8on
         yyR1zcuoJAh+vF7nr6al9kbzuJj9/XH41B2C8Y6lzMrf+s3d3EIxI3RNL/iC3ju3Wdtv
         P+OQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5323X/ztoCl3qw47oYNI7xQDuUZG/mIhRqAc2UKZs+LWVuKO+a4i
	Q3yt93tv3CTGm49zadyMRoE=
X-Google-Smtp-Source: ABdhPJxhvpRHh+6xH3PQx3T1txH2BmILhwJjiUHk+LL+mPEh6q309/Auk9CXCpJasVTM4Y486V5ndw==
X-Received: by 2002:a5d:6343:: with SMTP id b3mr7799855wrw.179.1601538894269;
        Thu, 01 Oct 2020 00:54:54 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls3393540wrm.2.gmail; Thu, 01 Oct
 2020 00:54:53 -0700 (PDT)
X-Received: by 2002:adf:dcc7:: with SMTP id x7mr7418285wrm.203.1601538893384;
        Thu, 01 Oct 2020 00:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538893; cv=none;
        d=google.com; s=arc-20160816;
        b=JnUPJgYcDdJnrq26RLCbkzRmasDvngFA7huLjLzxCGSCmlPCNjGtr76rgPwPlst07Z
         xr9fk7202Ubj4XBsc/QQYEU6GBPBXej2wwDcldDoallUoszHDw80U2VdbZDj7AoNBFmu
         +BN4yEvtxjEOsu3nKYc7lDlz9rLcda/8U6T6Zt7Wyao/ibNvqnjGWT5gVTHh6aSa0N9b
         wjooLGD4EXY36hwYti0ZliLzv8QanIN0VfRjp5ynHYx7P9ZDKZnWg8XcO7oSJOuBpUDT
         jm2Ldv3JMqcnk9IWjzVc/plRAIGIIcL4uBIHj/jpzvKwNtzkeQUoSZwenV+Np3NAWbXa
         PW8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jlP9uJs8N1dLuhXyn9htTbd+21VDbVbTbOTVrTcNL7Q=;
        b=hHducn9D4CGeKtXTiiHEdkW8+pJ5wdVvFtqyYURq88qdEFGwDlB+sHmy/2tZZ+qp/t
         pZ0XX6AZWT7LxaxpA6RzwA2bHK1y54iTAh5lPzKb2f0qmlheXWOe6oz8MibJz6BRQFC/
         /FrxAju41xVjOS8FnrZ6//e21pO6PsLFYk3wGi4f7aLUEInC0DDpCpp3UjQLPLNK6bIU
         OHbJ2+luszf1mP8aqBBIAGgFAcriLlgZGbPLUTYZ+g1IroegZCZyF1HUdQ1GxesiH0de
         02oarkuD58fsX3WaIBFvzHRG57tdsFSTtY5xZzHa4eqpijBWN011Xp0g1XTpA2Kac/hN
         qdNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h2si70295wml.4.2020.10.01.00.54.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 14467AC83;
	Thu,  1 Oct 2020 07:54:53 +0000 (UTC)
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
Subject: [PATCH v9 3/7] nvme-tcp: check page by sendpage_ok() before calling kernel_sendpage()
Date: Thu,  1 Oct 2020 15:54:04 +0800
Message-Id: <20201001075408.25508-4-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001075408.25508-1-colyli@suse.de>
References: <20201001075408.25508-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-4-colyli%40suse.de.
