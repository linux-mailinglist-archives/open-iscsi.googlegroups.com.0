Return-Path: <open-iscsi+bncBDUNBGN3R4KRBHMMU7TAKGQE3KJRTIA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id A37E410AE9
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:26 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id t63sf15329456qkh.0
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727325; cv=pass;
        d=google.com; s=arc-20160816;
        b=fOQISefd/lj6WyyqmV7/qMYMllW6uxXGc8vAlyLsYg4M7jsUs7rXzLh6pjuyH+2Nm0
         goz92QLKcTQ/AfVScAkIEZVWdauc5fJm5YtIAQo7eJWL7mhuWk6eu02yB6Iz4CKxnIvn
         6hTgYtXxT0L9rHqqCH9mmT4aIDEDDmG50KbY+1+aOn8kwcx2QFpLBzumKZ8NquuEesah
         qwPmy+hDUXam3f1eI/TdXvz+pkN2nO1O0lgcANVIO/TUV/oF/F/ArfXG2lS3ndGbgYwZ
         kTzAgYGz0Is1ZNSC56uxL2BPyjJxiBP9U/jJ3JCzZI0MkJcvmdWg8tHogUFlAlNtT5AK
         MN2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=FwD+uITDg4vDoQ4lqSuuNosdOHbY3ueUZ/OjnbwklkQ=;
        b=1CePcFjxQq5XAPpKrfK3S75Mjw/JA2NiH1GB2nFBStetHVrgvy1+wqCQRhcry+zexO
         arEf8n1elZANRAQxdxpbD4hFOj9eb4o2ZxOZApSejoiIgRkbmJGNb3NUg7yO7e8QBIvM
         F5x0v5d95E/wr1ncd+vzcQOiRhn6RAVaZ4Dk7i0t03Z4+TgxmSCTiRxgyRddfs2BXiI7
         OgvkDQ/mWCW3WCrUF4noTsLWOIA9fS8Muex+hTliOH0f6PaZtw0sm3Lw9t4KCGpRn16Z
         6hFoJ1XXDqnYOcPT4drl+7Wul3uPJx0UlCwVAc9S6GmQwJTwbLxZvTyjjU88XxrHL8h+
         2Mcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=WMqFGkHF;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FwD+uITDg4vDoQ4lqSuuNosdOHbY3ueUZ/OjnbwklkQ=;
        b=nkIctiBqM+T6pWv/X1Pskbksp/kKXWzGOGjevO0YpVwmW3YD9iYBRj78nEpzfYwHBb
         FQUlsxCHmm9vJSS7ilrIjTXyRMhy+R5DgHIKjuDkGE5ivN4QXerAqDijuU4ioqSv3Y39
         djvI1nchpkbGS1D5Hmhuhv9yFCqPMTIAa5e22uCEujlUKcaRoAaFZPVDStUhjPNgaERi
         TrHqb1/U8/NRxu3PVXScfS+VXunnp9aJnks2WOtcaksZi+IKZ4Dj1plRu7W8GaKiJgGC
         9mcx/jt7wc9Plz9BXtntjTNvDEBVkpw+1+aCyH9D6sK234dqICRvez98uV6pzdnV2gGt
         bFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FwD+uITDg4vDoQ4lqSuuNosdOHbY3ueUZ/OjnbwklkQ=;
        b=bBMMZdZuYGPYpD8pckzQc12ze3ntYIz+1m2+h4BtKC7Uda1fEf/JUTBmzo7cYLq4ni
         U8LZTwKi3h0LbNvmlpRBZCtgdqBIu1U6VP350MCdbAkK00PSFuS95FuSIGEJQKBDxMny
         W7YlX8hLznbmsaX4yRmvzv/8/KpRbT0SUh6/8Z7D8DTUAJ0Pjbucnbyc9G5TNGR0Oza2
         3oSF9o6r+myghJE0Yqe0TKNV6IxBE4PfWFnyvchhIbhtRo7zf01zxKZOpTZ/Q7jruW4n
         6Uku2n55lcUhwF2a3iNPj3xJtN8HfGqb30q/AvmdJUy73537sBfTgcr1Va6b0wNrsxgm
         oNxw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVBVo3+yrXBSZ04rAlo4KXLyz/F1vQ/Dp13+hM7qM/7v8wDHc1E
	3h2m2Yxx3bz0HDl3qmKjGag=
X-Google-Smtp-Source: APXvYqwL6A8MUcynAUFGCnbNkKmMeoeIL7oX4gkOZil3jq1950NkbBIlpP8BxYZPkxGlheTsyzN3sw==
X-Received: by 2002:a37:9103:: with SMTP id t3mr58362502qkd.78.1556727325770;
        Wed, 01 May 2019 09:15:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b885:: with SMTP id y5ls4875900qvf.16.gmail; Wed, 01 May
 2019 09:15:25 -0700 (PDT)
X-Received: by 2002:a0c:aee6:: with SMTP id n38mr60258836qvd.43.1556727325312;
        Wed, 01 May 2019 09:15:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727325; cv=none;
        d=google.com; s=arc-20160816;
        b=rFPqTxs83oAhgkPC/Ha14U7yb/lG958H92ear1xxbTvLyCWCbYXvCtDX/vjJS3Hr3S
         1TIYcU+Rv0N1yJ2105o5RR4930NYtQCEtw8DsQKHhyIZIczAaH4H7R52exMyUOGH/mRX
         v+WP7XQIi14FMGH0qD1DTMD9o7nw+cwVKukFzkWSgynNqogoRmR+xKNdtUazy39f8XX2
         p0d7hk5boLT9ZeIwfnXIjW5yG9MhFccbfANk1prfz6/X6DpaAcTewHRI/TpK1XHswVe4
         aGYLIZKlZ3zlZG5eJv9xxLXrgtPOFtXA+0MKpQcyAZC++n2H85QR5e8kVyfol+L5m4Jj
         AK4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NfTQBgYcxK0mzG73An5I8H0OrL/vxG/1o8Trp8Fhb7M=;
        b=TND8FndKzGWI5a9GIRdMy04glxv2fb3mKwGBAOndhhoteUz0bZyIZminJoEUtJF76J
         ZK7ua6OCO+v/YpjMYI0B4NRMiCpe/IY1bMyWsEJQc0UtaBcu0jKax3yKjWwSfjjHwa4D
         FG/wGpsbzXFUtJxUJBlcNF5lv9QM+odpOBPNMR03pHMhWeaJrm//1QgXbWWIQ9GME3DO
         R2f8onfKjHIq1FVCbRbFs5ujlwzOaaaIjUS9yZJ9IXXAvJeFgtM0YkY1TPAMek/JmlN+
         Ck3f/hZJhXm2fXAleLoaqMiXDowN32h90qN6qy1oKg0fez4uK2IVf0ai1Mlm9hkX1wFG
         LCGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=WMqFGkHF;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id f92si1833607qtb.1.2019.05.01.09.15.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrt7-0005ek-1d; Wed, 01 May 2019 16:15:17 +0000
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
Subject: [PATCH 14/24] libiscsi: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:07 -0400
Message-Id: <20190501161417.32592-15-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=WMqFGkHF;
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
 drivers/scsi/libiscsi.c       | 15 +--------------
 drivers/scsi/libiscsi_tcp.c   | 13 +------------
 include/scsi/iscsi_if.h       | 13 +------------
 include/scsi/iscsi_proto.h    | 13 +------------
 include/scsi/libiscsi.h       | 15 +--------------
 include/scsi/libiscsi_tcp.h   | 13 +------------
 include/scsi/scsi_bsg_iscsi.h | 16 +---------------
 7 files changed, 7 insertions(+), 91 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index e893949a3d11..040b58a3d7d3 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * iSCSI lib functions
  *
@@ -6,20 +7,6 @@
  * Copyright (C) 2004 - 2005 Dmitry Yusupov
  * Copyright (C) 2004 - 2005 Alex Aizman
  * maintained by open-iscsi@googlegroups.com
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
 #include <linux/types.h>
 #include <linux/kfifo.h>
diff --git a/drivers/scsi/libiscsi_tcp.c b/drivers/scsi/libiscsi_tcp.c
index c3fe3f3a78f5..e0255bb2748f 100644
--- a/drivers/scsi/libiscsi_tcp.c
+++ b/drivers/scsi/libiscsi_tcp.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * iSCSI over TCP/IP Data-Path lib
  *
@@ -7,18 +8,6 @@
  * Copyright (C) 2006 Red Hat, Inc.  All rights reserved.
  * maintained by open-iscsi@googlegroups.com
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published
- * by the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
- * General Public License for more details.
- *
- * See the file COPYING included with this distribution for more details.
- *
  * Credits:
  *	Christoph Hellwig
  *	FUJITA Tomonori
diff --git a/include/scsi/iscsi_if.h b/include/scsi/iscsi_if.h
index d66c07077d68..5b8af179b7ac 100644
--- a/include/scsi/iscsi_if.h
+++ b/include/scsi/iscsi_if.h
@@ -1,21 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * iSCSI User/Kernel Shares (Defines, Constants, Protocol definitions, etc)
  *
  * Copyright (C) 2005 Dmitry Yusupov
  * Copyright (C) 2005 Alex Aizman
  * maintained by open-iscsi@googlegroups.com
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published
- * by the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
- * General Public License for more details.
- *
- * See the file COPYING included with this distribution for more details.
  */
 
 #ifndef ISCSI_IF_H
diff --git a/include/scsi/iscsi_proto.h b/include/scsi/iscsi_proto.h
index df156f1d50b2..3e930ab9b859 100644
--- a/include/scsi/iscsi_proto.h
+++ b/include/scsi/iscsi_proto.h
@@ -1,21 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * RFC 3720 (iSCSI) protocol data types
  *
  * Copyright (C) 2005 Dmitry Yusupov
  * Copyright (C) 2005 Alex Aizman
  * maintained by open-iscsi@googlegroups.com
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published
- * by the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
- * General Public License for more details.
- *
- * See the file COPYING included with this distribution for more details.
  */
 
 #ifndef ISCSI_PROTO_H
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c9bd935f4fd1..7992f6bb2ebc 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * iSCSI lib definitions
  *
@@ -5,20 +6,6 @@
  * Copyright (C) 2004 - 2006 Mike Christie
  * Copyright (C) 2004 - 2005 Dmitry Yusupov
  * Copyright (C) 2004 - 2005 Alex Aizman
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
 #ifndef LIBISCSI_H
 #define LIBISCSI_H
diff --git a/include/scsi/libiscsi_tcp.h b/include/scsi/libiscsi_tcp.h
index 30520d5ee3d1..b7ce80422215 100644
--- a/include/scsi/libiscsi_tcp.h
+++ b/include/scsi/libiscsi_tcp.h
@@ -1,21 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * iSCSI over TCP/IP Data-Path lib
  *
  * Copyright (C) 2008 Mike Christie
  * Copyright (C) 2008 Red Hat, Inc.  All rights reserved.
  * maintained by open-iscsi@googlegroups.com
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published
- * by the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
- * General Public License for more details.
- *
- * See the file COPYING included with this distribution for more details.
  */
 
 #ifndef LIBISCSI_TCP_H
diff --git a/include/scsi/scsi_bsg_iscsi.h b/include/scsi/scsi_bsg_iscsi.h
index fd5689d4c052..aa76c1e5b36f 100644
--- a/include/scsi/scsi_bsg_iscsi.h
+++ b/include/scsi/scsi_bsg_iscsi.h
@@ -1,22 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  *  iSCSI Transport BSG Interface
  *
  *  Copyright (C) 2009   James Smart, Emulex Corporation
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
  */
 
 #ifndef SCSI_BSG_ISCSI_H
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
