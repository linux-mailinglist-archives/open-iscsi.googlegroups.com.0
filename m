Return-Path: <open-iscsi+bncBDLPRE656MLBBF6J3P5QKGQE33DH3BA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6F2280EC2
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Oct 2020 10:28:07 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id a10sf267625wrw.22
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 01:28:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601627287; cv=pass;
        d=google.com; s=arc-20160816;
        b=YM/xqlX3Tke1lMka4gUvXyPki8FK7JugZkLbreaJm4Uth3g2mzW+4b/wysK6oQq3nx
         5dc0DizyaoXwb8jKo9Kk56mojDAGo3h6pmUZlQuoT6lRVD1cksf10Hnp6k59j0FN8Gei
         /MEP+eOkLBYRFhrnP+VrUEkVdV0Q5k9zuWguc4MENYEjSEmZzv7s7rdq+bCowTKwgLPB
         sPg8NdOo71Rhs7MOPHj8pdHUzUuG27GOGw2rbQdLpfQM+hWYuJHk+0K4SwFlnPG10OmR
         mbiroErD4jloqH+FH/UlaTEev1fbrsGycK7ACMm8xeAXzTYkuL10IufaXKQ3bZR/bnSP
         yYpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=cy1nsWkQ9RfKC1Rw5+wtZUGDdlTawwKwXe0cRPhjfcw=;
        b=Q/WPHOlkiVOKLUR78BrWQlG8o48RQfj16ZSF8UCLX7cvl5gy3aLNm5UvULJYSoqT+g
         vcnTpncK1/ZGw3T/cOcQ6mQ/Ebufddo3SRh0mLwLBAG8l4ba6/R6HBKMW2+tkhMW+HBA
         H+9PAsOSaR51Vu2v2nnV8NKWfW6FULmPq0a0fwgGyTMYP4vdjtQOYxXGOxTGF/P7PCbk
         gH4RjEC7yOQg/EQ7lB73czHeItkbsYZZH+/xkyzk6IaNMBVSxQh6Q6az+dQGfRxe/9F6
         i3ZoZlpoXRI7otEA+txmz1NK+Tv7ZOKXB/CaMi8Xg3p1R/57zABVjcIG5UR1ksO6639k
         n+tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cy1nsWkQ9RfKC1Rw5+wtZUGDdlTawwKwXe0cRPhjfcw=;
        b=gLDJUqg6TuzITi/p3vojyGSq7KdlRtUogCyj/HX2EP4nW/AVpTvLqr7cHkEx4UKYlH
         uzxsFRBG1MDv6L1+/iJzZ3QNvqWu2Tc8ZNah6TzbEqy3YwvLQWPskfojbIGlO49t2kAm
         TGTG7wsdx+vqYt07NTo8lUtJ5TH8maDBFGO+nWS7xhWwJIxOwB7pFGowVL6sn0qHFlJ2
         /yZBY+jZOtW8wbwNW6c7vRYJ0XOdxIHKGJQ6aHKM+jbbR/3HvGBRlOlpET1hk52HSlAa
         6zeeve+2gpn3geGwU8Z2m468J8ksBDinxO33ofHtAUM66fyfiPGCUXlE7hZczaZv7V0A
         VWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cy1nsWkQ9RfKC1Rw5+wtZUGDdlTawwKwXe0cRPhjfcw=;
        b=YXR0qcBQHwBmUxL8x0yloYpR4cCfHWVFv/vYw63/fp/pEjYxZZ/+MQG8poNeglvsef
         MUJcPXhhBOSVWzRRxGOeMZHWRqIh6e6jl+GiuerfuhP0N8JKE+7bySpNbRInM0K9WWXL
         pZjOs3T8OQ57joWVujdB8Oc/EAjBnOuEywm1AV8nZAnC1dbH5rrEoqI/0xNICICGkcn0
         ZIRTcPnNt0LU2ceto18n6KQkLpuKsgr5b6bp6j/DTIAoWWjq0Pfo4qcMabS7s1IR3bN7
         pD3P7gRydu/Eq+jyM6/m0pwg9lWTLqZyAE0Sc+WZt/Wyn9hNuq0r6FmQ69GZnlX2wnVt
         UAog==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533IrfzsBbJsJT07tMw5F3NVNu41zOjI0/8vy4AQEGLnKeSndsTb
	Pe8xnA9YTwKwN+J5Bu3/FVM=
X-Google-Smtp-Source: ABdhPJzYci74peOcJdlgscp6iPaUkSbu2napzPB/HftwAa761YPOKj8cfcJNdpnkEvOso9oAPb9jng==
X-Received: by 2002:a1c:8187:: with SMTP id c129mr1632506wmd.82.1601627287191;
        Fri, 02 Oct 2020 01:28:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:e3c3:: with SMTP id k3ls1000342wrm.1.gmail; Fri, 02 Oct
 2020 01:28:06 -0700 (PDT)
X-Received: by 2002:a5d:46c5:: with SMTP id g5mr1715720wrs.416.1601627286327;
        Fri, 02 Oct 2020 01:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601627286; cv=none;
        d=google.com; s=arc-20160816;
        b=JXUmF9rMTx0DiQ8eVbyYANc9f/8UayxB+XzNDHR47jdi5gBYYjzTCMxoZhlRaQgJUl
         3QbPLxQllGFzNf4Mtpb5FWv6SXQ1ftPC2xSHEZVhw6rrH/1WHpLs1ATM3aGf3tiJCT0P
         S9TwtZLzNVeA3HaZBNOKJR5bsSTB8XOUWo7ygvftCPBf2sGhzzO7IqEjrbqW7w2ep8vZ
         Qfed2sYpa5JStrZ4mNz33TXamBMcES5wM6Hsr2z1wIzW9lPGbCuAGqEAK3wGe7NKns8s
         vsf8e1az/KVEo73gPgBiBRop+lVvxdnEGjNOvz6ZRSS1h5d40gzC+6xWq4TRHFg9uzOd
         mqrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=prUTcJLq1oJQPP8HuX4bbQYPRkfGVuq1UQonwzNLOq4=;
        b=aFvIFtn/LK3K5aIJexgd9RBWCSMKwXaqkacQf5RJZvTHPQnNdafTIdkbqT0iedVD3v
         zFNXMIp4Kc5CfOVfl1DV2mG69to0oeOd7icv80ZRhq8nGa7g6Kbmap388VV8U4g1lXGQ
         8hKf2RTwoZeaRKaQGPyI1Wg9e4DwFwPb49JpQZNqTGrcnmTneOJe8BusDmlBk9hC4Oyi
         C1L5auHU6yG9VQ5lDNBOaxmOrYdOF/O7VKKmHjUnz/sBIR04p0tNuLmeafhgEhkGZ5RY
         UW1RIvJbBDxcj0NbzMCRTFkIG1CaYoK+br2NZX/DigJH4Al34iNx5639jzJgZK50lho/
         joZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f3si24753wme.3.2020.10.02.01.28.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:28:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 065B5AF4D;
	Fri,  2 Oct 2020 08:28:06 +0000 (UTC)
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
	Cong Wang <amwang@redhat.com>,
	Christoph Hellwig <hch@lst.de>,
	Sridhar Samudrala <sri@us.ibm.com>
Subject: [PATCH v10 2/7] net: add WARN_ONCE in kernel_sendpage() for improper zero-copy send
Date: Fri,  2 Oct 2020 16:27:29 +0800
Message-Id: <20201002082734.13925-3-colyli@suse.de>
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

If a page sent into kernel_sendpage() is a slab page or it doesn't have
ref_count, this page is improper to send by the zero copy sendpage()
method. Otherwise such page might be unexpected released in network code
path and causes impredictable panic due to kernel memory management data
structure corruption.

This path adds a WARN_ON() on the sending page before sends it into the
concrete zero-copy sendpage() method, if the page is improper for the
zero-copy sendpage() method, a warning message can be observed before
the consequential unpredictable kernel panic.

This patch does not change existing kernel_sendpage() behavior for the
improper page zero-copy send, it just provides hint warning message for
following potential panic due the kernel memory heap corruption.

Signed-off-by: Coly Li <colyli@suse.de>
Cc: Cong Wang <amwang@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: David S. Miller <davem@davemloft.net>
Cc: Sridhar Samudrala <sri@us.ibm.com>
---
 net/socket.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/socket.c b/net/socket.c
index 0c0144604f81..58cac2da5f66 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -3638,9 +3638,11 @@ EXPORT_SYMBOL(kernel_getpeername);
 int kernel_sendpage(struct socket *sock, struct page *page, int offset,
 		    size_t size, int flags)
 {
-	if (sock->ops->sendpage)
+	if (sock->ops->sendpage) {
+		/* Warn in case the improper page to zero-copy send */
+		WARN_ONCE(!sendpage_ok(page), "improper page for zero-copy send");
 		return sock->ops->sendpage(sock, page, offset, size, flags);
-
+	}
 	return sock_no_sendpage(sock, page, offset, size, flags);
 }
 EXPORT_SYMBOL(kernel_sendpage);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201002082734.13925-3-colyli%40suse.de.
