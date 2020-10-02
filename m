Return-Path: <open-iscsi+bncBDLPRE656MLBBEGJ3P5QKGQE444ALJQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FB0280EC0
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:01 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id 33sf277398wrk.12
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627281; cv=pass;
        d=google.com; s=arc-20160816;
        b=u/dZSlyHmIoup/9y7yobpPgY3jpV8AAUPma2XRYtsmoTAJ/JO1a1Mce7f3CcN8jgHW
         95y2V0BazyyRmzJeyGdf0tD/CisBjjWsCqo/ik1kPWNiQdAl0Fqtgd7JBLF7hMIFe+Q2
         /SlBkDfuBc3UFjRq9fzxg69MIEphUqjFkDfBc3CFLzyOM3r9AnJsdsXXbNynXzrCSLnt
         HaE8l1s7fGnV29Lc6eGOcd0mqwNpTe0YDj/3oHAQ5e224Z0Vz3Ryfczfp8LQy/5Awkxc
         BWygxhV/69OcsF5JAAJZrkD682MSZZUIZbUurAqh7lRmPN4ohVbz8P/m/Lz1NEqi1m5Q
         0bnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=8M4p1h8JcMP/M60y29C2q6MQrwpAR0fcLmU+v+c4pk4=;
        b=tHPQD52dxjbVxrNO5EoCZ/NtLsPuVFUEAed8hYSuVVli2j/VgjlaByLvPjk/NF+64a
         uVHU3WkY0Zc2zH16FJykg5UyIauW7B7/AmWmplcCk2GHYdWqiZ5TAzRBVFtSUnpdDJg7
         pWW5E2gFSgaIzXztV52XtgEBODpsUydKhw2KrQywh5TTLKOVdh4wxnfcsKXBjUTK+ozJ
         sNGVgkEeY3CPDNpWTY0qZkKIux/ZoEH7KDUhZkjhjEYgjwMmo/C54Y31df224NxfE/HG
         P7C7koS7JJ7mXbgjWkixu37JiiUOsxMz8/WvUwG6gk9E0Rv+3pc+Wh3T1LPheqcDpuLq
         StPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8M4p1h8JcMP/M60y29C2q6MQrwpAR0fcLmU+v+c4pk4=;
        b=HcJi35zbYE6V/3qwKyIJRCQZlZg1c1JpWNxWNavHC2swsEkkO+YewNdZk1xDckFg2w
         oPpVvbQ3IMzQTu6ysWvxL7a3OsXOOrlq8BIcc/IjZWSO9JpWjx0D8tRJ/yS7F4OapN/f
         DtfY6yhaeLITE481HukcEprWqN7/X3mhRqtIK9GEx4i2E7rrZlUu2tGsg8cmIG5Tkdka
         4r+8x464k+5xL8UV2LaPtIJQIeOkrKhTu+Vl1oeE5q9RzqNoHi79hFMKt8bFiTT1PZB0
         MbUmDBVB2nY7I3qw+gIkA0n2OECpPRGZ4pm5frgBCacV3RMmmb1paUXTs/gV/slVSBJY
         C8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8M4p1h8JcMP/M60y29C2q6MQrwpAR0fcLmU+v+c4pk4=;
        b=tv9xFyv+hFTQLxYbEdbdBFni6KkwB385SfnxoDTbLocVeF3lNcVcLeaNc6DD3LObqJ
         vW7ESR6U7Szl1FQFRulbzOUxuohaY/1e5SzHuIoUd4ezD7LluoctgYdELtYIU7U8IF+G
         X8Wqsse+/o076NIuDu4hmcaCXFtJhSAP17/6fzxYaUgVVjRRuHW34/ieI/UbOL8gN/+r
         BD9nSywJ53hYFvgjijFocPk9Wv6zvnfaeYKWRqApRyHeDPaSyti2inPXAo00S01MrIxW
         20lU+/Dd36ocVEtyjaIGymErwrlLCjULngRSbxU4XKfpu13jK1oYtQgYFXnNqJ1lEuqA
         +Idg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530H68SWRH9NmfRZM2Rhf0Uf8SvwXDKDKj68RDsc1+a7Ges5eter
	1qIZgUbKYUCMwz+5hoxpMJc=
X-Google-Smtp-Source: ABdhPJzX1HWfqHSwPHHyTxmTUhrBTI2YIs+RjuZdFhdhpiow/hLxN2C0QV+U/yKydUEtQ4yvI3y+cg==
X-Received: by 2002:a1c:7c1a:: with SMTP id x26mr1607645wmc.112.1601627280940;
        Fri, 02 Oct 2020 01:28:00 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:98cf:: with SMTP id a198ls432542wme.1.gmail; Fri, 02 Oct
 2020 01:28:00 -0700 (PDT)
X-Received: by 2002:a1c:4683:: with SMTP id t125mr1579628wma.110.1601627280027;
        Fri, 02 Oct 2020 01:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627280; cv=none;
        d=google.com; s=arc-20160816;
        b=LlWSW2bEMvh6lYHXdTjENQAx5lOkdpXjr535kh0fm9YN2EttAMCTMpQTB7GTtO82hs
         6rjjgXxWVpomSWOnmRkboBK6vAhoxkUmm7z3zp6yLLbw1do5zqKQX81MDblsvtBpG18i
         uc/OrmPT8Ux/woB1EU5A2kQ7C94iRJa3gtr7HNQdh05sJOMt9lDHbUh0CAGQE7dYHGHG
         /87jFK/ANFNQMN6iIFMlJVLrYErFqmf0Z5WyebD5ABwsdmGX17G+biL4/EtEWlGaL9n8
         tY2rIvKY352LDitAmFl1/fjllBDRcGSElRB9YZkWQMZhbritAMb9YkXDzK7Edplfi8/k
         meNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=kAyH25uGybhJBy0idJMvxsSK0HDGJixB12FCl9IYRlE=;
        b=nEZkVF4Z1jDVumELdbBSq7hRyy3eMSZ0p28NuM5xRdopkO3zavToRdJVvCo33c/dum
         ADLVaDLua15Xfzdf/LhPUKGeEdA0dLKz2997niy3kJ7qELfw8u678oUzrGzFxeek5DE3
         RyXEAS2kgx+BspKrpNuETl/loKOAmPrLVJVCX1Cqz6m6d5eeCSKP3Tu50Kvq8cOVD2RT
         LwDN3O29qljD/c0rrap0cGpxm9YYzwsdUfPeHWGAtKNz/x4ZQ2p6Pybj2pQHZUMAGgQI
         w2iLfIiY4iZPUVzUJW/tgxL+vOETotEKjB93wydW8gBjv987aK4ACN1wRtyHTfQc1640
         6HXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c144si18550wme.2.2020.10.02.01.27.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id AC64DAF1A;
	Fri,  2 Oct 2020 08:27:59 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: davem@davemloft.net,
	linux-block@vger.kernel.org,
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
Subject: [PATCH v10 1/7] net: introduce helper sendpage_ok() in include/linux/net.h
Date: Fri,  2 Oct 2020 16:27:28 +0800
Message-Id: <20201002082734.13925-2-colyli@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201002082734.13925-1-colyli@suse.de>
References: <20201002082734.13925-1-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-2-colyli%40suse.de.
