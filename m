Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEEMU7TAKGQECAYGELI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E35F10AE0
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:14 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id i21sf9500938iog.9
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727313; cv=pass;
        d=google.com; s=arc-20160816;
        b=GhpeNxz30sBJb+LT/LNvH+UWH9eaXxPnUhQcajBaFYEh3xtl7/CYVCRih/gAqrOLkA
         Tkyg5SNI8Ez5zud/ceDo4iccz3lYq5IRKx6VxjZQxP7XcBIykLwA6EYOI4sW5XLRXC5I
         VRUToCgwFPLtQ8pFH+OF+qcDAIYP0lU3OGE/fFOgWkk1oZ6hqhglOHeyIWBMXSJfkLxI
         6hGb6MxXI3FGLHMDqjW13frnmKgGXgf1jgGmpBYz6mwkQ6uH9f0pLfNYYZ7Yq8KF9KZs
         347eLByHP+HgBqIaAEUfiU3zzbxgMMMYf9VEEi2FYZxWxc1PgL3n3blqeAzUEOBoYi2u
         3clA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=my8hfwPkOjM/G6nrp3qUqciAw0h2ncm/qLm+sjdfxHQ=;
        b=dQbGAtMb8bYJdddxxiS1j6E8SPGbUM/f003CbCPKAQywceYwgnmaYB1utoUx6Jn4mM
         FwcSRaA29EL7rRp2ru3Z8aJwsLUITV1KTRZQs2KlcODyG2tmIJk3kt2GQyYhXno+BiN+
         HH5T4K32H+PhadOGWYGnHMSU0RAHExPTIpqnPJN6zSu5whp2p/09bSZNw0t+3+nIg4zV
         ntGhWuM0h9NrjjQr1hjuJLJtu40UBjh/3VZEfyh8Jrk05iqoNvdLSgPVI5tbEUOhOtQU
         WP9yYGme0/aBn0deNgYwwo6OiDl7j7mp6RvwOSThndh4odIoeeCC8PB1lxLHrbBqVLaQ
         82eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MRoqOlbJ;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=my8hfwPkOjM/G6nrp3qUqciAw0h2ncm/qLm+sjdfxHQ=;
        b=MTZHOqkGkFAoZaHsRL1boePQtkP4ZQz+g4S2Z1g2D5ULLDvtoE1S2c83c/1a/xEOA8
         qH1eIde5GFVLOpxrWiE4LBsp+YSC12sbHVtiREylV0jSp0svMwvLra2kmCooji6oDkla
         EF4+3gj8Sb0lNM1SiRFmX4iuncZiWZpbjV4Ye0QCB/IirFbqA7LfTHg6ST4As1N+E1lb
         VRABYgvSInTY80qj9C0ketCHG2gHKaIeDPC6BgyC5x1ztt1aRiG1GQTwy1lD+KS70te2
         qyAszfEHcVxkGMx6ED+q7tOa2K4pr94YVgDWrecxaKV+dRpkx4zggnrnZ76SgdVxtld3
         dv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=my8hfwPkOjM/G6nrp3qUqciAw0h2ncm/qLm+sjdfxHQ=;
        b=PUSI5jhxXdkJ9+oFQkj4i33WYjhVnXWM2IUnMGjyk1asiMHml/z9r8tWuoY7dglPyX
         tAvAFGmv5kCNLSG7hVw5ryiMmPhLRkr3cal4OjgUnKTCMu1pox/rAJbr/YJ7xxL8wMHT
         MpPTav0NytfleKssJK15wEv+905atDLd+6rkT9vmmurgEkhyCekqDlwe/XJ9NdQqmfRq
         mnC0SY4U2YYtvyhKCKS7q/efA7dp9h4w4wjcuOvYIVssjWe8W1hwqtNc89JJHP6CC08a
         Tb2k4V97w/yu8UtoS4vJKF9xXBz1prtHDaGzXrZ0VN+Zqba1vVpDMEyDjT8GkHMa1mQw
         MWRg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVmL8S07YCsYzwPoaZV7Z51G35pJHzgbRvY+kQGTpuWM1lDshtO
	ljHIz+4os8p++mCBH6NgUMU=
X-Google-Smtp-Source: APXvYqw+C/s1od36llooDWjq0hskWxJI1NH7v+UnC+8ZMFKJkUSfCbbuB3jdjK8gdKrkkV4JrW+kqw==
X-Received: by 2002:a24:4a81:: with SMTP id k123mr9302314itb.159.1556727312883;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a02:c6d8:: with SMTP id r24ls2249227jan.1.gmail; Wed, 01 May
 2019 09:15:12 -0700 (PDT)
X-Received: by 2002:a02:3ecb:: with SMTP id s194mr30994759jas.29.1556727312532;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727312; cv=none;
        d=google.com; s=arc-20160816;
        b=L46uGBEv/3Vc4UvEENdJoDPTFs1ndC7kRYB5yrNyW2dPg/VMCVs18444J4fqeWs54+
         GdNBr9q5FOCXYl4KSIxxMh4RA2WoM9zGRKrD4LwnkhA9d9Y5k2LY85TwRbAdDM/2udi8
         arjW7qWCk+4Nn560/cGYcyaFTA6EHxZ+M6fab1obtLsyDSL/we5Sxm+fhfCR46pxl+OM
         hJ/y/Jbyzfp/LPrpI0v6SdTXA/szqhXBCuas+aUX4xKuei83KkVRGbkF/04GONvN589J
         Aq9dboCNR+p0uO9KmD7TpRqTwZenaQsy7GATRfpJ5tvK5NX+CLYMVq9RVFhfYnapSAsa
         KmUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p8F4y+aWtrMcsvCid13qnpga0eKjm0mbCAH5j6Ry8KA=;
        b=QWlbpTJtxF6rLQk2fiSx5WWWnbb2zMd6RQc2AEiouEgp7z2g/CG9fpaVJWQMn6ttdW
         EuRI4DliUfs5DhNKm7VhtQxXA1j1d99KSyYkWQ72N7lE37HqCE+NYzGUKbh23ANXLwaq
         J5aNJpNbd8Q1/WlDH7oq138VfQMt/4U85YyMTNim/OLy2JELmmkDwMc+E3J8LfCDpu15
         lkaIeS59AvjkOXn8WiOO9GHEKkSXJ0G0KoSrEtQBfaQza9O0FJ71///OwOCfuBchXXfd
         E9g3hVTL6MSTRN8TgMaLfhylNhgeHLsB7kUKZWiH2w2gDtuUYtpnLsdqhMPpGJ2V+F9r
         gMOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=MRoqOlbJ;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id 5si336790ity.1.2019.05.01.09.15.10
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrst-0004UB-Ds; Wed, 01 May 2019 16:15:03 +0000
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
Subject: [PATCH 06/24] scsi_transport_fc: switch to SPDX tags
Date: Wed,  1 May 2019 12:13:59 -0400
Message-Id: <20190501161417.32592-7-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=MRoqOlbJ;
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
 drivers/scsi/scsi_transport_fc.c | 18 +-----------------
 include/scsi/scsi_transport_fc.h | 18 +-----------------
 2 files changed, 2 insertions(+), 34 deletions(-)

diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index d9e3cf3721f6..8be503da7edb 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -1,24 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  FiberChannel transport specific attributes exported to sysfs.
  *
  *  Copyright (c) 2003 Silicon Graphics, Inc.  All rights reserved.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2 of the License, or
- *  (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
- *  ========
- *
  *  Copyright (C) 2004-2007   James Smart, Emulex Corporation
  *    Rewrite for host, target, device, and remote port attributes,
  *    statistics, and service functions...
diff --git a/include/scsi/scsi_transport_fc.h b/include/scsi/scsi_transport_fc.h
index b375c3303fe2..b990091d5c20 100644
--- a/include/scsi/scsi_transport_fc.h
+++ b/include/scsi/scsi_transport_fc.h
@@ -1,24 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  *  FiberChannel transport specific attributes exported to sysfs.
  *
  *  Copyright (c) 2003 Silicon Graphics, Inc.  All rights reserved.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License as published by
- *  the Free Software Foundation; either version 2 of the License, or
- *  (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
- *  ========
- *
  *  Copyright (C) 2004-2007   James Smart, Emulex Corporation
  *    Rewrite for host, target, device, and remote port attributes,
  *    statistics, and service functions...
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
