Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEEMU7TAKGQECAYGELI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0561010ADF
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:14 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id g188sf750994oib.14
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727312; cv=pass;
        d=google.com; s=arc-20160816;
        b=dmrlZIlOcMCplOjNoC4u31Gv0FHlMsRGZ//INM/Uhkw2SRFnyl0wUlEsSHYPLxa2rZ
         wrkERl9zB9wlb9pQhH5R1LfHfZeaYN48WnNeDd5XC6rDg3JyT0AWdoG4nW2xtK/9JZIc
         AgwHffZNSsuvDWyEqhAupdSROrrzZBrE7wIlf2+wtqpVCb++zWDFc07NwEZvd9UYEeun
         2dJO0nOBWX3PnEyPTRvgrZLk/0lm1vsyoIXiVqWjDb/5Swf2u8Bpp+hjmgz8OPm1HDIS
         y5a8eoYEs4sP9WclLp0iszx1B1oaTrH+lbkZg9tAiRb/+9uKZtzGQtZrQUL3IbBVOfaY
         RHMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=/JxX25TSJDmInFaX5bIrV/sfv5flM4T81tSC8Y4fEr4=;
        b=k6QivVgWqTOFyzGIJ5Tw06sEoRF5xAMu6YZdOYnHe5WVsa/vQxOSKUZ5hUqCW8ppxc
         QYApJHZJaKKiYYwzeP1AOa8K1IQkPnA/G7Zpa5NSIc5o8KIIO8jWuTQMaUO7oBnYSBZk
         2d1KOAigt7nggDPRVawaaQDKEHwPLKABbyDX6wcU7k1gqN8rptkBVxH5GRnGJOw+cN0c
         bcnEcH9ZYZleFwb0WfsoS1dk8NflizsergxdUH/On0Y+9BLxzMo7Aouk0u2sTSu5Iyjv
         kf3WaQ9Jmz3XfcB9MNQCO8EhYRgRrd9F8IeV0VXMeh5DKdyyczw2P77gmrsV1aSQJf8g
         cMNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JRBjSgkW;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/JxX25TSJDmInFaX5bIrV/sfv5flM4T81tSC8Y4fEr4=;
        b=I5bwjGUMcbX7Ruf6uz62GUdQf+F+HlqqIHb98EiHbMWvQn+9xl2b//BjBltLnM9+Q6
         K0spCtNjS6HC2aRDkDnUnrHm4hgPENpV2Y6ky98xzUChIEg/GMX+D6pfWRt7YkyW6zUE
         D7eX3bQuv6KRtgYcSw+brXHIwOZGtiWoHOXWvbUVAwA5EHlZba4u8PZYdjVAlFGNs3f3
         TDIzTDKhqBcY/G+wF9Ri3OAlsP/TbABhtmkuXHLVl8RcTomuTOXb5tETGQ7ALByj3dl+
         DIlb0yDhs6YRRcrKs/gYylW/x7YS/oxgCH1Lyu1RJrHD1tyT9yjOqHflQYnpb5Q4jio0
         12Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/JxX25TSJDmInFaX5bIrV/sfv5flM4T81tSC8Y4fEr4=;
        b=BxvOn6PgMh3ZkQcnxCWmLPswoCFn8zogiEz6e7zHrBbfLjAHYquxHEMdeeJW5k9zn0
         isTMsVdaPCrV3p6RK9mYLzcDZ5PjoZFYhSrUkmF6rC5NhraEsqBSQQXzHH7lrww5sfBP
         9Ob0aUgCwaaIgm01DQcgSURga9hCKvmX9p/xhGDhzaLA+xXmZpEWhyKNoaL/J6YsoVIy
         NaBBO4qvsyZcfl3mIUnuPFqiG7SYeiBBxCTUI0EHC646/Vq+2iN+AHHIz2mOme6v9vGE
         TZpxJLVtUNULkvQD8ZDVi8fNblWAklNIczV3XODdiN8LDvzcMFob5liRqtxmD08SWSpu
         2F7w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUVcrKIrEKTCKOilgdun4wGPy2l7y0rq50BEY9XpBBVgGzJcn/4
	gflbo1VliCpHjb8hx+9SPnQ=
X-Google-Smtp-Source: APXvYqzlomrFO3QPOuvXtDvfr+9nyJdeCtGXIQ0NY6fVyhPpkkKxskrlzVpW6xev0VopN6G36GH9uw==
X-Received: by 2002:a05:6830:10b:: with SMTP id i11mr7518912otp.249.1556727312783;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:5f03:: with SMTP id t3ls791945oib.8.gmail; Wed, 01 May
 2019 09:15:12 -0700 (PDT)
X-Received: by 2002:aca:304:: with SMTP id 4mr7154678oid.30.1556727312210;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727312; cv=none;
        d=google.com; s=arc-20160816;
        b=M/Oimlmqp++TAjE46dv/FDD8oml/GOaIME9MRzFRIM+kBOvdERsrGHRHWieLsQayll
         +gsnIdGxkkC695IWnnUgiISxDHL2qs6bmbqdOdDAtia1R7CIQVDUEm6Bc/hyulHXszgR
         hkpdNAUkY3OfwN2MgbZ5ziJElaFCCetqnPzUwzL13JkCw5uOqEUrx7jVizWuFqlj9OzE
         Eck1BBBAwLJYx+v1i/wdBVFgVxII3bwexNu54g95fSnW9I8l8kLPQrkwzz64Q8ZyCD0o
         Jam1JkRMALAvuU44GBq6m8fr6UEQol7xKn2syJPRX2B+CdbdXOTsBvnUtLFD1QKhYLFM
         yb0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=faf3x95W7b/ShH6i+qBMl/ENbouWlKtYNQW2pyAitx0=;
        b=PSHUFhonzwAALa/NMG4wGLxtSWKcs8oJS8Q/AeBhJ4LFDKSYmAwh1Q8rgyIzSAVcYj
         /5P8FGoziim2MDXNyB0ZA1P+em7RSRHnqFl6N/Ve0E48iApeF4hzeANSqsXw4k+WETLI
         vBT/2as7CkHJxPzKOxnQ3v5sLfMve5RtGfUvkEkjgoNfqwDuCbzSwTEt7pdYNO437smq
         Qm7XvZiLgrUY+epsfnxx4EVPMZa/imT8AeTwWgiMQtzGwezu4eiinn1wPhixkjOiAamr
         xSmHh22pcJDlilGgiWNOxC9eOPKzbqEmI5D2pV2xkhzJVQmmO1bv4PCqEK6ZMH4GgHVq
         mQZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=JRBjSgkW;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id w134si737820oie.4.2019.05.01.09.15.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsm-0004OM-6N; Wed, 01 May 2019 16:14:56 +0000
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
Subject: [PATCH 01/24] scsi: add SPDX tags to scsi midlayer files missing licensing information
Date: Wed,  1 May 2019 12:13:54 -0400
Message-Id: <20190501161417.32592-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=JRBjSgkW;
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

Add the default kernel GPLv2 annotation to SCSI midlayer files missing
any licensing information.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/hosts.c        | 1 +
 drivers/scsi/scsi.c         | 1 +
 drivers/scsi/scsi_debugfs.h | 1 +
 drivers/scsi/scsi_error.c   | 1 +
 drivers/scsi/scsi_ioctl.c   | 1 +
 drivers/scsi/scsi_lib.c     | 1 +
 drivers/scsi/scsi_pm.c      | 1 +
 drivers/scsi/scsi_sysfs.c   | 1 +
 8 files changed, 8 insertions(+)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index eaf329db3973..96ed24841c33 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  hosts.c Copyright (C) 1992 Drew Eckhardt
  *          Copyright (C) 1993, 1994, 1995 Eric Youngdale
diff --git a/drivers/scsi/scsi.c b/drivers/scsi/scsi.c
index 99a7b9f520ae..49821f138ae0 100644
--- a/drivers/scsi/scsi.c
+++ b/drivers/scsi/scsi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  scsi.c Copyright (C) 1992 Drew Eckhardt
  *         Copyright (C) 1993, 1994, 1995, 1999 Eric Youngdale
diff --git a/drivers/scsi/scsi_debugfs.h b/drivers/scsi/scsi_debugfs.h
index 951b043e82d0..d125d1bd4184 100644
--- a/drivers/scsi/scsi_debugfs.h
+++ b/drivers/scsi/scsi_debugfs.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 struct request;
 struct seq_file;
 
diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index 8e9680572b9f..f490994374f6 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  scsi_error.c Copyright (C) 1997 Eric Youngdale
  *
diff --git a/drivers/scsi/scsi_ioctl.c b/drivers/scsi/scsi_ioctl.c
index 840d96fe81bc..00397205466b 100644
--- a/drivers/scsi/scsi_ioctl.c
+++ b/drivers/scsi/scsi_ioctl.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Changes:
  * Arnaldo Carvalho de Melo <acme@conectiva.com.br> 08/23/2000
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 6b2570a5642d..94de50745616 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 1999 Eric Youngdale
  * Copyright (C) 2014 Christoph Hellwig
diff --git a/drivers/scsi/scsi_pm.c b/drivers/scsi/scsi_pm.c
index 7639df91b110..3a5dfbb81622 100644
--- a/drivers/scsi/scsi_pm.c
+++ b/drivers/scsi/scsi_pm.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *	scsi_pm.c	Copyright (C) 2010 Alan Stern
  *
diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
index 3b119ca0cc0c..ff0aea7ac87f 100644
--- a/drivers/scsi/scsi_sysfs.c
+++ b/drivers/scsi/scsi_sysfs.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * scsi_sysfs.c
  *
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
