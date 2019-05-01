Return-Path: <open-iscsi+bncBDUNBGN3R4KRBD4MU7TAKGQEZJDHFBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id A685910ADC
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:13 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id f11sf8975815otl.20
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727312; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYrqqAx30FuwbdvBaHoOMDFCBNl4RVRqoa8tbJhDJ3XQZKyXYDT3ktIDpDeohMKD9M
         D8xMjWv90FCpwArezer2QAno46RrOF+aLdTrX3CfFJ1Y7eCWzBh7pPv4GQdLnYoDNcpN
         fqvpTKYy71kE+IW0nUCXsmm7AqCl4sH5puBrWFl88rMws1o4tXlDBUPq1aIhAfHrQppN
         NRpEINX7Oyq4L7oCSdbhuL7zFUIsD0EynCLFwwMPXbntcjIa0IOnWkXSzI1nVNEQ7jsg
         c7krxpyGsmzOpggrP6WWlcRTTuC57khw8Dv3HQ2d/SRPbYoMLkSFy6LRk0YA+pnaMQA5
         rgAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=d27UC7WgDTiQvaM0edvB6P9Q7UbdVmm4lXYilJV3uaU=;
        b=VIQyZvAPvpVlvgoF/zGOxZ7VzWIKWj5H12jMBKezZvO1698w5LjQLqKZ+0HKrWWdpG
         kBnJz82eGD4cnc0EnAfACuLwAi9yUkNCcL3rxSba200qvnMuvgswl4tPPgwRkM8L5Vbk
         J9P8ookYWUK/SLeRjcasfZd6pl+U60a0cu4nyPhjuwcGGjakjG9UisgUMyFxEjh7vheO
         uF7tJNjwEDQejoL0HN5aelA7eF+pdCmao2EJqEsKL9ybLbM2x4q+7lwsLGGDaHNBQ/Jz
         uBS/PDrm8l79AGKb2mUdVg1i5k71+O7YSIoK7sxoL262FEXYOwsOxmdxRh6C2Go+1jPj
         h5Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=i+2aZYPX;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d27UC7WgDTiQvaM0edvB6P9Q7UbdVmm4lXYilJV3uaU=;
        b=f+xOV/al9SVjo3fBsffGbTNwn2ThYcbXikPoSu+oNbMCcY7OpNKRa1ataF9TejVYYQ
         /dVOaw+1P9+GeayqWzRKfiqvsUpn25Fo5+Qtzvh5oA35AI2wgbxKi1JRiphXdPJj19c+
         W+FHcGysuIdCIFcvRC9Z57ZAwYQMW/pvslKdiuFwEIWLrOsdiAi5Qw58GzyEP0xUdbyP
         C9hAgo8B1kxqW2/oIuOyBZnEyu3QQyCbt0h6oyLImStV/6Ac53Z7mI0R9+5qMupwTlrf
         o39xEgUdwoIG4Yr0ioCbj/sKJsgs4LTlH1Yx2I7SAMLc50JpYY5Kiw1QT6bPH6ON2Dnp
         yS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d27UC7WgDTiQvaM0edvB6P9Q7UbdVmm4lXYilJV3uaU=;
        b=EPLU5RuAdrEaqUul3YFoZL2NFEbHaNKOKpxFaPxyS88GHsTNV4RCFq/duubPR56CCG
         Sc7GBMOsym+dVReR8mM0F6xf8NHfp7C6g5CZtQ0M/68X3sGGcP9bPDjpfOdsWsFgJBR8
         /vkgCzJD2ftwhzum8fAM/ZXVS2Z1XGgFQvtnWsKqYjbyQnGTTpeEdW1t24pPKVYBdxIW
         OeIUnUGA6MLlAY0a6tGC9wl2a4R/8nU3Gfold7LPcvf+v6d2HOngvtW7WAYuMmJzmRFr
         po4wIUd/XEbFdUxc83pgfcMGGJ+YIplBXnwc1XV/o1Y00huFsG4pweyCYhPGqXPwv0eM
         zSNg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWRS4WzohOMDmqZMxy+HHIMm9l5qGRJ+Ngku1IKgBikxNH5zkDz
	N72ZNsOQncFaHOAB7xgOxLI=
X-Google-Smtp-Source: APXvYqybRoyp9folb54euhepZVzwoq78vbOPjQ93AGYnY7oFSuHDhZ4hnfqQbUxpAXAVL2A/O0ziUw==
X-Received: by 2002:a9d:4611:: with SMTP id y17mr8673033ote.228.1556727312255;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:2b05:: with SMTP id i5ls786823oik.2.gmail; Wed, 01 May
 2019 09:15:11 -0700 (PDT)
X-Received: by 2002:aca:d5ce:: with SMTP id m197mr7498828oig.83.1556727311691;
        Wed, 01 May 2019 09:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727311; cv=none;
        d=google.com; s=arc-20160816;
        b=kxgqhNfBxVEMm6ivn+mcQY0dTkzrJ7PRvYZMj2qs9BbWb0azWE19uhVM5eS013tkS0
         H8pgLVSIoajHWzL3ptHi51yMmBm7yQ6K5vTsiIYh4eEdyQdgXQOs8Z7NjbDnqg77bTT0
         McD2msob1HFpHfy0P4pfa6XvmfTGR8zau4d6U6wEtRQuPyhkQm2wgbIGdzQaY4847P6v
         /xIYca+jzIABuN4HpmgsYjpwOMWgPYWo7QtukJHQ4ovh22cEy1xoj1o0r+OeuzzhpwXz
         uckd2DEQkiEb8jqcUzb8pQGl2jBA8vrS7bIWqqnb0A4GMFI22nIsbGjBqIp/E4Phfkb3
         0OYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hnEGiTF3cvFUVxv7N+HsUgXJr+bSX4IoZxtMu1jYf2k=;
        b=ycQ+jTxetSKdWC9h9y6lLnJF3CvLIaM3lA7gAgivUBXYzJZ6dl8UsKlPhXBeU5Ugzj
         uY1A2j9tui2WN/6HZ+Y8pQfyYODkSwaVdWnyFcKmixSEaiaw+NvLeGFrxEeSVghRSbhq
         81yg8fas3Umg+w2+eiMntrjbGbtz6qzzqFVsLt5SLGyRjzccCIO80Zew8xR8E4CEIpFj
         M2CMc8NrLY0SZ6v4mCT7pFs0LpZdQlJHPhxRjPtRUnhbBUfas0pCdVRG9GgMENAw0ziI
         olGxB+dWNR3qf6frheLgp/et48/H1+eJGNIEIQZEydTxIos6MWoDv4v9f5PL8fegnu9w
         iLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=i+2aZYPX;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id m22si51681otk.4.2019.05.01.09.15.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsn-0004OZ-Ma; Wed, 01 May 2019 16:14:57 +0000
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
Subject: [PATCH 02/24] scsi: switch the remaining scsi midlayer files to use SPDX tags
Date: Wed,  1 May 2019 12:13:55 -0400
Message-Id: <20190501161417.32592-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=i+2aZYPX;
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

Use the GPLv2 SPDX tag instead of verbose boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_logging.c |  3 +--
 drivers/scsi/scsi_sysctl.c  |  2 +-
 drivers/scsi/scsi_trace.c   | 14 +-------------
 3 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/scsi/scsi_logging.c b/drivers/scsi/scsi_logging.c
index bd70339c1242..ca582218d72d 100644
--- a/drivers/scsi/scsi_logging.c
+++ b/drivers/scsi/scsi_logging.c
@@ -1,10 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * scsi_logging.c
  *
  * Copyright (C) 2014 SUSE Linux Products GmbH
  * Copyright (C) 2014 Hannes Reinecke <hare@suse.de>
- *
- * This file is released under the GPLv2
  */
 
 #include <linux/kernel.h>
diff --git a/drivers/scsi/scsi_sysctl.c b/drivers/scsi/scsi_sysctl.c
index 546f16299ef9..c74a965a51a7 100644
--- a/drivers/scsi/scsi_sysctl.c
+++ b/drivers/scsi/scsi_sysctl.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2003 Christoph Hellwig.
- *	Released under GPL v2.
  */
 
 #include <linux/errno.h>
diff --git a/drivers/scsi/scsi_trace.c b/drivers/scsi/scsi_trace.c
index 0ff083bbf5b1..6ae168fcc119 100644
--- a/drivers/scsi/scsi_trace.c
+++ b/drivers/scsi/scsi_trace.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2010 FUJITSU LIMITED
  * Copyright (C) 2010 Tomohiro Kusumi <kusumi.tomohiro@jp.fujitsu.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
  */
 #include <linux/kernel.h>
 #include <linux/trace_seq.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
