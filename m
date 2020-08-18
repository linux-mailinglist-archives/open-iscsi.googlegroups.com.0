Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id C78072490E5
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id a130sf14182720qkg.9
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=jceOMYhHBbXgvE1xG2EXtretPWjcjFNCTnNJ7OGjbuO/KAi18rkxIbKE6oh2OSDXP7
         MKoWV68rhc6v8ZmTt2z9Ne3nLrwSmPxT25LpdxQLwV3FF1Dp8YGF7tji26WmLc2NyqnN
         B8rn+OlbcMWryJ3e5CUmKReOWKnq+aadmS2qBtqmIXAGEQHteRgg7PhARqXFlB6GJ9Qw
         9BdEHtHEmt+U1DKqgkEZv6+v1EF/MschaEa98rYIXlwDzHySvCUSIJF0/CnH5hnpF5NK
         8gHGvBIHkiF0KhGaGRHA0dh1hlq+jm7TA2QkKR2YPMon0+MW4pYb7Pvk5mrxBY+7Mn7e
         m7hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ljKPIOyEcto75LVIAKzlIDEMo+yJibv6Dc9op5kmuF8=;
        b=YSlv+6wtA9Z22Ag1y3NI/JdrdqeQIsYS+YPhuaQjYly390gx6AolhHj57gU7qETaz5
         Y7LbKiAGHxEjnaXZkhe1RH+d++9bTaINwx1q0R9iwGrWDcJAMihN1D044Gk1iNwYN8FY
         +0QR+Th9ocCeY1kXhkV204nTA0ezy7Ter3f/ojick1qwya4FLF3hiQt4yZ9essvZhufK
         +WrK8ovvCr490ZOmsvH47rbGnYoqBcnlOCNWXFgH1ZJK0OZpqHZId9GMQY7xifF5/3ac
         HibkzP0XZid5W2XeGF3+5GlQkLNpbtHw51T4E/skvA1VdP0CU6WDlybhi78qZvrsQGKT
         7oJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ljKPIOyEcto75LVIAKzlIDEMo+yJibv6Dc9op5kmuF8=;
        b=OZ5i5ZNQGwCzS2NAeIRDAHAixqA12dtHkNVs5To/C04w8PSdLneoADILqV06LEHNC+
         uaJWYPlsxFCbpHH59glzFwoae5SOBFA2xALH9NLrwuJiPvfyKIcH9WQOLMCp3DBnY4mR
         Dru4o2O0fwR6bWhe4CgYYBe3xvxwKleMcSq4VSlK8IW/qO0Jk8PA6c+pqgiwZStz0nKC
         eWbeTBbpjfrzaLDHs/XtP4j4cDuKOGQ6rZLPXtg1/cccFRBqVy3/mad2ctwGFxoT3MVe
         GDSVGN9HOqC5kMezE7HP+VrqLEE+zxvbvPIJNu+585zmAx2KdtLLjmz2mZRJ2/IPBre0
         13KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ljKPIOyEcto75LVIAKzlIDEMo+yJibv6Dc9op5kmuF8=;
        b=BPcYhHhdU6uMAhviRPsLsGoPXRA5+HQcTIa6CnydZfxkHvYnQv4IHleIuZUQVqBBJC
         JULh/IDY+JkvBKPBdComM5EWriZCwwXBxk0VK7nfWrkVgnhtQ7SRJHwIb5ZGOj9foLNz
         8WIqwIcBlvh/BmXaLPt3kCZUzhZGQsQiNMUWbk8JePLdghOnhAmlGNfUFWtMyx0tQ1Hj
         XVMgf+jODqxOU0FZvsLY+ty+qi9vuWwsRPF2a/aXifKVJ3YpYp490SxMrQCxSX8Sen/w
         Wb2e2+2ZO3nD+O1AYb19ikn2WgMasjAtNeD6PGuJ20WNhuydcRMv5T4MBxawsbrt/Q+p
         4ITQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532kR3Dy2jAfqfXxBVMHXxsv++EjBWe0E8drtOZTIJLj0DK2L07g
	yETB3IlPPRm0ZkMQQPO2o+4=
X-Google-Smtp-Source: ABdhPJwGOFX2BVdHMXmFv17/0hb0ytlkXJ4NTIap75q2GLqT0mH3o1Akmw/XBd6AwdFUDMzj1n5weQ==
X-Received: by 2002:a05:620a:22e9:: with SMTP id p9mr20257579qki.105.1597790044848;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:fd27:: with SMTP id i7ls5461045qvs.3.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:ad4:5425:: with SMTP id g5mr20995982qvt.198.1597790044685;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a37:b11:0:b029:f9:71db:3eb4 with SMTP id 17-20020a370b110000b02900f971db3eb4msqkl;
        Tue, 18 Aug 2020 05:48:01 -0700 (PDT)
X-Received: by 2002:a05:600c:2302:: with SMTP id 2mr19935820wmo.151.1597754881431;
        Tue, 18 Aug 2020 05:48:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597754881; cv=none;
        d=google.com; s=arc-20160816;
        b=PUQzccBSBl2XQHKsMLBjqlyKwaxmVfS07JUBs7jyUvrtsmyU6o19lrzF5hYEzhpFLm
         pw1zIORYTf92eKgLwbs7av05fRE0hXhgCb2z8ZPSe/KFvBKCysD/kTwsxVbLXbrA0/2+
         lTJZEc+1LN0xN6Moe5Kie2bGsHN5YpmmqAF1m3avMG3nOblNNtcfELb0lyaaeM4DXmQT
         sYtHEapJHiv7f1aqTkxDLUJ7pyKm73nucT2jauGSNJdeAhefNnuwYrkJcTnAembqmlJD
         Sn/V1cA3LMRhtP9+ZhQHDq7hS0Exp7ZT51zABX8ho1BmeEpMCD7cMwlyzWl+TfcCGctk
         xHkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=DiXnTC9DpdLmYwFlIjWmqSh4Re0DVvbJoOlFesADieM=;
        b=w2rVTRK9usmjS+dK9JEn/S6NjPnJazwkfwKebcd+c20i7jkML/1v6MCm5XBNbN/vLA
         GjG7IHxy9O03SCl6qjJx8VfwkN6BffB9Pb+6P3xtRzSLO7yd8+fp8hlVIg5Z5ORfofDh
         kVztXNy9cfUGIt4KwRm1tmeMdKxPSivceN4cb+d/EtzjkCTgigKALrfJf4d765hcf6hu
         vC+8Dw5+vszMJdnflT5f6IJuAzI/Ij8dOEkW0kvnhP3zSrTXI+lFAkARifrnCuwFlOOY
         LvlrBgf+5PMwSdxYu77214d1I3u4rAaB6slmtyEnXFoa6cbMq4EtBX9I+YZld2Eq6F2e
         0qEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a67si789760wmd.2.2020.08.18.05.48.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 05:48:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id C8668ADF2;
	Tue, 18 Aug 2020 12:48:26 +0000 (UTC)
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
Subject: [PATCH v6 1/6] net: introduce helper sendpage_ok() in include/linux/net.h
Date: Tue, 18 Aug 2020 20:47:31 +0800
Message-Id: <20200818124736.5790-2-colyli@suse.de>
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
index d48ff1180879..a807fad31958 100644
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
+	return  (!PageSlab(page) && page_count(page) >= 1);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818124736.5790-2-colyli%40suse.de.
