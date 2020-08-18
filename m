Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B4D2490EC
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id l10sf14335790qvw.22
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=DIwkWuuInDy45t8IFGEP2hs6kqci0nBuwSL0sncUGRDRIOPXi8lRmR5ib32nW9FOWR
         ke2KZIqxFyS+5YWSjaFxz8cW8TklW0fnOrongR4oTWcDnL3piuyAIPo+oUvO3MiTcG75
         1RdS6EsB/L4Skaywg0846+dMGEXM3/3zQ2BxsxjO4K9omJjckf5YylM5QGTOt1+n9nmz
         uLxLhAC3+eRqPaWe7vtntexYs/prm8C9RnZPCzhUa6lmJjZdRhUQC5X91YZMbBvGqRY4
         8+lRmCzajRo5f2ZyzSQ4V6ZNVk9n+9JhvV8VVtfpwxzlGIbAFBqvzSKtM1Uu3htXKEvF
         zeeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=9/T1FXw/QOeq25YDMriBzAGh1Q4MZof16tr20ycuWqA=;
        b=UOQcI082RAQhx+LKxpjQEqEPJcqRVxXDHv16Ic/QYxHRKO5YGkR8umw26N5YvkJoDu
         IYwrD5hZpVyxlb+6cIEvvXUy6VrjorZ2lsw89xOgO8ckjCdxCajDOxzjJHj5eItNixLG
         zOVKHMU7xGZ9mHcs0udJGmbay4QBVWyrjJ7juUCEPKEDdRrQjDWNAeeB0NT/CDKFdRtf
         8alxrmSD2d1P0J2LAJyEVDNIlCKqzG9yFadzGtGWjeIw7TqUYhcD5g6/MqThFperxu8U
         rp0lYz6WqBRaIOH502QX6PtfvUOv33AdtBRDONm9Rpd9eBFJCydkk1t+UfKK9IBLQrkh
         HsTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9/T1FXw/QOeq25YDMriBzAGh1Q4MZof16tr20ycuWqA=;
        b=YUwzyEde0TmK9Q4r5ZnHYufplzljqVZbot7qpa/0Ek7Gnl02Y67rTJqqSJ2XMUckBR
         yoK+youVtljGII2ic/9k25QI9X9I7Mkm5jhYpTeRGA0Yn/co3iqKJQRegYM7H8MIU4KO
         c/nBaPJ9MaQUZ6byNIHDZHlUb1pcnmvntZYhfBjlCXH+c1j8h+CaBjcIA70VrWn6Cqqo
         WWYUw0DUG9E42yS5Uwx3B8HE4Ivpydag7RNek6H/6tDjDZiyW8aCqwbM5BgN4F+yyUK5
         b828iSvv+NHfs+dZiXLWRsiSFUWcaT1GOnxNLsp1HUasm2tIZYq5qCI//E3OBLpcA+Ny
         DvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9/T1FXw/QOeq25YDMriBzAGh1Q4MZof16tr20ycuWqA=;
        b=rbFYCGHZH4xeyZcWGKBK/zZmX268fOPJ3z+UHGt3z6WSeADDQbtMZxLYO2E6y4S3Oh
         iKvWiRRxx2VTDS7WqAuxe0LJ7FjGqzKeWzQ50C9jEuLO6XqUJAYKIFj2roqw6MyKhSDV
         7M1f2skNmxD9gEPrk8dbP7/NfspRgmOZYbIVkKSL79eONRvOoa//tT1+Z9uiGwLmjdxQ
         bUnSsKPpJoi99wYFmGG4skjlEaPGC/kfQFIzWSnBNyR7A5HxtBoHhxl7ehyUziGFJSqL
         ItN0a34SjaEUybKiZ2AW/zeqVrQzd3wh4hFcZDijVXHmjv1ruCiSNujxd0iQ/gRFZfpd
         dt7w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530zXcfCVq9tUF4j09YRISJDEz9nw4ns0RYtXrkboWadO5QrS2Pn
	9uFYdaaYIJh29u7ROf3VgTM=
X-Google-Smtp-Source: ABdhPJzi3z5zh/lLaU4iZH+VVfS1gX3m0G47RexouT9DJ9HPGeGKKmaCbs1LFro/WYTK3O3qaOTcEw==
X-Received: by 2002:ac8:4451:: with SMTP id m17mr20378612qtn.299.1597790044875;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls1322793qkj.3.gmail; Tue,
 18 Aug 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:a37:62c6:: with SMTP id w189mr19149139qkb.106.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a37:4e4e:0:b029:106:320:f817 with SMTP id c75-20020a374e4e0000b02901060320f817msqkb;
        Tue, 18 Aug 2020 05:48:16 -0700 (PDT)
X-Received: by 2002:a17:906:bccf:: with SMTP id lw15mr20932862ejb.415.1597754895692;
        Tue, 18 Aug 2020 05:48:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754895; cv=none;
        d=google.com; s=arc-20160816;
        b=fYf+7ENkyZk3HKtEKA+NWvU/LrTIBnGRn0dxzxdLCpFaRwdLYCkPCpPSAebXvB5LkY
         hJBfqZ+mszpQ8lvBW2oMeyRQrujwc6EtYmH4BBcKw2cF1Fe+TF1291U6XPlhO0hGbf8W
         hwthFxqy/ikOdjWi3cs9Mv4UhuD2tzXQGYGDThX+WA1/m5zdisy1Bui5lyT3egkgSD+e
         8XcFzcOn8ywTc4Bwz8q1Nduw3ue/YM9b0ZGWMA+mPUN1AimLk4ZBixIJ/UWaKzq2l+ns
         gJ8DwI/U7ZoyXaGo9Sgxr3u23QyjshWtHIkIbRSZnLFbEOxlKP8qTvXCIpyiUI7JrJQ1
         kRIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=u6lh5LWsmSTqi9Ds5pCl9l4eR+3garWymWsPWK5d4Yk=;
        b=GHsdvunuMTUUhwDVqKHVBp9LD3uQnigvW2dXYnyrSW4O02OzmX+fRO7zZxCwpqM8xK
         uEuXgDTjGv023ZYkGEWO97p89LFSiB/ORtN3uXiNo1lAkJOEwBhrk3O7y7Cl8OD4vRAj
         tO8+txmFZe4oFlWK3at0eHagIROLNup4gCZSDxFBPqFD8i2ZLkSlcTTwY6uO911KGe3v
         X9Nl00dEWeT9lw24pJsDyapjwI3Mvx5/ExHWRhRhEk75OPAzWWcftKYhdYkgJEhE5Dl7
         bM6CVcg5fBm/nVmUImk5B9OlPhFd5owdpFSqLu61ykLWSRrFN7US0/ynvondC/gA+WJu
         HU8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t30si652905edi.3.2020.08.18.05.48.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:48:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 971E6AF57;
	Tue, 18 Aug 2020 12:48:40 +0000 (UTC)
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
Subject: [PATCH v6 2/6] nvme-tcp: check page by sendpage_ok() before calling kernel_sendpage()
Date: Tue, 18 Aug 2020 20:47:32 +0800
Message-Id: <20200818124736.5790-3-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200818124736.5790-1-colyli@suse.de>
References: <20200818124736.5790-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-3-colyli%40suse.de.
