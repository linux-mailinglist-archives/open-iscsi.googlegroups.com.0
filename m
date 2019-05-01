Return-Path: <open-iscsi+bncBDUNBGN3R4KRBLEMU7TAKGQESSEO56I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F3310AFB
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:42 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id m8sf7325450oih.0
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727341; cv=pass;
        d=google.com; s=arc-20160816;
        b=TMRJFXjAjNN81l5DklcRjJ8a9DnGpIyPFvFYN+B3Km56y6hed5+NpFui7tKWq9woBC
         +g9vhTDQ8cVkIfNpzcm4Z0t8SVIB1v/wTfT7nLGPwsbv9qsU8SNqzwZpYJnJT2Bf1FWL
         xWWoVoz41hvzqfI9ums41FDhl2SfYeU0saf18xEP04ToL3wPPJQh0tP+o9E4ey8cP7LN
         15Wfn8Pxcy4PN2zfjLAS+TD8TG/XUgH8AqHyKqpwEyxDda4ereKjPJSm8ZhQMCoPmdd5
         OubSshsO7m+xIODk6itY5OTs7qL3f8Sy3OC6Mz5RHMN3gjVV8mDaiZ7rwkOJIzME8gUT
         V29A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ndDWX1Uju8/65Tx0N64ediVr6shJLKavKtqx1vR2jAU=;
        b=PKdyuZDOtaBOr1e5KDOXSYMgcFMccFEowEMRdclAAbdJ6NvnN/wL0YO9piJQV+nJxA
         DJL/opgcqKwAfv0aZIN8RdmQkpv4LixYdnYGktVKIltPMrHXqet6Wiw2qBiA+dLP2MUg
         pn2jmfplQkuKuK0NBhPGnmga6WZw3n4lVDGJMLzy7SFEyPCn2sUbATSDgFHEwSFCaIPV
         ifexQ5XsJldSTM3xpel6urTIeQOU1hIAt4FS8wFwSm5PIq7rtvaVgO8tLBS+77Zk1ufM
         cRd5vE5v3xleUL+CEPPjtVVXI2zoA7RdLjTitYUZwXv+vOG2gTVYZQU5hFCVPiiDfQlq
         mwkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=qWe64MUO;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ndDWX1Uju8/65Tx0N64ediVr6shJLKavKtqx1vR2jAU=;
        b=S4JDX15egSNG66ULwF7lUQUseQcbGCf9iIb4TjWQHaEGJsRrfwtFKHP66uF4xhEuk0
         pTarRJXV0TKDZ1ROfSzn6qk+TgoZoNRSPgk/p6RV8sj9WdEckBf2u+tzfpKkiBmk7XPW
         R9QzqK27IO/46kfANHMThNrYAIbCYbjryMRnFkrGexrMY35DM+2Tgxbf/lYkSePGBSv5
         MfSnisaOsDyRIIFbDldnLQWv/0+wDDgZU8PcOkkRFGuR8FuR+/mSzkGz435nZxU3ppbd
         DQsQe/tmsghUHiLqYschMn8ph4A8a9VlYlUFv8Wznm5PIyaO1og+i0v0y479qBIBgFff
         TUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ndDWX1Uju8/65Tx0N64ediVr6shJLKavKtqx1vR2jAU=;
        b=dtR2ymNROYocV3Fo2mzYpAx8Em+xNKx7ft5swPIPjUBu6ehjfyDCiqYEvLJfhKY3XJ
         miYO73PZgVu1OIppKj1257gqAEtBaTrnoecMrzJF4j4MLNyWFbI2Lvbqh7LaIwjsS67g
         c3IbZAKWw0uz7okdTQshbnUGACWUD/ob2MXS13AXmHQGIRt5oG4/mL82mrmGzDwSRUmG
         N1rlwcYc7NQ7Pl5ni1D71cJcY2waXNYXUks0iA3OnB1meX5BEnVGbioMSUogkOzkMEEM
         U46DD1pUwgM/NWPPGuim61z254PUS5PhHLYkNyMZBdcFiPCib0FWjBRjpdIkiltE1fDx
         K7Bw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUoVY8L2FDz5lstw8p6qimHAWQH0hQ/EDoXMkAMgqsQGPIEvFj8
	BIRiyaAtyEUzidV7eIc9ZGw=
X-Google-Smtp-Source: APXvYqx27XobPDQIARfK6v64YQb/b93H3MiGNARJDotE6yDy/kk49hrwRCWPtU43MYc+efoTXbnHiA==
X-Received: by 2002:a9d:6014:: with SMTP id h20mr16633527otj.8.1556727340943;
        Wed, 01 May 2019 09:15:40 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6b08:: with SMTP id g8ls895272otp.16.gmail; Wed, 01 May
 2019 09:15:40 -0700 (PDT)
X-Received: by 2002:a9d:6b95:: with SMTP id b21mr3837963otq.274.1556727340655;
        Wed, 01 May 2019 09:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727340; cv=none;
        d=google.com; s=arc-20160816;
        b=MNX4xsB1WPPgv4p3T94VRpfPYH5aCnSb6ATBFofxE+haU8lr9cvSfpmQoK1cR9dQeN
         kHgNsF0l+Lf1ptz7psnr/vspJNH7j1YZNeWmVZm+ss7Ofzb257bOTQbaQmKhaAribYGi
         98IASH51UqoAOcK7+KdTNgz3plFTujfhFkOlM7eYmLPhAefoI9/KRx1++X0wclexXp3V
         Dn0bR1P2LOLhhEJMGVuSZZccrmDr2FVFx8ejVirpg+ZAgxoW8jy31pEMR/0QjpzSLmxN
         CDlzJeAk3BvfY/uutB0Si/nX10m8TI0sN4+KPSrQMooIrfU9mj9lXn+GueouCQr3EWzs
         Lc+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0ccOfTUTOdyHq0X8QUevEj9XvIItBVa9QWY8Gu0sU4g=;
        b=iP0WkpN/ZjOzL9i69Rq6NkdKuGj9X6uEU5qIV3IKKAytETdp3qGgpe/tlYJG1CoXvK
         qyLyUQT3osdfDwVTlps64d3ZPze2irTiaxfKCv5EjlIgYDTjCdnNY7tLtGKrYmxyZ6F+
         vFGddLcacKvaH9LeoCxeuJ5mM9q2bG0EnbF/mJYEAzJdk6Yuwf91fQmQ+tE9r7YzWM+b
         YGV1MPv1DWtyi9ZaxaLgx0vUtEMTQVnMgIFj5VhF9Enu9yxMpLC74ILhw1VkzJmyKmj4
         gBiavylB2NF+ujoI7QQEQsKfHtSoo25jmSGw7PKCrITjGSg1ij2SG6L7oCj5LKWsKbZk
         j1Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=qWe64MUO;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id k23si1620558otl.2.2019.05.01.09.15.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtN-0005h6-Ke; Wed, 01 May 2019 16:15:33 +0000
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
Subject: [PATCH 23/24] st: add a SPDX tag to st.c
Date: Wed,  1 May 2019 12:14:16 -0400
Message-Id: <20190501161417.32592-24-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=qWe64MUO;
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

st.c is the only st file missing licensing information.  Add a
GPLv2 tag for the default kernel license.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/st.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
index 19c022e66d63..b814906af0a3 100644
--- a/drivers/scsi/st.c
+++ b/drivers/scsi/st.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
    SCSI Tape Driver for Linux version 1.1 and newer. See the accompanying
    file Documentation/scsi/st.txt for more information.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
