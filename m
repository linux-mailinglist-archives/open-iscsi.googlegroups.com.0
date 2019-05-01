Return-Path: <open-iscsi+bncBDUNBGN3R4KRBFUMU7TAKGQEOGTJ7OY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E97110AE3
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:19 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id v3sf555326ioq.21
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727318; cv=pass;
        d=google.com; s=arc-20160816;
        b=A3OB78B3gnybYbHWtjM/omGX3ATPyVZNorPrzT1GGPZla/WoaSfbrlXFMQi/JdzktX
         UcajCntDvayBg11ZBRcd57Kknysh8ScQfn/dD/atUvnVR8Ui4PO6CptDe1cAWgOlX3nF
         50IhfFGjd6n84WcwqvZB94wY3DmAbJBVLt11WdluE+uRvvzg1j8DbHsO3l0VLAJFtkbl
         5qmM1bKbQCDdix8wKcZIWLZpFZLyGMA86i8SRhzxFqmN27tDQ/8I8c245L8oo99UusaZ
         6VNqkdmnnX4b7YwKkBVT7rlB1H36RmCDYlePzim0tyFE//E6UrdtWdk6dm0WxaZkpV+v
         QLYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=186UVwPUYFLoaMnP0J1T3WZuGdIInGyONlZ/ThWhhUU=;
        b=g3FHiMpkkDM0uFJzjo/Nmo5jjfznAxQf+iO3hf9ZjdpYiHK/CtIU3oUALA7yYfeVrn
         ZDMgOIP2tx1gCIvmh1KH7VM4M2gLuNUi9zP1p1gBadSI4kBCGN9b8iDxZPBicIL9leGv
         Kv4GihcAHi9Xbr10tEjhlEWnKDpcRPIXAydb8cqjo+/O0giqx2olCWhH7cmnOGP2uXXR
         ibkfdF/dv9GSJNrXYAgiVfpAtZkz0zf2ZFh5AitO4fRl8LV1FT2L1lWFF2t+wrcM4sp8
         InK0Kq7OieXw449Lx5p4BGScd/x8gyxFqgI9XtVyb7wgNkdf1xQcAY5wIwn6mS443Bhj
         M5zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=lFELP3gC;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=186UVwPUYFLoaMnP0J1T3WZuGdIInGyONlZ/ThWhhUU=;
        b=aFyP9AMd70J+WGGNdwPPVyUk+tSR8WBgCAZ4FdYIbhfBVk0ydUjbFJf1SYdcJ6uas7
         WrxERs7Xp8xRvxL1vH1L0xToli6pI68kYwjoYMEug4id0+7XXSjHWcB2rZVFoP2QO2Vp
         ugUkaVf8Ip6Tl6AI2Imr5kjWXSWUIg+MUiNr/JaxFf79yNDiexrU98JwroTKe7J39Is/
         Vk3ANvnqt9lo5DSNOXi+XYZpFFCh5yrmMYGSnOzeeW+8IcP0N1MlxrQfO3mkiCSsFjVv
         oeK9Ii7zKuHGhI2vh9ax6lmUBqzZPEbgxAENqEHA/+bQapM99LbNAiopztTjtqjBiJ4A
         7yNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=186UVwPUYFLoaMnP0J1T3WZuGdIInGyONlZ/ThWhhUU=;
        b=L+mCV00XWgITwIk0CH4I4o5EHb539vUe54ZtJbtfxLNTP9ADy3zx5TfhGEm6aJqOZO
         vlhSxY89e29hK8cLyO2qBO3UvO554GruDqDtOPAGEW3WMawtmykYZjdjvgCmz/SaLqwo
         CcfiWFiSCRgYAdJ9jWCNtrKwJVXanNZ2RuDmJ+MhhivFHSKUsMhehVBtaLF3smP0gahi
         6J/uvLSwxHOGiwOJjHLH9M4i9zmgJbcMsn6Sk9SRpSuI6mnN0Gh2nnSpPGI1Mj4YRMjG
         0lzPaDAkjXZd10wTKNwXQmbgzgf+DrC7P2P1uWaKK8hCsCSDFp8+L0G1yKeRRnJRERi5
         8Ewg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVQTV6svvIl6uvc81A1UN5UnIAvJ2tdWCFXOOZ9D49/75tJVnsL
	2aYL491pQH9Av60V9Dfz7Qo=
X-Google-Smtp-Source: APXvYqz5g1fdIJjqIA5MmoYFJtIGgrvsE7xXnUzab3AhCksJFJA6ipaFlXG69QuWotIFJKnCINjj3w==
X-Received: by 2002:a6b:14d7:: with SMTP id 206mr15902507iou.299.1556727318531;
        Wed, 01 May 2019 09:15:18 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:c817:: with SMTP id y23ls1726747iof.15.gmail; Wed, 01
 May 2019 09:15:18 -0700 (PDT)
X-Received: by 2002:a6b:b354:: with SMTP id c81mr19175400iof.242.1556727317991;
        Wed, 01 May 2019 09:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727317; cv=none;
        d=google.com; s=arc-20160816;
        b=kJxFjPzUrXNIjOp658mnOS0NFoYZDBs7wjl9XlyoZsv027JtntitL4vs392ooTfYG/
         f3nsfa9H9Lc9LVPpmilqoBljI/ZOcFEebZTP3PXDpyU2y5CK5Suy6i3NuIiOanjLopdC
         zrNz8WH/B0v9BRF0LX2Xw1yi7qmu1H6/DSL3OxNp0InDWrU/gftEnuBMInAwd/a5g2Dv
         Rg8OLtTHwqGStmN0JT0UOA1Y4jOAiKJZ12XuRnrPzqKAitS5reDMgKsVss6X6PkKxc9u
         WJ/4fakF/9Xyjp2OuqAKyygTtsvAN3XxV6z9PTsvq3+AIO39gO98lHYPr/QqHFvNjdG5
         xVKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RsTmBar8e9OXn6pfTb1hAT6MNpTHSeyWbZFOICnPvHs=;
        b=SvlfBehVP0vwnw23k0iGONUFEiRfcI1dGkn0CC1t9tZnouDPEqOqVoFsDqGmXeSZFR
         48bpvx0ivKxUCIpM34UG9Td3NPwAUSuQ+SmWApVBIEGtdMqL3oRoMcPmVWmlzWYKZtC6
         D17COs164rRGj+0xKM0BIj0kfA/8Kg/e6gK7cguS8QlE5zdmlj5Xdu/aOKFROOUojR6O
         DxrrP4F7dRyT8946K8AgX8y40Objd807DFMBLcUs7vExXxGnNMUKoV1HtYIf6d1kd93A
         So3cz+oW71pZ7fNKHYGwHYBYc74k+1KSlYfa4yO0/80owKJy375yL1vdggA051PyszFv
         ro5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=lFELP3gC;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id 196si356507itw.0.2019.05.01.09.15.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsz-0005as-Vp; Wed, 01 May 2019 16:15:10 +0000
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
Subject: [PATCH 10/24] scsi_transport_srp: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:03 -0400
Message-Id: <20190501161417.32592-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=lFELP3gC;
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
 drivers/scsi/scsi_transport_srp.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/scsi/scsi_transport_srp.c b/drivers/scsi/scsi_transport_srp.c
index 4e46fdb2d7c9..280d9029759a 100644
--- a/drivers/scsi/scsi_transport_srp.c
+++ b/drivers/scsi/scsi_transport_srp.c
@@ -1,22 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * SCSI RDMA (SRP) transport class
  *
  * Copyright (C) 2007 FUJITA Tomonori <tomof@acm.org>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation, version 2 of the
- * License.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
- * 02110-1301 USA
  */
 #include <linux/init.h>
 #include <linux/module.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
