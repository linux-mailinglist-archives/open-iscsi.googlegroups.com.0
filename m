Return-Path: <open-iscsi+bncBDUNBGN3R4KRBIUMU7TAKGQEFCNLBYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0410AEC
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:31 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id l13sf11179124pgp.3
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727330; cv=pass;
        d=google.com; s=arc-20160816;
        b=0d6/+Dga04PVjB8NmVl2wXGCXlxDsPIUg2bsGRzng4xFkJdazOidZP0zN9i5DDM6fQ
         DV7L57UimxgGoU0TdjLZdUibNcRNGiZOoWcSoTvCN+1uq/F9mda5/P5QuYPFlOQdSu/H
         3chOWcTIfmkzPqg+/dQ7IzGOa9aqWCE7QfIqOVq/9iGkAi10GhJDDh7Si6lYkP5sk4HW
         fTy/pHDPWOCMR8mpHxORpniztBsl6Qt4GIaTijuAXgLeStLGY3vTzc6wTgZBFY6wz36+
         ZwNIBdeg4RlTfqmqHsBuWk2Z22Wp1Fhy2yHEfXU/uhh29u2ux0Os0gp5T/0iY1RVCiEH
         tcrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=mRTm5IoAzlId70QwqBjO6uWi/NRYGpRugbA93nOYXag=;
        b=svCRH7OeVMURT1I4xbxRl7TUvphA7CxApugt/rAUdKeDSuOERpuFaEE4tdvPMv4CVA
         H8QSLr39uXHA1IE3dS24L48e94VDjAkuuOEqn5JED728ay6u9rNjkSk6r72OO1nw5AdH
         7NDim6W6Od4AfCrI0uoV45dhtCk+2G27T9YIKWzxdn0tEESdeQyhD+moPV/IX9OJ5Iym
         aCcQMoxYtZBt1FE9DaLv3GxRNZLN539EaGlsUNq16ogLHom2+lD49PbhtBqM06Vi4S00
         yDCvUIBo16j1EBVTTF+nB/c42qkBbUCi2STZFbFkZiBlCcYMxgjSKRFFKabr2Aohk0st
         8sYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=sTSEliLx;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mRTm5IoAzlId70QwqBjO6uWi/NRYGpRugbA93nOYXag=;
        b=n18WUSQtkrCozViGEPTtvZoidYD5DuDw1/M3YfTZ9mVgp7c5lJ7zZQ4ExL1kOFUeGx
         c2ic+bwVD4addMmx5m9ijic+R8MbK2TP1oquWD8Fo1MtVsc9u+UrrxgTXDvwOxm/KmGH
         bJaQOj6ygSy8zwj7W7cgXTbEf/xmsEVLX9F5J/QT8S8KfhUgiEfuNeBG+oz58QmsJ+X1
         EIfr5K1y4Gl21O9rDE5V6o15YiSzKQ4h8596EPUK8cIgvORYPV+vHtZv4TOF6BXLuLfV
         eXW1hKFf1nWTc8OWqdlIT3OiAld86/a3/6zgwr+eN1Zag7pbXdaLr1ZF05vS76kqNfgl
         eW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRTm5IoAzlId70QwqBjO6uWi/NRYGpRugbA93nOYXag=;
        b=AL9Lj4YNNeWeoRYxECSJ7sFurBsQCYza095YjsiCbVi9/EowDz5/ZVtciIfylh5xR3
         PJpJPGmAwk836SFFse6cp0AbTEhd4TF+0TGLPRc9RLwNNSMyyIFdn1ON0PGN8x8JPGMX
         /95NZ+gXIwvhKfBgvGEwswqXOuNZ+ZcqdBjIyw0aFHq54ILCe8mBLvpKDqYlGnWJDZXc
         U2jaYn+XGjiczH4nMAnMWMKdLJ3vhImGk6q01z9FZqG7a2SwKsRXk6uXDAyIpi88vcy3
         qSSCSeAYFYWPW8Av5D6AA0urzwACGcwCDSQ+ObR520WfRBxl5zZu37+35BmKKrnuD3D9
         fSkg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXzK/XHpFzHlNXT45Xa2Qm7iFe/y82TqkLL/wsACLHo0fvVcWX+
	LW/zXtOsQSU26hfih62kznQ=
X-Google-Smtp-Source: APXvYqxgfSE9V/jPjzO93e7Cvle4GeoVq/74Dt/cHjG1lq/zE9laFlF+r+LVid4Vv0UkMHU8se3Wmg==
X-Received: by 2002:a17:902:6946:: with SMTP id k6mr22906872plt.81.1556727330324;
        Wed, 01 May 2019 09:15:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:ff24:: with SMTP id k36ls2232378pgi.2.gmail; Wed, 01 May
 2019 09:15:29 -0700 (PDT)
X-Received: by 2002:a62:e201:: with SMTP id a1mr10487753pfi.67.1556727329907;
        Wed, 01 May 2019 09:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727329; cv=none;
        d=google.com; s=arc-20160816;
        b=UnLadXAPrGLDzenFEWpyimhhYFcfBvCUKYFCWlAuOKLrPkr9GYW0YEZUopo1WIPE3K
         JcY4f+WrxOlviX9iewXIeS+lKh1HBlVCgOSOoqRsEURKVebrVs95YoWhpQgzKV695LRZ
         bAofqzkNFJdoOhrDx+wY7bTYo0bOpUO8M6lckL3uFfce+cNPjYK3S3k0aFH0/tglOuJ8
         +X/ajcgKxRwpu9EjaqxX/kE18w1IImrqIqls2GbL0PaiqHP6mWrmE8usHUr3GZ/8OYDb
         /CiPJRK3RXYTkdx4WIlVDNV1b7oeD5PuiZD/pZBIw46d1I1B/yIX8bFdhD1o8cdgGpID
         yH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qeu4XawShc08TSDZ6EHrswB6lLFZ3eL+4JnriJ6bcNA=;
        b=Bku+YxuuZLVBoI8EJQ5WqdX0DFD1ITJPiWZTqjRpjrjzNO1h5Pyk7Me3WwSL99CjqM
         nggx75u6grr4FOXDo7B7nLq+H+R8RhW8ALJ9h/ptuL91eeEIaj/cL5Dfiyr6bse1HASU
         E6JU2bDer+KC/Zne/aqHU3DnYkMfgDQ2jjJ7ipb2UlD5+lJX1VhFMT9BX7DycSe2Fmqh
         w26kHAsSg31S+A14P6Xt7sMsp87bPc4nbOmMn/Tknd6O75ZGyzdUc+AOQVEE/1nyY0wn
         sweJ6wChGI366KiXS+VYVn6zAT2ybhqMGDBfgqrhfcZhGlFfRcvQWI+Lg0kH7/Koo/lS
         xTQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=sTSEliLx;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id q203si2363244pgq.4.2019.05.01.09.15.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtC-0005fS-Ij; Wed, 01 May 2019 16:15:22 +0000
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
Subject: [PATCH 17/24] libsas: switch remaining files to SPDX tags
Date: Wed,  1 May 2019 12:14:10 -0400
Message-Id: <20190501161417.32592-18-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=sTSEliLx;
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
 drivers/scsi/libsas/sas_discover.c  | 18 +-----------------
 drivers/scsi/libsas/sas_event.c     | 18 +-----------------
 drivers/scsi/libsas/sas_expander.c  | 16 +---------------
 drivers/scsi/libsas/sas_host_smp.c  |  5 +----
 drivers/scsi/libsas/sas_init.c      | 19 +------------------
 drivers/scsi/libsas/sas_internal.h  | 19 +------------------
 drivers/scsi/libsas/sas_phy.c       | 18 +-----------------
 drivers/scsi/libsas/sas_port.c      | 18 +-----------------
 drivers/scsi/libsas/sas_scsi_host.c | 19 +------------------
 include/scsi/libsas.h               | 19 +------------------
 include/scsi/sas.h                  | 19 +------------------
 include/scsi/sas_ata.h              | 17 +----------------
 12 files changed, 12 insertions(+), 193 deletions(-)

diff --git a/drivers/scsi/libsas/sas_discover.c b/drivers/scsi/libsas/sas_discover.c
index 726ada9b8c79..2518cecb7edf 100644
--- a/drivers/scsi/libsas/sas_discover.c
+++ b/drivers/scsi/libsas/sas_discover.c
@@ -1,25 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Discover process
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
- *
  */
 
 #include <linux/scatterlist.h>
diff --git a/drivers/scsi/libsas/sas_event.c b/drivers/scsi/libsas/sas_event.c
index b1e0f7d2b396..a1852f6c042b 100644
--- a/drivers/scsi/libsas/sas_event.c
+++ b/drivers/scsi/libsas/sas_event.c
@@ -1,25 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Event processing
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
- *
  */
 
 #include <linux/export.h>
diff --git a/drivers/scsi/libsas/sas_expander.c b/drivers/scsi/libsas/sas_expander.c
index 83f2fd70ce76..76ea83ddafa7 100644
--- a/drivers/scsi/libsas/sas_expander.c
+++ b/drivers/scsi/libsas/sas_expander.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Expander discovery and configuration
  *
@@ -5,21 +6,6 @@
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
  *
  * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
- *
  */
 
 #include <linux/scatterlist.h>
diff --git a/drivers/scsi/libsas/sas_host_smp.c b/drivers/scsi/libsas/sas_host_smp.c
index 9ead93df3a6e..55dcc9c934b2 100644
--- a/drivers/scsi/libsas/sas_host_smp.c
+++ b/drivers/scsi/libsas/sas_host_smp.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Expander discovery and configuration
  *
  * Copyright (C) 2007 James E.J. Bottomley
  *		<James.Bottomley@HansenPartnership.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; version 2 only.
  */
 #include <linux/scatterlist.h>
 #include <linux/blkdev.h>
diff --git a/drivers/scsi/libsas/sas_init.c b/drivers/scsi/libsas/sas_init.c
index 28a460c36c0b..8f2608995726 100644
--- a/drivers/scsi/libsas/sas_init.c
+++ b/drivers/scsi/libsas/sas_init.c
@@ -1,26 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Transport Layer initialization
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
- *
  */
 
 #include <linux/module.h>
diff --git a/drivers/scsi/libsas/sas_internal.h b/drivers/scsi/libsas/sas_internal.h
index 2cdb981cf476..1bc248a1b4ea 100644
--- a/drivers/scsi/libsas/sas_internal.h
+++ b/drivers/scsi/libsas/sas_internal.h
@@ -1,26 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Serial Attached SCSI (SAS) class internal header file
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
- *
  */
 
 #ifndef _SAS_INTERNAL_H_
diff --git a/drivers/scsi/libsas/sas_phy.c b/drivers/scsi/libsas/sas_phy.c
index e030e1452136..2455199e5ffc 100644
--- a/drivers/scsi/libsas/sas_phy.c
+++ b/drivers/scsi/libsas/sas_phy.c
@@ -1,25 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Phy class
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
- *
  */
 
 #include "sas_internal.h"
diff --git a/drivers/scsi/libsas/sas_port.c b/drivers/scsi/libsas/sas_port.c
index 38a10478605c..11f028a441dd 100644
--- a/drivers/scsi/libsas/sas_port.c
+++ b/drivers/scsi/libsas/sas_port.c
@@ -1,25 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) Port class
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
- *
  */
 
 #include "sas_internal.h"
diff --git a/drivers/scsi/libsas/sas_scsi_host.c b/drivers/scsi/libsas/sas_scsi_host.c
index b775445892af..602bd1a17a63 100644
--- a/drivers/scsi/libsas/sas_scsi_host.c
+++ b/drivers/scsi/libsas/sas_scsi_host.c
@@ -1,26 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Serial Attached SCSI (SAS) class SCSI Host glue.
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
- *
  */
 
 #include <linux/kthread.h>
diff --git a/include/scsi/libsas.h b/include/scsi/libsas.h
index b08febec7895..901355a1bc53 100644
--- a/include/scsi/libsas.h
+++ b/include/scsi/libsas.h
@@ -1,26 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * SAS host prototypes and structures header file
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
- *
  */
 
 #ifndef _LIBSAS_H_
diff --git a/include/scsi/sas.h b/include/scsi/sas.h
index 42a84ef42683..ded4d6b7a377 100644
--- a/include/scsi/sas.h
+++ b/include/scsi/sas.h
@@ -1,26 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * SAS structures and definitions header file
  *
  * Copyright (C) 2005 Adaptec, Inc.  All rights reserved.
  * Copyright (C) 2005 Luben Tuikov <luben_tuikov@adaptec.com>
- *
- * This file is licensed under GPLv2.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
- *
  */
 
 #ifndef _SAS_H_
diff --git a/include/scsi/sas_ata.h b/include/scsi/sas_ata.h
index 00f41aeeecf5..9f5ce0a3e63e 100644
--- a/include/scsi/sas_ata.h
+++ b/include/scsi/sas_ata.h
@@ -1,25 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Support for SATA devices on Serial Attached SCSI (SAS) controllers
  *
  * Copyright (C) 2006 IBM Corporation
  *
  * Written by: Darrick J. Wong <djwong@us.ibm.com>, IBM Corporation
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of the
- * License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
- * USA
- *
  */
 
 #ifndef _SAS_ATA_H_
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
