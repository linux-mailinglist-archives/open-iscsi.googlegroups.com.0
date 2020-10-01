Return-Path: <open-iscsi+bncBDLPRE656MLBBQ4W235QKGQE6KYSCBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 345C627FAAA
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:54:44 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id f22sf1010959ljh.0
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538883; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbsOw8agS43a52ZVadhhd416EIMp+fju93wan8IPJ/SYqKsIFB6m/yuRfZ/bElGetI
         TP5Kjdhvuw7ewIqBFxlo0EX2RRTQkvqRaClrO6frNAHjJUTLA6oPo/noAOhqclyowozl
         sC06gOBjerh1UDGN/rvMeMNXklPbWFcjA/fVvX6tD/B1PUzAoYNqbbmC53N1ClibHCUL
         P8l+0ZGPwYFCwHDePlztzaNl2FXX8ye6hFDwlzWSAeFLOFHvys+mjoAXL6SYZXkooMfL
         0PlycqyVKl1Ws+dJ9NCnv3jZgjCU2aac8x/kv/2wgHidHKQYM2spkNFCImd+beSHf125
         YCQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=KfSXlES9chv2w6FXfc0Zo7ZJR+8dy/m9RG9ZzYa3qdY=;
        b=BQYHujnPHqibMAIkZkUsDS5T6uTH8v4cbt30QrPKFZfvzvXxLN1PdDeZXNsu3UVsVB
         ITTMd62tRQnaUSEfSVYosS0Z8qG2+VjLr1pUVC0+SLlD3myvNXj7PYDH/boOcY78+de2
         Pw+Qcyn83rX1rvIOn1wgVtx5mJIKbU8mYkDMpWblQt+9xTk24QRBcXbpSTxMvZldVTpm
         EhH7POm4vRwPAGLBnxvhXASX/1VX7Bw5LGoDX1KqZw8biZ0VlpvjCXWfPHWCzT/0eaH9
         qeYe0WK3iQg199NJ9gjH87Ipx07RTnJwZ6Mpwl+tx7g6RUcowE7sMduXygquXPshKmrP
         +qYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KfSXlES9chv2w6FXfc0Zo7ZJR+8dy/m9RG9ZzYa3qdY=;
        b=j5UHATk2PhwfrRk35unKZDVczAEJpDxmZyivQODE2vTrMm/+YZ2DzSad5BFkqEE+Lm
         s7HcPZDUpVVpDAS8JztPFKCKfJyKLGtokEmcCjzuXqt4xtPr6BzBBhC8VwKRBGCfhui1
         sJ2WcehyRBMG+KrjTK+CZoOmhLxu893twOy4T90L5tbrqNRjtqYtXa+tE+acQCFbTQEG
         CUpJDlbj+7mtJ6fl8HEyZdPSKEREAtATUo3HjLSVvAnPoa0YbSXCK5n0Q87dcmzVCY8x
         SIITE0Uz5IhoSEA4HVI8Bvhshfi5YDZ580VzM0cHX+MaL+KpNtkNyMfChw8eLT3tJK2w
         3DHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KfSXlES9chv2w6FXfc0Zo7ZJR+8dy/m9RG9ZzYa3qdY=;
        b=R0oFmSKmWfLHYQMCo/7eB6BlgRUfDcBV/GQpH3gPRR3vquXSNd4RwlRNM3zI00JcXR
         R6c2EsSiQasG8mthHAThzH9ybworIgWIhIc/eV0055rN9+Vv8WuhzqRIU5TxVMiOii1d
         QBFsfZiiuAESPvP9OnRv2JcM4N1FRoQNzpspAjLiErbXL1JXC8t1MvB3SxAiI1M9RxBI
         YJjWzIPIJ/Ftgk54nL+Ak4HVTMV5HOoCxEK1BJgjIdCi0vdaOic9OwRRi1PWH9rkzUIu
         DQo/+j+84URYJ4/ndC5s+Hm1NL9cOBLKtH+/kQ/GBWN4Eefq5srrdzAwKwfNxHLmQ36H
         w3og==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530XaYL7qFnpmst8uoJH8p7sJxSihbSiU2KhLf00nZ6h2auV+b6H
	GrD8l4tIzn8p5XVntCdoXHg=
X-Google-Smtp-Source: ABdhPJya5sc8AoH8X6su2c+Lw6/8hvL7QtiwueJsDmKqiQRUWwiHCAoiOxRcOp4FDYKi3DoDD5c4aw==
X-Received: by 2002:a05:6512:3399:: with SMTP id h25mr2387477lfg.524.1601538883612;
        Thu, 01 Oct 2020 00:54:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:93:: with SMTP id 19ls682758ljq.4.gmail; Thu, 01
 Oct 2020 00:54:42 -0700 (PDT)
X-Received: by 2002:a05:651c:231:: with SMTP id z17mr2026351ljn.231.1601538882418;
        Thu, 01 Oct 2020 00:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538882; cv=none;
        d=google.com; s=arc-20160816;
        b=Q9i9iMM0MNk9a9G2NueUCCTTCA0LfVGzhFDGqUhE+RcZXpaik+RWFBrXjEsLS2KPIi
         vLEFDOu0xI5xzQQg9cm7PyoZg+OrXN3zluU9KUPsjCXG4xKyuvci5HlFMJnnokkSGOlG
         QLbkS0r2VOp3+WGyRqeoX4XXU836MwbMnKKZJhS8lwkoUtV6WPyFZztyOqLmvduJxhSI
         pzS+RHFjYo9iDt1D2/AI3mME8+J+jFi5SoK/X5ajdMPbZJTmImKtaR3F6CJSRT3XkZD7
         h+7dAag6irD+lfaBptOAybYBQECPf5IMNWlFrT1vUVjjt5q6sP5qVLlnjoKrH2w/j7NG
         XjwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=kAyH25uGybhJBy0idJMvxsSK0HDGJixB12FCl9IYRlE=;
        b=vKRf0JN7fqUNAHK81BIKvxG8eEgjJ1H8Q+Mr60AifdPM4hq1NJmOyCve7G6CxXoDEg
         aCzK/7nHjmWZBKTHz9gikaX3awNgHv5bK8tOniI+5QLPUNpIOAwc+Fdr8Znnc19fyGUZ
         YS8lEd6+Um4zf7CJvKi0rtiBCEU4CIp03sZ+eQOzGCY2K0/2fZVYrsrP9F4RPJq1uRaM
         yNbCKY48mGTCMXdgR4zUW8xRcT0qVC+EIk3tWzLbC7R3QCXrgr+AcaMZIx/Djka1B341
         elzyWwNJFHuahpnKVwYyJkNSVg84zgHq1mRfb4714cjHSrJW1bI9WVllCQGTBJ7pm157
         c8mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id r6si146838lji.4.2020.10.01.00.54.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id A7F5EAC83;
	Thu,  1 Oct 2020 07:54:41 +0000 (UTC)
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
Subject: [PATCH v9 1/7] net: introduce helper sendpage_ok() in include/linux/net.h
Date: Thu,  1 Oct 2020 15:54:02 +0800
Message-Id: <20201001075408.25508-2-colyli@suse.de>
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

The original problem was from nvme-over-tcp code, who mistakenly uses
kernel_sendpage() to send pages allocated by __get_free_pages() without
__GFP_COMP flag. Such pages don't have refcount (page_count is 0) on
tail pages, sending them by kernel_sendpage() may trigger a kernel panic
from a corrupted kernel heap, because these pages are incorrectly freed
in network stack as page_count 0 pages.

This patch introduces a helper sendpage_ok(), it returns true if the
checking page,
- is not slab page: PageSlab(page) is false.
- has page refcount: page_count(page) is not zero

All drivers who want to send page to remote end by kernel_sendpage()
may use this helper to check whether the page is OK. If the helper does
not return true, the driver should try other non sendpage method (e.g.
sock_no_sendpage()) to handle the page.

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
 include/linux/net.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/net.h b/include/linux/net.h
index d48ff1180879..ae713c851342 100644
--- a/include/linux/net.h
+++ b/include/linux/net.h
@@ -21,6 +21,7 @@
 #include <linux/rcupdate.h>
 #include <linux/once.h>
 #include <linux/fs.h>
+#include <linux/mm.h>
 #include <linux/sockptr.h>
 
 #include <uapi/linux/net.h>
@@ -286,6 +287,21 @@ do {									\
 #define net_get_random_once_wait(buf, nbytes)			\
 	get_random_once_wait((buf), (nbytes))
 
+/*
+ * E.g. XFS meta- & log-data is in slab pages, or bcache meta
+ * data pages, or other high order pages allocated by
+ * __get_free_pages() without __GFP_COMP, which have a page_count
+ * of 0 and/or have PageSlab() set. We cannot use send_page for
+ * those, as that does get_page(); put_page(); and would cause
+ * either a VM_BUG directly, or __page_cache_release a page that
+ * would actually still be referenced by someone, leading to some
+ * obscure delayed Oops somewhere else.
+ */
+static inline bool sendpage_ok(struct page *page)
+{
+	return !PageSlab(page) && page_count(page) >= 1;
+}
+
 int kernel_sendmsg(struct socket *sock, struct msghdr *msg, struct kvec *vec,
 		   size_t num, size_t len);
 int kernel_sendmsg_locked(struct sock *sk, struct msghdr *msg,
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-2-colyli%40suse.de.
