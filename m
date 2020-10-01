Return-Path: <open-iscsi+bncBDLPRE656MLBBXMW235QKGQE3OXYXLA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id F24A527FAC0
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 09:55:09 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id z77sf1541271lfc.2
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 00:55:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601538909; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTQVfEts2PMnCHPGCSKc46PsyRPgX3DLGJDezyr77tNbMOreD2HbHLdVjNC+kdxUzK
         W24dhnR2G8SJ3BR/6E+T6PFRR5CwulAzTAhvqMJDaPhnroNcHOb7sn617B7qxRZfXc4e
         HS2RSh/c9dutnf+R5/T6qO8gkHkAml0eF2cXoWbtsF8Aft/98LYXTM/LUxmh7pk7Mxa3
         Zd3Bimgz0ZNksekC9j307S3llVvkfd76W3/33aSd5ce/pHy8yOxeA2Ks0zNr0lL9qcBT
         rAPYvPAxy4gjTxfEbbI96PeArDlo7lR3Ochfqwn0SQXUkEKktQq6nc/QVR+dhXODR7VO
         AafQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=36jl1klpPq8DIun5zMBf5WIlrl3UAvAjpamRVEFvJFg=;
        b=HGtp2z34STWwaAwCMgRLgATDeOnc7zySFOSCLX/+JVxNuXhQxG0zZh6ReRSApU9R5R
         kudLXXquzUYMAzzjIe4eXjQceToM0k6UXpSqnouQPstcCPQjKZqr9zdTB1W39utfBJ6E
         fmSGoG7fvReNYNPpWvJ/UpM2YY8ZYryLJNxfCxp7OhSmVqFDD4AnQNhzzYBSCl68LYIF
         pkS0SJC1AurpoaxjddIFyNeMVyZ5hUNnTFdjuIF83QwMcvsM2kMOMyptR2EXoX2jycsT
         SXzmVCziryUSOTXtfn//O8ajXjL8mM76sqX6lgDxEHaBlxZ0evngDBQPoJSOG7SR2sZd
         TuHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=36jl1klpPq8DIun5zMBf5WIlrl3UAvAjpamRVEFvJFg=;
        b=hksyKljmUNmd53+ZSY9WMEO9Pf4ypiUCHMNJEJMrxmm87ZwkZYqMv+3d0QVXe7GKJT
         +K2Vvz6BRivPiN2H8ZO58gHOlrdtnNFCbKffC8JyZGBCDQUHuYJS8xekoid7JFo7vtnB
         cADyAB7puunguTZj4/gzEu8LQaUZbWSOMxwFdWy0zo9fzeeyAPDgazF6Z2oJtZf++4rN
         Bmb8Gva2B4Ad6ga6uauAYseNKfVKxlGQpRIi4Fk1dgB7QNzkNY6RROWFkwm5SKqSU5/B
         InKpM0pXVZLl2FV7zyvyqH857xt+B7M5QuZuiEttXAml6F8kkxVplCYc4j8E93nrKYWc
         v7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36jl1klpPq8DIun5zMBf5WIlrl3UAvAjpamRVEFvJFg=;
        b=Mxp94tGKERgwXHFx6ioJF514IJbUBDmJaJtfWCkDCYrnqnhA/VAlRJEiUfR5P8ogcE
         FREXnd7AxUzYjVwqOIi/51rHAMfbmzcfg/hCA8WjUOc6PppHiMKOA6iZJh19fxM7cK9J
         PY2ftP+4Q8GniM/Xnt3GPU5bbAxxIyIK639frqA3mi/lsw9cJPH8i5gfamvsQX8JztDS
         LD4CtTNNtTcFwXrY05Uw9aiyR3H58DBKbPR7k1mY4c0Fyd9N8FU+tZ2TJf51UTLfYVhD
         Lheop3tKnFuFXbLpJHLNzRkVX7mc5d4zBJvWTFZP5b3WzYk23v1AexxElRoNM+AoYfIi
         StpA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5335rGWt3dgW7ZJXh264iyPJDl2KmgZu+GSy8u/yDN34SH/KdCZA
	uTOEgNheY06AGktPB5/tC2w=
X-Google-Smtp-Source: ABdhPJz9VTAv+OBsj0bMm13RPAItA8pqj9Jk7YsAW3kwx3dyxY5dqTFoaD6WbAv/pOFv3Wihp5VUjw==
X-Received: by 2002:a05:651c:1307:: with SMTP id u7mr2139096lja.267.1601538909515;
        Thu, 01 Oct 2020 00:55:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls437141lfp.3.gmail; Thu, 01 Oct
 2020 00:55:08 -0700 (PDT)
X-Received: by 2002:ac2:4a6d:: with SMTP id q13mr2300254lfp.486.1601538908550;
        Thu, 01 Oct 2020 00:55:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601538908; cv=none;
        d=google.com; s=arc-20160816;
        b=jpqf1J66y+CXwtCSnWiHxkMml8QDmrwAHYEXF+7xwPJAGHu+yqBlhueWAmx/XfGj9D
         HzQTPTK/jrFz28O9xCMxD50qSQTbkQiprtbfZb5jEBo3o8J1E5F85Z6Ykc3ywlFlxtCV
         W/YEcwN2MORoiirGsoHrR/KX58jQJwWf+rU6PmV7e895BJBI6KHM8dwjQTDOkGuw3Zxl
         5uxVqvcdvtcKqy5sgzSMKLj8OGyybxHSyTkQmwvNGq1xL6L/W2OIs1RghdGK7Yn2NSaM
         G4X49rCJdNONis4OohReh5qC3owH92mIbRmBujJV4Z2z47COOqTRMspJDLsoJpP/8b2O
         dYxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=MRB2UH/eIUXdo1wj3sBgv5v9rRBrgKrU7ydAJakph+A=;
        b=I3GKaQ6cS2+8yw0lf0ddtBUPB6n5qlWvEhNUt8dW1pGGgA0eoFl1aPFNtoRpsxOQBt
         9vhFXKjH5WTx27iybJ7DndacXYWh1q49abvSp4qp3nUYB5z2GAg+JCXj68EKX6UcqDRM
         yf27Hl+rHub5m2MeICCUAzajzC91XXwZ5A1m7JmvSSgbULUtd30IWj7lEExE+pR2zYna
         dXULsM+Xiu6wi+MOfzS/r29D+GK3rcxWCzf9JIF6BH3FR3sFLlIEe6JUnIPJ1kLrQrKv
         HCTwhKs5XiY82fOUMTuBEI5wkZlZoxCV6ixRzMTYlROjVNeUrceiYN45GyvG0HOy+w3Z
         NhBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v191si134574lfa.6.2020.10.01.00.55.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:55:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id E0864AD4A;
	Thu,  1 Oct 2020 07:55:07 +0000 (UTC)
From: Coly Li <colyli@suse.de>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org,
	netdev@vger.kernel.org,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Coly Li <colyli@suse.de>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Vasily Averin <vvs@virtuozzo.com>,
	Cong Wang <amwang@redhat.com>,
	Mike Christie <michaelc@cs.wisc.edu>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Christoph Hellwig <hch@lst.de>,
	Hannes Reinecke <hare@suse.de>
Subject: [PATCH v9 6/7] scsi: libiscsi: use sendpage_ok() in iscsi_tcp_segment_map()
Date: Thu,  1 Oct 2020 15:54:07 +0800
Message-Id: <20201001075408.25508-7-colyli@suse.de>
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

In iscsci driver, iscsi_tcp_segment_map() uses the following code to
check whether the page should or not be handled by sendpage:
    if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))

The "page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)" part is to
make sure the page can be sent to network layer's zero copy path. This
part is exactly what sendpage_ok() does.

This patch uses  use sendpage_ok() in iscsi_tcp_segment_map() to replace
the original open coded checks.

Signed-off-by: Coly Li <colyli@suse.de>
Acked-by: Martin K. Petersen <martin.petersen@oracle.com>
Cc: Vasily Averin <vvs@virtuozzo.com>
Cc: Cong Wang <amwang@redhat.com>
Cc: Mike Christie <michaelc@cs.wisc.edu>
Cc: Lee Duncan <lduncan@suse.com>
Cc: Chris Leech <cleech@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/libiscsi_tcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi_tcp.c b/drivers/scsi/libiscsi_tcp.c
index 37e5d4e48c2f..83f14b2c8804 100644
--- a/drivers/scsi/libiscsi_tcp.c
+++ b/drivers/scsi/libiscsi_tcp.c
@@ -128,7 +128,7 @@ static void iscsi_tcp_segment_map(struct iscsi_segment *segment, int recv)
 	 * coalescing neighboring slab objects into a single frag which
 	 * triggers one of hardened usercopy checks.
 	 */
-	if (!recv && page_count(sg_page(sg)) >= 1 && !PageSlab(sg_page(sg)))
+	if (!recv && sendpage_ok(sg_page(sg)))
 		return;
 
 	if (recv) {
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201001075408.25508-7-colyli%40suse.de.
