Return-Path: <open-iscsi+bncBAABBXFO6H4QKGQEC3WEGIY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D4E2490E8
	for <lists+open-iscsi@lfdr.de>; Wed, 19 Aug 2020 00:34:05 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id m34sf15367118qtf.10
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 15:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597790045; cv=pass;
        d=google.com; s=arc-20160816;
        b=qU6XSPAEEUyZo09rO7L+7J+8xxaOqbHgzFauF5+qE0+wN8h0qNQYyq9/e0QDLR98hw
         gw94ImFNUG6wrxp0AM/F0SfyrNHEE72JJ2XRJW5yYnQCfU25imxcMK2sPjQFcilva/r5
         vKA4ZBI5CoyC8dyKP08QlmfSmmfM69mqvHyW7IptqbT7xhusn3X5FNOT7ZvaXtDjW6+n
         uRou5Q48qJeEpkRCMS54dnK9MFuzExHrzHmHl2QSfVn4QnJEE9w7bch4hD6Q/u7eOf9G
         peozOud7a5DfxF8ps3cgatTU/p9i1XHPCODZfIEox0JFJRaSjYV5SrHLIzgtMANOf7iP
         Hjcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=jW8vs7rNBaSSdLPPju8wU4X/EhcBcCOUrsLMUa2D2aM=;
        b=x5r0lpWTLD77/8W160Q8lT+F9qB0v2AGxB4P8vPzHS2P7U/gAR7Ok+Byqv1UkbX3K2
         g5SmB1u/O7NtnWCjbGG7Jw2u6HF22mpVongmYVBN31o0QV1f9JCJG2YA2hghyesjlKpS
         8y05PY4A9Io+pofilI1RWuSw/NpTDDo2QlIRVG8+Vvx+n1lDG3yRw7+vKfbweLVE5gL+
         OrhZYXeDSItcgpUJbuIoHjEGlpH9L/f5KSkvUNdYBuNYKZiDu75p18fwi2/8G2aTzFMF
         sPMbA4VeWocLcOVoVBUEa0lU8Rhohf/YIzusrdjfo/7/QqeMaYTQctDNSnMn5pkocfkC
         oT5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jW8vs7rNBaSSdLPPju8wU4X/EhcBcCOUrsLMUa2D2aM=;
        b=qf1MBPdpUnIUY2cB/YKLfkG/dSmR+EmBUEEKN26F2J6yixeHbk1tLKmX3I0GETczT5
         IOsMGhhsmpXZF0tZHBKp5te0G2gqge6RAgU8tbD5PpJKX+t4cHPK8Uqg6qC5ZAH+nfsx
         Y6JABnCFOQWD1OoE2XyxINuQvmfz1CQSS63GG2ZteH74LCutgSpD00US3JF8A6hV00Xm
         VsICvEXkcxc+qThKcb/DM7fwJaDgaQg9c8qEtCRG1doQXYRykxHwoYadLyKQh684VbyQ
         JPmZbIDvFoavgAHrHSS7u4TY99uL2DiaTtSV04geKZvL0/rmmguGLeE+SBd2fKQaw42e
         +Ykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jW8vs7rNBaSSdLPPju8wU4X/EhcBcCOUrsLMUa2D2aM=;
        b=bga+sBESb2BYK/CJMP6cc1p9Hsvi0vXs2qhA5CDi7y8YpL5Rpw6X+dKaYpoHwUkl9N
         AAGszHJGEgK7nr0+MBU62eUcy4g/4l8R1LRsxQDhUylsIuND0CqUclyU67Bsd+ZiUqJY
         xBdIXb9XOkbbl0c+nAzFU7jxz9VIeiWFxx6w7fpgMY30qGuxtvIkuy2KEgxKVhm/ncmH
         gwd26HGB/rSO03zkHBlcWY6B35OCliHRe1kCGk437c6DAPv2iLuTZCjZXyqYCJJlNt64
         sgOxafdSZuL/xalfeAQ+DI+5Ob4hTP0DJEHn6P4rOfrLiK258pD18ph8fs4Y3VKuU38j
         8hTA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5327knVv0p7EgW0pXLorw4eoIX2PiwywE8i4cNj9vvUy+68wjBjQ
	DFaqKnoSC1MVR4yuooLCilw=
X-Google-Smtp-Source: ABdhPJx5R1dXehcCESNi+fQhV4MiA8dQigaRvYeUQsVywu6LLo+yGIQlrvvQbCdHeKCYWa4nV9U9pQ==
X-Received: by 2002:a37:a0d3:: with SMTP id j202mr18585463qke.365.1597790044844;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aed:2f66:: with SMTP id l93ls8559858qtd.8.gmail; Tue, 18 Aug
 2020 15:34:04 -0700 (PDT)
X-Received: by 2002:ac8:60d4:: with SMTP id i20mr20282620qtm.69.1597790044684;
        Tue, 18 Aug 2020 15:34:04 -0700 (PDT)
Received: by 2002:a05:620a:385:b029:f1:b630:a9ab with SMTP id q5-20020a05620a0385b02900f1b630a9abmsqkm;
        Tue, 18 Aug 2020 06:13:12 -0700 (PDT)
X-Received: by 2002:a2e:320b:: with SMTP id y11mr9849965ljy.92.1597756391803;
        Tue, 18 Aug 2020 06:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597756391; cv=none;
        d=google.com; s=arc-20160816;
        b=g9VCCGbs9OIz/fWRxLkL2aCXk6lUZl2odDIouF+Sp9MEP6pkPI0OG9w4SWc7mAS2EH
         KFUBykay+1wjGbumOkwmcBONIx4g7VKVPn3cSHJyQzDwaVK7UGUkngp0Vz5GFwZiw7nj
         5tQ3GFq3A2Vn19z7MtVbv8WUsjxlf6vjtE9xFdZLKLF3aTlCS4oZjlANZPffKfvqOqUc
         ECTR1L7tXaokTODengAFRNI3UZGmk3ReSYxXDF9SvJoDvMGJcU7/2jHzY5xqZuobJts0
         5hNxo1dbGeUAVXpUWCLZDnk6bi+LQNtQ5cQ5ugKrChl1BW1d6Vgip9KFuzBh28/llxjg
         IK4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=0nsVQx51QNCIBn5XowjtD9itDxo+XOytIptUHsXXc+M=;
        b=TkUcErCFkKqUgZfILYVuW5dGv5vZhvUnIHSzPSvRPfk2Z/9Ciwows3DOMz3O4xQYoC
         nNixQ+Pe0ncHktel0OkZb96OA04hrxhreBvDJ2xp6mkpXiPohJIH6XLwiryz82kDwlO/
         z7IAVIR4sLm+BVvK2nx10zE6812iEu/saEKBa5JeIYmblHVbN0rAMDdLFdHoE7NN85uL
         IhmPY3A0s8uuV4s4+NpdzOJuXJnpKkxgS0bgaXP4HoMatUvY7SRzVbev6SYd6+3j5KEr
         6K2C+5Wb9jWfwS1hnUn3NZbV+l7u/HdKlsB1jXiYIg/mZNVkFKt4WR5Hncs+wFPDjtJR
         cKvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a23si890701lji.7.2020.08.18.06.13.11
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 06:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id DC6E4B15D;
	Tue, 18 Aug 2020 13:13:36 +0000 (UTC)
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
Subject: [PATCH v7 1/6] net: introduce helper sendpage_ok() in include/linux/net.h
Date: Tue, 18 Aug 2020 21:12:22 +0800
Message-Id: <20200818131227.37020-2-colyli@suse.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818131227.37020-2-colyli%40suse.de.
