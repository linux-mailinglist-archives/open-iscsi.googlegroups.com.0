Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEMMU7TAKGQEKP6JWUQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id A837A10AE1
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:14 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id j12sf7168090qth.3
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727313; cv=pass;
        d=google.com; s=arc-20160816;
        b=qIFWp7SckKLaLJNoSQ5GXk74swq0Zc43Sc6rLaTKw/ugURUW5jyhxVzsuU1SK31zBI
         MXGd3UWrQZteHH+ORAOceyybOb6cbge/M0GxAM49XCLjrYOO7mVSkvkSdUX2rtae0D3/
         h7Lb1ArvAFBabMCTlUml6nCIsJRlE80S0tOQNdQVmOogJvCpN9CFdG2UcoJkyUz1Neo8
         twgsIRfvHmIdbJrMJ94kAo1kbf8wb+MZsFiAge5dJxhAWquXzb68QbR1j0S4jZiBpbRR
         JsGOtCzgbQKz0HLNB8IVthSpCP2K52zgpNn6z7fBpODO6NUZ89rRwUUMNf2NjtRbXT82
         Ktyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=QAsln0TKfwPkWP8vDqOrwtw0AtXnZVhKfqZK6w/PUcE=;
        b=JujYlHpXevnx9ReHBouM1llcoWkb+5oINxroOcC+bIv7MkjQmZUFs7u2ZjUlu9KZIL
         go6ar4WCXBVxLdp3AOYkYZHBw2HrBpbQkCZeGQfYmuCPQbdnjFuoOofOw0hP741FU4o5
         ECSk/ioO6GLZOVTYaOqFzM64dcZKYeN6YdslVOKtHMNC2BK1ml92NIDmj7WuDQ05kOGG
         Gd3xEBaEh857JwpXRmYYdQ+wvSWOT02EEZrgRdHevWR3WQLrstYDlx4wlnRLPOP6e0Vp
         sxIp+kTcGENKJICDhy9zygaTuaarzCZni0Xhn8/UMSxn/ErsPCXPL/oFfWj5hJfAA0UP
         a+9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=aeltI4ss;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QAsln0TKfwPkWP8vDqOrwtw0AtXnZVhKfqZK6w/PUcE=;
        b=qqypq6t0m5mC6aRK+Qtp+USrChYfvPyPnODyX0VoBxs1zzktoGBE51b83I8O/s9yfp
         s/Jm9ppasJ64AyUiDRfKJWymPUCQHrLHuckEJggxI1KaFo4mVxZ5g+OYeMDJJVXrbxNP
         J6Yr0onaCWoiGrPi+gn7s5LiCdEgjGGt7Qu2gtKe7T3iB+Y56EHZNmWlRqGFz92WoIew
         QV0iXI9OOLPPkPZDh8e5u0UMRK4SeC66Z2AUjYNVfbFQHttlhjzD7XILPV7PpZggB+bx
         raI7RKM2OmsyBNc00y9Z8MDBhhBoLUh2AvP40eQs+P9c6UCg7anVcqWCuvLi2mtu/kS7
         ijdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QAsln0TKfwPkWP8vDqOrwtw0AtXnZVhKfqZK6w/PUcE=;
        b=Ep8p0zMbzRap7BhZbiOdLtEiQrPpskM+3gZCmOfzRF/G5NWUELfAj1v5gQyBTR1BDC
         5xAO0TOXwm3rE8cMKOqeCs4iGu0LvmrZqn+akchuzL4Vzu45EEd3hRSO9ZHL6PyQeU6T
         ZL61Jc0WppHD9abiqm30Y5pQQXMeFA+z1wEu9aQ5ESmq6+7VtoloSNQgEkMHmO6y0Kc6
         exHYKb5whXzwLX6TqgZp9Gpy1AW5m4RmZjeCBvcljXUi7HKXkUThVxLPVzAOWLJfdbp5
         acKMm8hO1HArjcxEBvakjZMEO3YnHcRQ0FJRinYRqMm3lQ/d8U5fszUNvQB4rr2VgKp8
         K/3Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUdyb9vRC2dTG70d3naE1cuRpQdMUORiqUA+5fr/vpf1SGEwl3E
	RQ6KjbtfToDSAqOQ6n/Ogig=
X-Google-Smtp-Source: APXvYqzDh6qVuk3caVuIS20Hq0ZmnyK+ocoGkh27tIfwx0GCC70VdoZ/CGjcAWl1VnOwwiHgAogzQg==
X-Received: by 2002:a37:3cd:: with SMTP id 196mr51092186qkd.126.1556727313397;
        Wed, 01 May 2019 09:15:13 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:2f2e:: with SMTP id j43ls329311qta.13.gmail; Wed, 01 May
 2019 09:15:12 -0700 (PDT)
X-Received: by 2002:ac8:2a0b:: with SMTP id k11mr19294203qtk.29.1556727312914;
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727312; cv=none;
        d=google.com; s=arc-20160816;
        b=HkR2BP1bAU3aIkiSKndPWHNrTU8ul55c0uZhBPZ8zPpp+2tDLzEDn6d/s6Bj4SI49R
         EJkmpkwKSQDbLiLzYPZE2Mmu6cHmwn30AuxVNWjpyIx/4glbJutKZpRBGsu7TTKTKOp6
         /JG2OmKpS8vPJXmOJNVMLmiEs10B3WsE3/QLa8EzvmdWDCGOCLefVtqCQUyD4gEU0Hvb
         +odHCrUVh26q4Fow1R3NRUOmTvRi/60B+/wO+f5T5rJgZA9v4TFmfUFoGJMxro53I0m7
         8Z9dZnAW8Le3Ke4I5mQcMm20S4do62XcRtDVQcS/7GsplltrPIBtRdjYzoSOxoTmmYet
         wsbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kqkRyqJ2EE6kG6MIQJuCBicRKsHNMcWcqBqw8JwJ1OU=;
        b=DeKGvXmAhDNSQRtDG2XY54seenkndX9FpwygeZ/3GcJAfYNTofS0CG5z2ygIuowqYO
         bz3OgeTllEeEChaXrO+6wCQEtSdNhBWeHg6lrdpYo+a1b8bf//XvUig2aGWSnPhAcArP
         PBB0YX5dbRE7+9rtge2Z0hujz8zL+Yv/RVzfknNGHMH06g2J5tK5tuDZzarYdcouRgOV
         J17CunWCToGSbEcIV2X691r9st0lVlAT5NFOt1W++bAlWPYNKA6L/+MfJliKErfOzRuD
         O2qvmLVJC2hUzU1dTZtB6pD+2Qxy/a9gr6SKWUEBHLZc94uQZ2fMO24Xref01usZd+Mc
         VbSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=aeltI4ss;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id x11si1838347qka.5.2019.05.01.09.15.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsw-0004zf-Gz; Wed, 01 May 2019 16:15:06 +0000
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
Subject: [PATCH 08/24] scsi_transport_sas: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:01 -0400
Message-Id: <20190501161417.32592-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=aeltI4ss;
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

Use the the GPLv2 SPDX tag instead of a free form blurb.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_transport_sas.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_sas.c b/drivers/scsi/scsi_transport_sas.c
index 60f1a81d2034..fbfe01b06eb3 100644
--- a/drivers/scsi/scsi_transport_sas.c
+++ b/drivers/scsi/scsi_transport_sas.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2005-2006 Dell Inc.
- *	Released under GPL v2.
  *
  * Serial Attached SCSI (SAS) transport class.
  *
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
