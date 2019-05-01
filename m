Return-Path: <open-iscsi+bncBDUNBGN3R4KRBE4MU7TAKGQE5H5ZH5Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFC510AE2
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:16 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id r3sf2990671vsn.22
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727316; cv=pass;
        d=google.com; s=arc-20160816;
        b=RyCERGpJGWWbRy0ALWSgVcoKi8guPjR3dN+VNrE5Y+uQs671Y1wGc9JyjYtI3LOz3h
         M4QgDWMm/4IvKpyV6wIsSdX2l/zHF68/xhGBQBSL/C6eguN/3Kp2kk9tJfZRMtwHgmRz
         7hU3EBPqGWYgJDZxEx6Mn44SxBjqpEXiihniHavAtKFFDcSpLjabOYIH6XKmbjZf4SX3
         pXYlQHaHk6uhEIfABx8XSt6hqZpAdQpuJ61hTEgwQubzfVzOH2biUV69UXack2i7+ddc
         OWDct6wEFj//QeYyJsF6lhFQVnnHNewWxf5HSq1+Y2oUKh0+ZtnxeoFIxd8ZxnHtozYO
         NmBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=J3pnI1V0ZvWss87E8S1Tieuhzn4BOByCJJUN7rE1aqU=;
        b=xy9sashLzVh8FUn0jDuvuLbO/xyxBd3n/wxBwUBBCQVcUFVyUnVd1Ktog7HrxUpc26
         5o4HkqoKF9Tv8EMtgveFy2kqI/Ow/fR6oNHNV7EDMACPY11X0hnnqXPNUZtb5qiNiEy/
         JRTcdifPJ2a7z5ffr5z4SWbrBNdDKJ65c5kXiUObEo3pOgELr+UkuPOV2G1QrIFVcA7b
         tT9ZXk+SG9cNSJ5ivYzYD+5V5r6HzSilXMYO3nOFLeBuSAHBO8PyFgP7Wa71pPqAL9Op
         aMz7U0YNGFtgDYDYVoXq7jtVBehG8tqDEuzJi0PGXisrzRTgVEJSmSuHPkcFEpKNAXCx
         OIHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=Q7AWxcBI;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J3pnI1V0ZvWss87E8S1Tieuhzn4BOByCJJUN7rE1aqU=;
        b=SanmHxP2tsc/ZP/eVGNJ67lwcbcHnVNrl1t/3G7RoWKpL0H4CFoixdJLoqcES7qnJX
         y4c1NIP9RE1plqjzJlDf4kc2ZcGOXXqJ/53adJ61yo6+dA1si652l8J8jBnCbjRmbxZH
         Xey4m1CvkY/wDZ2OqZpssX4iU3Njns+Lzh0fSABO5XsLkz49b3uYQVNACPC7wZSfwQG/
         xN6CqFT9WMQGUOLVIUNRlPnl6rFXvOR+GYCDbSzFV/7bGJmrzYQSnQ2jrrFq4U/67c0I
         HUfAMqvrNLYLVK5Z9fAYD7EqRlhNAl2X6o2YT86cvienkbCgBE6Aj79/4ljd4kN/oKb3
         +kVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J3pnI1V0ZvWss87E8S1Tieuhzn4BOByCJJUN7rE1aqU=;
        b=SeKaa67yqzlCrOMdxaOddqeKynwdRVfuHev9uhQ97NNFqSkc+nVUq5zBiew3Afmri2
         rQh0Fc36VSL+R/+U8wIBi+Vz+vRuiBsuYJWaXJKA3nig6NcyF24RufBWVfxYWay8djxO
         a/B59t10cRCwH4NqLADMxmhS7p8OiCJ1ux8dPPj7MUhfCr9U3phSTa2hA51XMyjrXu4P
         mDbPlXSCZIDpCKy5LcprDaRNpjQYekAh4oWDH/WUgSbefL0kRLPurMVTwTAFQypFT8+G
         XsUvVyp4ombaA2DTDenNPTI3HspIUyn4wIVS2iP4HPMC8Xefin56WZUyuh5Wta2Wf5Cv
         xvww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXJJYjU57dzX4v7twjsRmq37rRMRXvPcz57DRCc1WLh24vGaJX3
	elDCijvaBEPkZ+muXAuCBi0=
X-Google-Smtp-Source: APXvYqxH3JYssaETA1Q+uOGMlVEvTdz3XvNzFmp3rs8H+d+9efsRJriBu31oIhRW+XQyF1/AcmkNHQ==
X-Received: by 2002:a67:ed84:: with SMTP id d4mr39991197vsp.207.1556727316040;
        Wed, 01 May 2019 09:15:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:2812:: with SMTP id w18ls451479uap.14.gmail; Wed, 01 May
 2019 09:15:15 -0700 (PDT)
X-Received: by 2002:ab0:7586:: with SMTP id q6mr17619035uap.133.1556727315648;
        Wed, 01 May 2019 09:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727315; cv=none;
        d=google.com; s=arc-20160816;
        b=ImxlCgpYlHGcTM9HDsAzht4aEDj2YlTILGxYAyoIA0ugBu8PKrQFFUaZsLqGlGhDxc
         wg8B0pJn6aI158pF4yBJEJYhnQVRqa37qT9QKXGlb4vAcxbRwru6nprgeqssFRnzvdUX
         CKoXSshhWY8XD3L5ksO9j2NxjBRPfgKU/vQf/a3gK1WMByK4VYputmfOV69l59PgrLbS
         TLbOK+eG0Vo1ykMZGlTM4PEGZisgy3GicmPM30wv2QgazK5O621oejedwg9CduR0+ABU
         jrul57khpHz5nhawj/P3XC+wuihA1T1OtcrycG5t6WFNr4f2A+O6WgfCqGekFArmL887
         k3/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Vqy9GYMIb0rH6XPVOPvJOsTv8lYc6QyM7vi2h2ENsu8=;
        b=Vx0cFwZ24NTXploVBQP0Vc9KAK18fPP31mAv1jCtmCRAbCZYnDcb4Xomug2hTsOCgx
         1WqzVzZE/zSpy1YO/SF7+VSDtsEqea7DCBH3ZM68okBMNJMhrz3lPsgT6gYURDWLGJp/
         G7ChvChGtS7HvqtJppmeZyBj2oQzxYA+xL9u4ApnJI3lN42UO5bLq5O6jLmuXtl/CEZO
         oeQsJPJeFXqPoJaQODNw9jIpQb/P3oHzSAasKLuLsoyjopC+cqRXOiIWBwdg1SaY8VT2
         0xUZNNZ1gGe7uwsLCpc8Xb7Csg3K9tX8398xVFPFktWObzTEGghH7KUTf8q6jiuHabSs
         tnAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=Q7AWxcBI;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id k77si2362811vke.3.2019.05.01.09.15.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsv-0004k9-5Y; Wed, 01 May 2019 16:15:05 +0000
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
Subject: [PATCH 07/24] scsi_transport_iscsi: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:00 -0400
Message-Id: <20190501161417.32592-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=Q7AWxcBI;
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
 drivers/scsi/scsi_transport_iscsi.c | 15 +--------------
 include/scsi/scsi_transport_iscsi.h | 15 +--------------
 2 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 0a82e93566dc..828b242e28b0 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * iSCSI transport class definitions
  *
@@ -5,20 +6,6 @@
  * Copyright (C) Mike Christie, 2004 - 2005
  * Copyright (C) Dmitry Yusupov, 2004 - 2005
  * Copyright (C) Alex Aizman, 2004 - 2005
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
  */
 #include <linux/module.h>
 #include <linux/mutex.h>
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index b266d2a3bcb1..98149e82926b 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * iSCSI transport class definitions
  *
@@ -5,20 +6,6 @@
  * Copyright (C) Mike Christie, 2004 - 2006
  * Copyright (C) Dmitry Yusupov, 2004 - 2005
  * Copyright (C) Alex Aizman, 2004 - 2005
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
  */
 #ifndef SCSI_TRANSPORT_ISCSI_H
 #define SCSI_TRANSPORT_ISCSI_H
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
