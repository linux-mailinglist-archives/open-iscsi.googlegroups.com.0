Return-Path: <open-iscsi+bncBDUNBGN3R4KRBHMMU7TAKGQE3KJRTIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1167A10AE8
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:26 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id h23sf3211023vsp.14
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727325; cv=pass;
        d=google.com; s=arc-20160816;
        b=FImB2Z1XeUtBQ0rvSjCSHTTVMFFicDH3lfaQLmq1BICxL+1xtOFM5a4czYkVx0xLbw
         LYQTmlRXZ2Sal3xe922ecFVP/QW4uNyZBtUL4sesdRQHFakB4CtVyj3dQ0Hy6vEGcGmf
         o/1neHTufiSqeveJTeL9qwNKcDuWuco4sk0DHZ79W6QpEPDx5OISj4Z+BiIlhu64R4QM
         jH7Bsxu9eyjAb3rt62dFunQ8TGYWBFQRARpY4nrFU1xxx1NygYpFnBwF1xmK38rrDhmM
         n9rOqLsPcmLE+k50TEHFgjqm4DwowEEj7rkqIv7aOQo+QoZU3/CZAvEwrTJXnNWgGgYy
         kStg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=B6G0Lmv3qdFC3rSire8nyuuiVwj39q+UULGd8bXFneU=;
        b=VfuKbqaiF3WYpTj3vdWCo8OmtlRUUEovNMM+zECiIJSPsFv/ZBq7TaJpLdIQpq56bg
         V3jgTIkHhQ56n7QcGP+/Ofdbl/QqlnqlGSYwPUJUit68pBWzHWcN4Jtbrqpr9x8yNyX6
         IGZigZ3gsnB1ia/1MouVN5jrBuAjjEYiyejpJrYc3asje1YQ3mw1+il+wQQRvU/HTyK1
         c+ocOHGW/l0128jbG31KRr/4j6kYKMZoH2VlLgLOWOJ8tfQpqzfp23FftEgy/Gx3Gzdw
         fyYEZ76BBFxW/nKQhCcbPyRRev6UyjvnFz2c7IXLwTFXzJ2EWfkpJMg+TWjOLDsmqcKN
         RHEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=cfaw2NiU;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B6G0Lmv3qdFC3rSire8nyuuiVwj39q+UULGd8bXFneU=;
        b=TIUh4vdBgM4+grxOIWNIVwmcyUASvbEN51yPXPw3e5I7n6K3TL62VTKA2809uUL/HH
         zE1vk4oe6bjJbe40Dez/MmyoQrpFDytQPECxwiUFCempOZ+45iXy28D1HXXo912LnGqj
         mhlH63WS6Bw8lGdCOzf6UOo1e+RF8DAkB1DQ2sonLFpu5Qc8YqDvOXNxPwV0jnImKKJP
         OTIQjSooC8hfiaRxr7MOVMQkcHkoOk1X8GKoNo+mp60RrDSmpJF4GqOeanVp7VdcMdWf
         O9aJdWBuVYxd06g0VpOUBMJ+sKZrEXovtfe6wCYumyWxyEo7TEwmX7BBpLv1Gv0BVMOk
         DWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B6G0Lmv3qdFC3rSire8nyuuiVwj39q+UULGd8bXFneU=;
        b=g5dsf43bb4gwmWzQGoRrKjVr3ObJwhuyAw6G5yym1g+hcqHo0NWx/1xyIHf907pU9t
         N2LTZnNPT8pBeDwajPoUdNScxfyrz06UKU9NF1Dvi2QLoEdOrgd0ttMRNTsxKwtoTqje
         EP4RIoWTuombyXnRi5SxZGR71kye8VLyZrm5B4XQO5RQoR1GlfueFLwMvQwO1HSgBB7H
         Qc9189odhA27/SqlfrT7Rj/+dc7AkJITqcpdmhSFvfAfTzfw8j6bSHcHkxWcCd4CxXAt
         jNqOzhTF4MrrbS0PrsFXzPvl0OjKqR8x3jpiU1EuSQbTe9v/X3zRRjKh1smbSrXjJT/J
         EsaA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUWUiYQSMTk++qKHJm2FhF3UgFH0kv8UFrdEfSkB4Osv6mCV7ij
	8fDH6ForG9fiyfwnCItcJyA=
X-Google-Smtp-Source: APXvYqxQydgQi1Qhyna6HjZSgTtmUpe7xSv/N5gpeKVL70o1KrJ0hdenytofecxn0GlOQAWLcUcHow==
X-Received: by 2002:ab0:3117:: with SMTP id e23mr3095027ual.102.1556727325155;
        Wed, 01 May 2019 09:15:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ab0:224:: with SMTP id 33ls2203083uas.0.gmail; Wed, 01 May
 2019 09:15:24 -0700 (PDT)
X-Received: by 2002:ab0:7298:: with SMTP id w24mr3889983uao.119.1556727324802;
        Wed, 01 May 2019 09:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727324; cv=none;
        d=google.com; s=arc-20160816;
        b=0CYszJjMhx58mqn2Xp04D54+RA9+9TLitYZlisBI3M/PCFjErUj4IUiedRDKoZB7Ku
         X4XUMp4elLe9QAyBFeDdcTKGFANi8Ppefm1niq8gbhv34PbKUJoKCSp8GT6Mg/VVB6aD
         vQB1AONeETbgEafjKqovI3cmJws1TJQfMLBkyyQTE3j54//u7Gd5/dgDOEic6fHf1Fbs
         8bPInScUXBWNpksnjjqF/jvxgjeDKZmchUU7fYdK2pB0YRs2sSKI6fO/5bYnAG+c2LDQ
         I6h2xjLKFDe4e2RZAayMYJ0hxTkhoBANhMWWbQqYAAeke8PK1XGhDpvG5zRpaOVyxexX
         XVdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uE0SUF9R6HRjOzvlq5LUiCSk/9QnkZULKelbq3k3kpo=;
        b=zl9SfyZgODivdv0cxZzt154pAIRWBNgUKqtzvSmk3dUncd9ze6GOC3n7cpGcTU18K7
         xJlqTEwTbcmR+y4E3RbeC0tb217XMCbNgiudUMLVjQaeQW8Gj2qvNAtY2WF9Kae4R+/i
         MmPEA46nj4Dws+o7q1d0yOQhcKPqQYg4ua0AeytBLGnjOOpFrBrwoiUeMvINWWAH/EzR
         Sb94JqD+ta+WlJ16hxApLuMMk3xiyiVvHj/f6rACuyc6DgYgKtPR4bR8+joa5W8e3l/c
         wsvbh09Jb7GNWSHNxnaJ+DZEJ2JPT4r3/EjIdgFETq8PMI2nW52ibNcDp44k0o7vzvmh
         vE5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=cfaw2NiU;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id x9si2167199uar.1.2019.05.01.09.15.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrt5-0005eQ-De; Wed, 01 May 2019 16:15:15 +0000
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
Subject: [PATCH 13/24] libfcoe: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:06 -0400
Message-Id: <20190501161417.32592-14-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=cfaw2NiU;
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

Use the the GPLv2 SPDX tag instead of verbose boilerplate text.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/fcoe/fcoe.c           | 14 +-------------
 drivers/scsi/fcoe/fcoe.h           | 14 +-------------
 drivers/scsi/fcoe/fcoe_ctlr.c      | 14 +-------------
 drivers/scsi/fcoe/fcoe_sysfs.c     | 14 +-------------
 drivers/scsi/fcoe/fcoe_transport.c | 14 +-------------
 include/scsi/libfcoe.h             | 14 +-------------
 6 files changed, 6 insertions(+), 78 deletions(-)

diff --git a/drivers/scsi/fcoe/fcoe.c b/drivers/scsi/fcoe/fcoe.c
index 8ba8862d3292..4ee69560cc8c 100644
--- a/drivers/scsi/fcoe/fcoe.c
+++ b/drivers/scsi/fcoe/fcoe.c
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2007 - 2009 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/drivers/scsi/fcoe/fcoe.h b/drivers/scsi/fcoe/fcoe.h
index 6aa4820f6cc0..15ee5a83ec04 100644
--- a/drivers/scsi/fcoe/fcoe.h
+++ b/drivers/scsi/fcoe/fcoe.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2009 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/drivers/scsi/fcoe/fcoe_ctlr.c b/drivers/scsi/fcoe/fcoe_ctlr.c
index 7dc4ffa24430..d2d17ed113ed 100644
--- a/drivers/scsi/fcoe/fcoe_ctlr.c
+++ b/drivers/scsi/fcoe/fcoe_ctlr.c
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2008-2009 Cisco Systems, Inc.  All rights reserved.
  * Copyright (c) 2009 Intel Corporation.  All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/drivers/scsi/fcoe/fcoe_sysfs.c b/drivers/scsi/fcoe/fcoe_sysfs.c
index c3dcbdc3aa64..b6a3bbe9ee2b 100644
--- a/drivers/scsi/fcoe/fcoe_sysfs.c
+++ b/drivers/scsi/fcoe/fcoe_sysfs.c
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2011 - 2012 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/drivers/scsi/fcoe/fcoe_transport.c b/drivers/scsi/fcoe/fcoe_transport.c
index 29fe3426f9f2..0d5363ee8ecb 100644
--- a/drivers/scsi/fcoe/fcoe_transport.c
+++ b/drivers/scsi/fcoe/fcoe_transport.c
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2008 - 2011 Intel Corporation. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
diff --git a/include/scsi/libfcoe.h b/include/scsi/libfcoe.h
index bb8092fa1e36..ecf3e5978166 100644
--- a/include/scsi/libfcoe.h
+++ b/include/scsi/libfcoe.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2008-2009 Cisco Systems, Inc.  All rights reserved.
  * Copyright (c) 2007-2008 Intel Corporation.  All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
- *
  * Maintained at www.Open-FCoE.org
  */
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
