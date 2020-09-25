Return-Path: <open-iscsi+bncBDLPRE656MLBBW4MXD5QKGQEGGGHGSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D7445278BB3
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 17:01:47 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id m88sf1292620ede.0
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 08:01:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601046107; cv=pass;
        d=google.com; s=arc-20160816;
        b=iv/jqjlUeZkoIP8dynRZhNistzuIjs1qOd1d3rBViRO6C3F2iTw+oafX8qH5vyEe7t
         tGAigKxIOOYKiEHYF5WCBEJq+oUsHvjjDPioALgGkFVB4HbfwyhcOU3wdxVPCP2LBPe1
         4Z/dbcuBiQj6oosGJkICDUSOuGE8F8/xRRvGPkBaN7Wd0tGhPmOdWJvz8B7Xmu76GUic
         O5DwlVI4KRRDwrpdYx+Ssi6FlTONF44hOaX7CWr6Wvt+JDkhm9rC/CHQqU8rrI1Rnzcg
         +wFyEGdZthfUg2reQ7zo7+Kdeh4lbK7rorKOZnaszprE1bkRdw52K3HCxAh4ZIxxjH4q
         PNHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=haFPd0PpGvh1TZln9ZvOcC9L2gxOwJLOeO82L73K71w=;
        b=IDqS5rdza37GxlA/+lBgcJi0SMgb7p6Vw9bXeqVgW/ssxGOCOi7gRFVyMXPtsAsy3l
         8dQLTazc/jv4ck9D1MFDVRGHP24eMes+kWChNaEz9HxRNSB0kM4QE7fOJYpHb29YO1GQ
         J/YwYr1F/U0Fc41cfWwpz8AeoETQwOSz8l0eazoV2z51NXEAzOqHvFCFlwTFwcJApOBv
         TCYmPWychS2waJbx1D5rEn0VNHKkUKLWA8pIsAPlXdQ7rRAjYWgxCcinoB9q+67sMTnq
         lAHr6ZLRizQKdWsUcs9eqic5zBmmL/TxZlfDf4yOnuOezTlBDR89zW4oNDgU39R+YWJJ
         GgZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=haFPd0PpGvh1TZln9ZvOcC9L2gxOwJLOeO82L73K71w=;
        b=jJLAFNBdJ+i7lHYTQk1MCuwkYTnOgMBov/KkM+W+Twc4bpu6LjmHH3RwV2WNLdgbtL
         dX11rehHoAWhHeMlQoy04u5r7PNqfmWEfImF5GKg5R5GrbE/fPeBjg5hgnfOoMFklQ6R
         9T007Y+hvml1tKYtXjKIdfUfQcXzA4mvUTcLVRFHIo/5A7dSRrFKBXPifE7Dwy9UPvmV
         cLSXxi35YFD5aKXBUGNTcJ8GPv0bRHwSJZ34l6plO6HJLtQvJBRh/5iWcQ4SY4NTmnDf
         oi8LCiCuGKBg3ZTUhMI8udpd+hkNdUb0jQUfpJ39jrDsmB4S5FXYUwlWb+D9nv45OOtp
         rkkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=haFPd0PpGvh1TZln9ZvOcC9L2gxOwJLOeO82L73K71w=;
        b=OiyhAxLyG4EF5k8ZGC0i2fVeHfw8lg60ltamQbhCsHtSNpTuoeI9q2VWFAdiMIkV5N
         747wI8En59dg92KiG1hsKX269ZyG1xa521xwF6224DgEiORRwKk4QjMwIuvMF+KWAabA
         8Wl7PXFTPTeyFtCqGHKfh5Lfqe8hdwxOSXi8Weip7iQLFvp6mRNgqLQiZvYOosKBVGK0
         gbGcbHvDFIWBH4oHe6eFGKIClFTYCZLuXchRz+Cy2BiEa7ZcBaTi1Sof0Z8TZXQjxB5+
         JeOXnymwbhhZbMGs6GE+6uY1EO6q9RuVULyczz9yaEB/9fOskQOORbL/0xZVJU12yDep
         Lq6A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530FHMDC6ZkpLL8XR92VXZ/RSS58HtUd70FObwX7xyH03TtwgNf7
	l9sR83wl3Q9ory15UhD5WZ4=
X-Google-Smtp-Source: ABdhPJzhj0O9bUwjQmc6XjJIuXL4QTcXySNyPsjFncXmDo964Qzs0okF4g7WCB5gGghAOxL0Z/I2Jw==
X-Received: by 2002:a17:906:fccb:: with SMTP id qx11mr3185961ejb.429.1601046107541;
        Fri, 25 Sep 2020 08:01:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a50:8a96:: with SMTP id j22ls3219280edj.0.gmail; Fri, 25 Sep
 2020 08:01:46 -0700 (PDT)
X-Received: by 2002:aa7:c3c8:: with SMTP id l8mr1808442edr.368.1601046106132;
        Fri, 25 Sep 2020 08:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601046106; cv=none;
        d=google.com; s=arc-20160816;
        b=Rbp0f5JCWjbirY4LSWs1wbB0hbrMJHfuOwYVdY89XN/GUDWyUb1xTGSW7z2PKZTalH
         GTljhPbaibRspTbDfq55pIOLgKDU9XxoDdi40ZgRp+OiKUIgCg4Z9mhku76qcGRirP1W
         Uj4WvrglPvpK7Xqia4oIE2UaVL6HkKKrnx+pI3mW/aCxI1wVMtiImxFaMXxZmen4Qetx
         ClPf4NQS5S71z+XgB3FQo7+8o3Ggb+Z8hD9kBEQBBltUw+UmHkzGpRlrfVHLBI2ndpHE
         HSLrsHPy7+Qs5C9kcMfqwOzxFmtdIeDCdVDF8l2LlN9EuHwgpiQmDB6qHJGvluEV9roX
         NKxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=0nsVQx51QNCIBn5XowjtD9itDxo+XOytIptUHsXXc+M=;
        b=E5BJKoq30S7y+6frGyaav7hZvVLG5/gFP6dxC30flHVBRqx1OJLBaZyXjsdQAQcHOM
         lEu654LzF0geuzFCWf0GSuaBPRWdZzCH/xAspubFr/2yGA66m7S3w6dUHvkiEmU6rQDe
         yCMhhcIlr/xQHkmdWhy5RknyeNNJygkgdeMMxkZhobd8Zlqt3LKnXrJs1xKVm7kflSCx
         MtUzRC4cA5R8EYVJTUVn6N+kIM5Y15SvhO9JxtFi4B+ft21CasM0ZdCnUWLDuXdc++0D
         YTkc52Lu/oABzr5u3xyyM8keFv9fviIZZ0WXIPWRqBALpyF8TDXHkt3qqJ6QVHkZCSfU
         3Kpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t16si75907edc.0.2020.09.25.08.01.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 08:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id A0E5AACA3;
	Fri, 25 Sep 2020 15:01:45 +0000 (UTC)
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
Subject: [PATCH v8 1/7] net: introduce helper sendpage_ok() in include/linux/net.h
Date: Fri, 25 Sep 2020 23:01:13 +0800
Message-Id: <20200925150119.112016-2-colyli@suse.de>
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
index d48ff1180879..05db8690f67e 100644
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
+	return  !PageSlab(page) && page_count(page) >= 1;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200925150119.112016-2-colyli%40suse.de.
