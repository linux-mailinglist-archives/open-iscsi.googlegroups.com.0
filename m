Return-Path: <open-iscsi+bncBDUNBGN3R4KRBJUB6D4QKGQEMDKVSAQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AA248B6E
	for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 18:24:07 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id f14sf8377834wrm.22
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 09:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597767846; cv=pass;
        d=google.com; s=arc-20160816;
        b=s/SezBK5r7trv6Kw3fiwKLbsM950D9kjF22v4vyrOVFOHNxww205aNNikJgFu74s2G
         VB5AFMhRV7X12E5vSOj6Bg5nJqo+hT0+lm40rlM9TZMyE76uuMUnuNzL4V+7esC6VJ9r
         VR+7a3CUWZ6lcdprZ5A9G0sF0/TW6ueFuNtUxty7pCUjmq2Deyomp1ii2D4ONbEtQCc1
         J67aLVod6srxRYNdt0lQeLL0COP3faePy34XqbyRE1hSxAHAJUi2ve+SMsvb/PxwuMLk
         zssntFMFVU1F6t4iPZOkFfW5HjtVw7t8lAfNiPep7qBEYe/Y+62SRSByvZigY+a4lJnm
         lxlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=284RL8woSvKgoKGdOgXdRjgEPZmn/ujDyMmnxEwvaNQ=;
        b=WvCRYo5Te1urO3VsoFRdwYq3D9iMSxg1Mk3QAcD/vyDsJsxhup2lcOMOSskNWO0x+v
         2zmTEVNTsWNNywuW3mvEz7epKc5uthdfP2pXm3q8UTzVC8Rpm2XGuHP3deseJm8CIpN0
         Tf3m0BwBiWHsnRqrpEr+QlM3mpOnK9s2I8tRCibg4A3elF3dzF0M0hFVQ0obrFXjEecQ
         4obWdDbZ4GaoGv2UFdfw2m6ggvIXXUTefYKYzk6i4Uo+RTIWdhznWlig8K6hi+9W5ebz
         IWsRG328rswaVskC4o6CmfCCCN6ewDWp3MbFkXN6WDgvLnln+o9yDDJtGwl1ZEZ1MDXK
         s2XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=284RL8woSvKgoKGdOgXdRjgEPZmn/ujDyMmnxEwvaNQ=;
        b=W1SbTyuaezY+zN9BCaGUE7AtpigrplfZoMMOC9qqxTBBMUxqQrdSXCPgcOBH1yU1Os
         B1jySYv4BO8ZUlJ376E0TGx0VZO4xr5xy6hphgi2theB5piPgez6xFQa4HdRFI6VBBcs
         Jp+TvsUICr+wQpEfCsTVO3da6FGV6GzsHcPBLuw20HN/07UCVPRORvJi3RHk2wRRwbTh
         L85phEh1SLUyTpRKAVcmR0/U1OFCEa2HSEOJLQctNfHOw0QFW2beHY1/gIMVoi/gSnAD
         Ax+ih5jE35auGwFo9j0DJV7WOYVANkKkXRnWJodAmpg2OtuZDKgW21/j3789IsOHPdO0
         rMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=284RL8woSvKgoKGdOgXdRjgEPZmn/ujDyMmnxEwvaNQ=;
        b=LrjZhsTMG++5ElArKh75uBH/09vAXLGD3fBWLfvLQ6xgeYZ/fN++9V5RKNLk83ZiQF
         k/FyGTS5AMVGw0rYO7j3iItNK94OVRtdWJI2K8MSxc+7lJFez6HmP9acmmwLC/ak1BMo
         gQrnRblw1suSTgL34lg+ev5r02+6PcjBNSxwWP2MNpNcr5hkFc+nyPYUzGc3Xsj1NE0U
         ANaoM7JXIGsUcVhjUBpHcJXFQBog5lwLHrP+f0UvCUZm+jbN/wHaDbrnYXcd4X9zaXil
         0qZqE1wSHz51RfceYWZvZhcLY0N7XiyNGuJdfjMb7paqrnMAwC+1LYwDeKgksxw1+eVG
         NGQA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533aPEooHUq2uyp9u+B0ZmNEfBu3RJiuYZo+Su47xYLbiL+DoPb6
	0zop2o7E67aMfaSP3kE0MwQ=
X-Google-Smtp-Source: ABdhPJxcmZ3mt+9wSxVsMj9/5/UaFuEkYg0t7NRBnlqT8OYoNqsmo0+SAThqxzstejuMGBxJg7kHFQ==
X-Received: by 2002:a1c:62d6:: with SMTP id w205mr717556wmb.154.1597767846689;
        Tue, 18 Aug 2020 09:24:06 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:e78f:: with SMTP id n15ls58300wrm.1.gmail; Tue, 18 Aug
 2020 09:24:06 -0700 (PDT)
X-Received: by 2002:a5d:5710:: with SMTP id a16mr22256839wrv.217.1597767846027;
        Tue, 18 Aug 2020 09:24:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597767846; cv=none;
        d=google.com; s=arc-20160816;
        b=NlIRwbsKPZJtYXYzHmy/I/yDh3hUy9l/J6w+tTpiyBTefh/QqSCS9vrxVkIpUruTWu
         VU0DwcxtjHpOQBf4pALs2hCKNSnWHDXx6IIs3Pm8ZhzfuFlwkcmqc+1IWr3hp7zQX1F6
         I8eRZzf5OK6zx5hIWhnOIxofDLZL12jJzHIG2lkfGsG4ajL5GkaG6EDDgqgfQr5o4Gji
         Bq9YU41+PwkosYMnZjNcyqNQrawEzqHoSgnSLa1UpEkD4eQsGPhm0HM4+XB5PVQQSL+A
         CNlCoBOQuy8LJoxRW/WRg15PcKEAoLfdnKHrexwDpT2zdbksBz8yohMaOWlfsKg4s/gB
         o9+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ZAzkF/rSJbG1dXckfwa7/iOKQc8gCgTfQ3VyM9CnGe8=;
        b=nNHZQOhJI0XP2rCFOsS85ng6LZf5qw2RisjS8WzRKdaS5k2Hf8T+B/m/Ar9jUwj44W
         Iewbg3zMtjtnF5btpon07YrAtBhRsivXyDVEBQNqHcq/+WZl+OMh2OOTD8AvoCrnCp8Z
         EDDowPo2duvK8CBG4LllbecWAJZD3gzpRPzWLX7kVkhOiHNb1A6v6iNipAGf445DndWx
         rdwlWUFVzbTCknTlqX5CLk0sh0a4UzJtYUkQJ/NceXkr/dOSsxPDg0DEXeINCaEyMaRl
         q5jvrBuLJ3ddIfQ1vG1pYmZAC00jD0i7+qLnMDYVovdT13axcqvDALqIUIPiPZy5rXzH
         OQxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id n129si92489wma.2.2020.08.18.09.24.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 09:24:05 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id D0D1368AFE; Tue, 18 Aug 2020 18:24:04 +0200 (CEST)
Date: Tue, 18 Aug 2020 18:24:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Coly Li <colyli@suse.de>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>,
	Jan Kara <jack@suse.com>, Jens Axboe <axboe@kernel.dk>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH v7 1/6] net: introduce helper sendpage_ok() in
 include/linux/net.h
Message-ID: <20200818162404.GA27196@lst.de>
References: <20200818131227.37020-1-colyli@suse.de> <20200818131227.37020-2-colyli@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200818131227.37020-2-colyli@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Reply-To: open-iscsi@googlegroups.com
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

I think we should go for something simple like this instead:

---
From 4867e158ee86ebd801b4c267e8f8a4a762a71343 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Tue, 18 Aug 2020 18:19:23 +0200
Subject: net: bypass ->sendpage for slab pages

Sending Slab or tail pages into ->sendpage will cause really strange
delayed oops.  Prevent it right in the networking code instead of
requiring drivers to work around the fact.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 net/socket.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/socket.c b/net/socket.c
index dbbe8ea7d395da..fbc82eb96d18ce 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -3638,7 +3638,12 @@ EXPORT_SYMBOL(kernel_getpeername);
 int kernel_sendpage(struct socket *sock, struct page *page, int offset,
 		    size_t size, int flags)
 {
-	if (sock->ops->sendpage)
+	/*
+	 * sendpage does manipulates the refcount of the passed in page, which
+	 * does not work for Slab pages, or for tails of non-__GFP_COMP
+	 * high order pages.
+	 */
+	if (sock->ops->sendpage && !PageSlab(page) && page_count(page) > 0)
 		return sock->ops->sendpage(sock, page, offset, size, flags);
 
 	return sock_no_sendpage(sock, page, offset, size, flags);
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818162404.GA27196%40lst.de.
