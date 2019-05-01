Return-Path: <open-iscsi+bncBDUNBGN3R4KRBKUMU7TAKGQEBONSU7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B49A10AF9
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:39 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id m76sf458769vkf.22
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727338; cv=pass;
        d=google.com; s=arc-20160816;
        b=Edo+Qg/z25O1T0MqX2EpS7H4klgfNBVopD+tGYDhuLOenwMYEp8xG6xYCCbUuWwShC
         wj12Ybj0WCJppndnlG8QnIN7Lt1+l3vXh+cU1t8WixH3VJNtJS4l8UnhstQYApF8ZgOR
         rx1GpHWH8n77IEe1pJGfh7mZyRWkitCgQWk2cBkjO/XRq+TJCVxkSpkgFUQXxEDKgQl5
         PYxKAXq88O+/y3hZa/BI/3fvpevla41ehQQknu6wXgxzhzTFWj86qhJORhOK0eZazggn
         aBsgDI5KVyLDyJL/tvNsEU+/FPvkzLSGTEcLRa0OcnV2d2in2YWq4ciXzLuUnJiZxkmJ
         JaeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=kXqF1yxe0zSThuGdkK/F3iySgR3Fv1QXvufjeGuPIik=;
        b=Mq8NYTdT+jfI9FXfMVs45dbsuS4N+d8gC/7fXTTkSycjFYQlO7GX9TFNziB3Z9zrwq
         +gwwfpJJCTRgg3T7vUIpKy05swney6carbRzl4c1yDR66xlbrkCUVsikeGWXt2crFIf0
         Lk40W1YnZ5XgO+r09KRGEEHYDyn3rBUvB58N2QsmC2tIxI+FvAUSuZl1Uqma8jR36b3o
         9r3W0fu/WFCBmAmZLalN590WcKoxPXCqEzhdVNk6TgXvAHNlo1FSfoQCSvzaWJLLaPaT
         +1lIQBH8WoOJjt99XY0uUMn9wn7kozIKpOW+iG3n22Me+LQ7BZDAQsQ/J9G2lqcWVFuT
         WKNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=VwC7sAiO;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kXqF1yxe0zSThuGdkK/F3iySgR3Fv1QXvufjeGuPIik=;
        b=PAnZkeLm9Y9TC+li8eINtqD660d5bva+/vqT9BozyNIFIGnUXRdsfJEDslGO8G72ss
         g9xB6/HJ3GKt4mE3s1NuB2pEb7bvd8b2DrP8BtXIkU7M5P83dxICgIccJRIOo7ls3qsC
         59o91q3baIP0ruzeO+yLEMMvD103FjY+bKCjx9MAvzNaFEJ0NBMyix8s4VOOjxuuax9I
         xb0DzJ43plY74yXCkENQElMoXdUdvweQFThS1V05bizJ7vQNoVWdRbh6JfkzcygD/vHy
         Ssg7y1tkDoDKNLvlz5+e5I11+Q9X8ihyDiUzQpfFCGAooDxwuOmRVEceUyBcMnC6BrNe
         TVPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kXqF1yxe0zSThuGdkK/F3iySgR3Fv1QXvufjeGuPIik=;
        b=AZKNraSbpHvqHK/BohoL53FdfZhKLCqUVIbXn3vRqtMdDbpB1kdLTLigzsneO5vunp
         uxxhynnqQawmAxWvdn6mejeDBOIe8XvH2OCTdh4iE7U7dk1ioQhd8bqX+OQWzS8fiYSe
         icx4Qgiw6X0OJe/NHIcIApeDXIgIEg6hSwVYlLtiKQadO42SRpdyxq5V2uwiBgOnIDDx
         SRBBGWVfUtgsN8B50EFG2RUmmH3XZi5cpwV7yMxeLhIYRQcdP/g26lflP2cQW3YDr7DI
         TR0atRohpBpYFLADNzKrYGDjki5tZ43CDT7G5F+0gUNe3LzmRr9CU++YSz4RUzEEAnt/
         PHCA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWC08r8qBFVPDX0eYXA2yEUr6Xc6NdUJI7CROHGKGmdAHsVjSZH
	IKNAiV5IsbIGAaRVvq5QzdA=
X-Google-Smtp-Source: APXvYqxqk4ij6HsO6Mc61ApLUAv+c3y7UI8J/LILvW5m19uI5YI6534/YbZ9UkiTx4eP+LOiskKqTg==
X-Received: by 2002:a67:78c3:: with SMTP id t186mr39069752vsc.113.1556727338690;
        Wed, 01 May 2019 09:15:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:9e57:: with SMTP id h84ls1484443vke.8.gmail; Wed, 01 May
 2019 09:15:38 -0700 (PDT)
X-Received: by 2002:a1f:b4ce:: with SMTP id d197mr39437992vkf.57.1556727338382;
        Wed, 01 May 2019 09:15:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727338; cv=none;
        d=google.com; s=arc-20160816;
        b=Kl/2xQkd98IfBxUxQ+HKkimrIJSCpSrQhfMtQOOAO1Kg/lxTnx8dC+GH0WY+vbsBSF
         tMFJehIwGJ8jLk9acAdYJjDgAwcXOLvoYbZvIOsbhpJ9+qym6Rx+6ockEdrxutopNnLZ
         p02NTDe6jG6Gnx9T+Ifru/niuPbFUgn/6zbiqpG586LHrO8DJX3r9TBsqYVql0trYr50
         f7biS1jEJaTGe9impQeCn8ntCE+T359xPC42ACHEd/1qHE9Qp9KLb+wRu0imkLNMSeCX
         Zi7hBiIXr7CAAeB10S6WtBfOYyUVZ3IgWDLsWzSQ7QlvrW7fCp+pW413wB49Kjenhnhr
         epoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AgyYCrdyHA/DUWKViXqZytoa4N1LG8lnnVDKFRW9Xh8=;
        b=UMBWcpbybqHGYbu1vIKUM9XynUa0NuPWyBqU6XvDAce+CEpkqPc3Vo7ZOpUi/pLm3A
         FsQHoNBoNs5HyQOA/xLcMDuzFrSL/nei0OVaOfCnqsQEe6YLHaFHGesAgtzFGGuKrG1u
         ZdOGd5xapr+ZoDRc7EvN3k1qXtGeIpdhHQZSj6YYIGsrIoyTseK/qSHk7xQHO8SS/h94
         ObQAllxuuGf6vBF5bt7+qj2aR9KA3bELfYhAcsl6THndYg0rmua8uFASAP8dxTqO++Pt
         Ojl0RLT+W+ILC5CeF7Lz4hCSxwZQnMegfkir2hpqaY3LubJmWMp3UW14iTJjXKMRsrm9
         +acQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=VwC7sAiO;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id 31si497384uaw.0.2019.05.01.09.15.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtK-0005gZ-3d; Wed, 01 May 2019 16:15:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: "James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Willem Riede <osst@riede.org>,
	Doug Gilbert <dgilbert@interlog.com>,
	Jens Axboe <axboe@kernel.dk>,
	=?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	osst-users@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 21/24] sg: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:14 -0400
Message-Id: <20190501161417.32592-22-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=VwC7sAiO;
       spf=pass (google.com: best guess record for domain of
 batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
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

Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/sg.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/scsi/sg.c b/drivers/scsi/sg.c
index d3f15319b9b3..bcdc28e5ede7 100644
--- a/drivers/scsi/sg.c
+++ b/drivers/scsi/sg.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  History:
  *  Started: Aug 9 by Lawrence Foard (entropy@world.std.com),
@@ -8,12 +9,6 @@
  *        Copyright (C) 1992 Lawrence Foard
  * Version 2 and 3 extensions to driver:
  *        Copyright (C) 1998 - 2014 Douglas Gilbert
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2, or (at your option)
- * any later version.
- *
  */
 
 static int sg_version_num = 30536;	/* 2 digits for each component */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
