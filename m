Return-Path: <open-iscsi+bncBDUNBGN3R4KRBGUMU7TAKGQEC62BVEA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D38810AE7
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:23 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id t5sf15196571qkt.23
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727322; cv=pass;
        d=google.com; s=arc-20160816;
        b=0bft/RA3vIipXEJPdn0orubnDy7gmUOUA9zSpgPiGHuyHkklpS2fGRt+SWCULZgFpC
         6gL+qOaRUIPq38YVW8pJFLVHMMdBglGhjEiaV59WpWq9jfMsiHfO4/JexmwwPwLSmLaX
         Ta7yPFzfkJxhoG4JJ8bfvZYbChlnX7M/+zMjewk0Ge+zLaHYgr/SBqWa2l9L8CpNv3MH
         Njoai0CKBSDqb2qN+kmgygKlW6UGbz+avXnIkMrYz6c7aaA5axZU6cl/8VQpvwQDHVeS
         JV2NgeduNH7kTzAQQExZIDPxVFDLz2YzOdF5qjG73MzbaDwHIv+2A5S/ZTcDJuRRyrXC
         rm+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=tJxRSfROB3/V6LmxwnPBOXu4JydZ82kK3gDzjDF/dG0=;
        b=HxUC2a1Go5TEG4GJCSBvgXNzRoHAeJ2pRSXy+XXKuzBG9M+tvSacIkfrLRZneFI6FQ
         XKU7es1PBn2NmUdvo+fh4QCdWBLR1HnK/Lt5f4Pgv47VGoiAIbpPiEfeiE4mlCVzyr4D
         AlnBDh7eRY2OltI9Q6FRmuOMglu3F/NdLmdMp/Ba2uIk0hq8wK+2xdiPti/g0zKfXsCE
         pFQ1XHr2FBsf2tXrz37jqTMJNPDoD4Tv5oNJMT5v9nDZ1iZocAymgsYSvXGanBt19rEu
         E9DpNNpZedShuS5o2RBsj52B4Y07WPiHVzK6/t9ajbwmulg+o/ai/NbgwXszYmfX5WLY
         2Www==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=m9sDxFpm;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tJxRSfROB3/V6LmxwnPBOXu4JydZ82kK3gDzjDF/dG0=;
        b=MIDj9HHmOH0XkY3KrpLfK6dHIFsIPx5hQKn3DeQWQ8YhxBiDguVs8DNDwfA16ZDc3w
         g1yCl8mnPfgTxesRUJl0qVnTNs7qUIxVn/BUd+gEwsYSX37aexj4IvuuPJE8L6KcsOIs
         D9O83fINiHXP34E5ntT0CNtuhg0swq9d6JCjbnunTMqXgSrrKvjSaHrRIcMvGGZ50VFR
         5YexODOZfOIC6GtzkpdK+vCtdW6IlxIwa8WB3l1SBPKS9g4ZvDWlJwtXEeu6dA6CdO4e
         tXDCGsQK1mkOS7RNEs+PDPmS8VdHqHu6meZFdTKJWo3LpOKK1EL/oYHGiXZoJBrn8vJ+
         dkBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJxRSfROB3/V6LmxwnPBOXu4JydZ82kK3gDzjDF/dG0=;
        b=eSHUYBlhDGgIN9TM9pwD+csv2vFm+KWoEbK3uHfB3C8+A6fPTzQzMfQE9SQQJSCJok
         aEYlWbSuJ4Z6yQLuDM5q7uLdCANk4Y0/Y1Fw/zuRH9eWNEHe6iC84TfkFJYoMnejJ1E4
         J8bvbhfKVajcux8MvbPFQwhfuYUxz7kIzFUVXpOsU9BZlPy0bWsPnDEbwZ1+IAMA53yc
         EXbOuAPYxS6n3SSDwSr1UotEO7Ds1wZu1TaerLo+5myhDqg8l0rP3vJHxj/qbh4m4CYv
         7jT93YGJ8qsBny6k749r0twzQHifd0aSgjnKvk6/J30LF2qDkVFiYU3/5CaJz/Hgq8L7
         m6wA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXZyTjjfoqn/49qc+l6upUIfl9KbEcPfQETZuChYySphn2htc1M
	taW12d8or3uoZoo7JFNgmMw=
X-Google-Smtp-Source: APXvYqzHIDw8Oa/OrcffM0I8B6XXKwC95pjyOZdn6nhtKioSaQ6+lr71+Mo3ZF1SClYFNjdd2LBBhw==
X-Received: by 2002:ac8:27aa:: with SMTP id w39mr4274247qtw.227.1556727322616;
        Wed, 01 May 2019 09:15:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:271c:: with SMTP id g28ls579582qtg.0.gmail; Wed, 01 May
 2019 09:15:22 -0700 (PDT)
X-Received: by 2002:aed:3a04:: with SMTP id n4mr62623094qte.162.1556727322312;
        Wed, 01 May 2019 09:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727322; cv=none;
        d=google.com; s=arc-20160816;
        b=ywTw+HTtonW5wO4CYJ1TrWu6fqngOoTxm6R3D1RC2dnQWS5BwqDRsiZ7V+RvQdbool
         gBu3rnyQAWHd3gwiXeZrlIBkO6xg3APMcs3yTA1LBIqMSPFCRxz4c0XUqma5pPkPU565
         WAjsdaOgCnecCkB8krEJZTDQu5Ldw0vL+NAvBWr+vGy6l1xko/bZlgEyhDeVjFXcZdNf
         qZDs5ng+buu8rLkMTXWSEzrrLKsKDo4bmJnbeO9eIQm0tMmI+5CW/qzw+7webLqOg47+
         ApwLHr5uTd06Ae8YJFpBNqqdTPpa+Egjj65aQVqq3KhXSZTHC7cwCADOdFFpgTAmuvvY
         RG6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QPoTGxLCgA6kANSA55vLG8+JEuPteK6oE/nA+tFRi50=;
        b=IYd9v4Sn9wPlBXJ+U10a7hz6JCD153XHsdMJpRbg6O1PU2okEIJnaueyewWDFQiupf
         D46Y1EeQYjUKgTkRit4jMjqLA4puLnw7WdARqYElLqmU/UJKnzbQxyVII+1VE4nvpni7
         PGYrdbnuyf7JdmgEq5zhHgt8lTOIVS70MDnY4OeAkMR15qhMyGcoaIf78Pf61RJU9Cvb
         rOmUH+XZU4Magpp2GMrWoadbNZCesVOj88zIanwtNUAlMhrHZOQKyYxkzBX7FFlI8IKa
         C+Uy4dhD2MhDqhT+9PBrkBgjK8Me/X50rE/1eKwqHl3OWuHBHq3oM4V1M5wzeiWsvVEL
         qXfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=m9sDxFpm;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id c191si545198qkb.2.2019.05.01.09.15.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrt3-0005eD-Lf; Wed, 01 May 2019 16:15:13 +0000
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
Subject: [PATCH 12/24] libfc: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:05 -0400
Message-Id: <20190501161417.32592-13-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=m9sDxFpm;
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
 drivers/scsi/libfc/fc_disc.c  | 14 +-------------
 drivers/scsi/libfc/fc_elsct.c | 14 +-------------
 drivers/scsi/libfc/fc_exch.c  | 14 +-------------
 drivers/scsi/libfc/fc_fcp.c   | 14 +-------------
 drivers/scsi/libfc/fc_frame.c | 14 +-------------
 drivers/scsi/libfc/fc_libfc.c | 14 +-------------
 drivers/scsi/libfc/fc_libfc.h | 14 +-------------
 drivers/scsi/libfc/fc_lport.c | 14 +-------------
 drivers/scsi/libfc/fc_npiv.c  | 14 +-------------
 drivers/scsi/libfc/fc_rport.c | 14 +-------------
 include/scsi/fc/fc_encaps.h   | 14 +-------------
 include/scsi/fc/fc_fc2.h      | 14 +-------------
 include/scsi/fc/fc_fcoe.h     | 14 +-------------
 include/scsi/fc/fc_fcp.h      | 14 +-------------
 include/scsi/fc/fc_fip.h      | 14 +-------------
 include/scsi/fc/fc_ms.h       | 17 +++--------------
 include/scsi/libfc.h          | 14 +-------------
 17 files changed, 19 insertions(+), 222 deletions(-)

diff --git a/drivers/scsi/libfc/fc_disc.c b/drivers/scsi/libfc/fc_disc.c
index f969a71348ef..4b00477e51e7 100644
--- a/drivers/scsi/libfc/fc_disc.c
+++ b/drivers/scsi/libfc/fc_disc.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2007 - 2008 Intel Corporation. All rights reserved.
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
 
diff --git a/drivers/scsi/libfc/fc_elsct.c b/drivers/scsi/libfc/fc_elsct.c
index 6384a98048af..8e033facded7 100644
--- a/drivers/scsi/libfc/fc_elsct.c
+++ b/drivers/scsi/libfc/fc_elsct.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2008 Intel Corporation. All rights reserved.
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
 
diff --git a/drivers/scsi/libfc/fc_exch.c b/drivers/scsi/libfc/fc_exch.c
index 42bcf7f3a0f9..025cd2ff9f65 100644
--- a/drivers/scsi/libfc/fc_exch.c
+++ b/drivers/scsi/libfc/fc_exch.c
@@ -1,21 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
  * Copyright(c) 2008 Red Hat, Inc.  All rights reserved.
  * Copyright(c) 2008 Mike Christie
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
 
diff --git a/drivers/scsi/libfc/fc_fcp.c b/drivers/scsi/libfc/fc_fcp.c
index b1bd283be51c..0e619e7481db 100644
--- a/drivers/scsi/libfc/fc_fcp.c
+++ b/drivers/scsi/libfc/fc_fcp.c
@@ -1,21 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
  * Copyright(c) 2008 Red Hat, Inc.  All rights reserved.
  * Copyright(c) 2008 Mike Christie
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
 
diff --git a/drivers/scsi/libfc/fc_frame.c b/drivers/scsi/libfc/fc_frame.c
index 0382ac06906e..56c390a365b7 100644
--- a/drivers/scsi/libfc/fc_frame.c
+++ b/drivers/scsi/libfc/fc_frame.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
 
diff --git a/drivers/scsi/libfc/fc_libfc.c b/drivers/scsi/libfc/fc_libfc.c
index dbadbc81b24b..9a6927d17941 100644
--- a/drivers/scsi/libfc/fc_libfc.c
+++ b/drivers/scsi/libfc/fc_libfc.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
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
 
diff --git a/drivers/scsi/libfc/fc_libfc.h b/drivers/scsi/libfc/fc_libfc.h
index b74189d89322..01269b66e625 100644
--- a/drivers/scsi/libfc/fc_libfc.h
+++ b/drivers/scsi/libfc/fc_libfc.h
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
 
diff --git a/drivers/scsi/libfc/fc_lport.c b/drivers/scsi/libfc/fc_lport.c
index ff943f477d6f..1db7ef904ab7 100644
--- a/drivers/scsi/libfc/fc_lport.c
+++ b/drivers/scsi/libfc/fc_lport.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
 
diff --git a/drivers/scsi/libfc/fc_npiv.c b/drivers/scsi/libfc/fc_npiv.c
index c168321b560e..fa1d585b9041 100644
--- a/drivers/scsi/libfc/fc_npiv.c
+++ b/drivers/scsi/libfc/fc_npiv.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
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
 
diff --git a/drivers/scsi/libfc/fc_rport.c b/drivers/scsi/libfc/fc_rport.c
index dfba4921b265..48273b5ee16d 100644
--- a/drivers/scsi/libfc/fc_rport.c
+++ b/drivers/scsi/libfc/fc_rport.c
@@ -1,19 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright(c) 2007 - 2008 Intel Corporation. All rights reserved.
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
 
diff --git a/include/scsi/fc/fc_encaps.h b/include/scsi/fc/fc_encaps.h
index f180c3e16220..a7bded5e1fe5 100644
--- a/include/scsi/fc/fc_encaps.h
+++ b/include/scsi/fc/fc_encaps.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
 #ifndef _FC_ENCAPS_H_
diff --git a/include/scsi/fc/fc_fc2.h b/include/scsi/fc/fc_fc2.h
index 0b2671431305..fa95de50f7dc 100644
--- a/include/scsi/fc/fc_fc2.h
+++ b/include/scsi/fc/fc_fc2.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
 
diff --git a/include/scsi/fc/fc_fcoe.h b/include/scsi/fc/fc_fcoe.h
index d5dcd6062815..e6c086c06777 100644
--- a/include/scsi/fc/fc_fcoe.h
+++ b/include/scsi/fc/fc_fcoe.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
 
diff --git a/include/scsi/fc/fc_fcp.h b/include/scsi/fc/fc_fcp.h
index 9c8702942b61..35b07e83b9bd 100644
--- a/include/scsi/fc/fc_fcp.h
+++ b/include/scsi/fc/fc_fcp.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
 
diff --git a/include/scsi/fc/fc_fip.h b/include/scsi/fc/fc_fip.h
index 9710254fd98c..e0a3423ba09e 100644
--- a/include/scsi/fc/fc_fip.h
+++ b/include/scsi/fc/fc_fip.h
@@ -1,18 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright 2008 Cisco Systems, Inc.  All rights reserved.
- *
- * This program is free software; you may redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; version 2 of the License.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
- * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
- * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
- * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
- * SOFTWARE.
  */
 #ifndef _FC_FIP_H_
 #define _FC_FIP_H_
diff --git a/include/scsi/fc/fc_ms.h b/include/scsi/fc/fc_ms.h
index f52b921b5c70..78c82e437bb2 100644
--- a/include/scsi/fc/fc_ms.h
+++ b/include/scsi/fc/fc_ms.h
@@ -1,17 +1,6 @@
-/* * Copyright(c) 2011 Intel Corporation. All rights reserved.
- *
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
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright(c) 2011 Intel Corporation. All rights reserved.
  *
  * Maintained at www.Open-FCoE.org
  */
diff --git a/include/scsi/libfc.h b/include/scsi/libfc.h
index 2109844be53d..76cb9192319a 100644
--- a/include/scsi/libfc.h
+++ b/include/scsi/libfc.h
@@ -1,19 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright(c) 2007 Intel Corporation. All rights reserved.
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
