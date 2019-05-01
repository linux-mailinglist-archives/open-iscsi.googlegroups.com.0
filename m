Return-Path: <open-iscsi+bncBDUNBGN3R4KRBIUMU7TAKGQEFCNLBYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 600AC10AEB
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:31 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id e5sf13670592ywc.8
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727330; cv=pass;
        d=google.com; s=arc-20160816;
        b=VmS59ZitL6m1tLi9q/XrMC4b9JP8GVo2sbdKzb4P2tzy7Y1E900LynwEBx88ilOsDh
         jQmx8y++fPBTAwzHT7St3LhvsL/RjLci7Xn/tcTYxpjXkSbfU2PQmOHIT4z9gYe3+HYl
         N2JzJmD7eEuKhTCCozRLwcb6Jm1ZsgadiOC4on7UaudPde1pJEs1Fz9uoQQxksCkBffO
         QLPgpHKJoAI1ayUA5jcpuK3jFoBlcq+rA6Bk18/BBUtpC1iKiZp5xL0XimqBfUWU8X7k
         DASEbzMkRjFvJapdTnLURH7/ArW5ImFzNZyvMFPgm1fhJhlYODr7mkTi8sXYVCGXXIAk
         jzkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=MfLCqg8i0XS803Rqft0nzsEuLfta6LbxUlGU1DUe6fc=;
        b=dOkufFJYGYyfaPrP/S+ZGz1BoYAGu27JDG1fBio3HhG/GnnuJxyFlEDrLX8fg6U4ta
         KsfS4M6PJxqWuQb/XNXoQ00kKEDVCNl+gH45kv7qMbD9xYAU4LV6Fm5E6UviDfG9bZV7
         flQxte7RUv9UTLE2TlMCaqTnLAm98IOYc8++7UBP3g3XZR9O1HrXphDy32dvMSyGyP3l
         kR9KlSQAfIVuu42uftrr00xUCh4ecgt3EFscop+rfn2OHXtRST4Ld2AUx7RLRqNtYYde
         y8RZME4lSbCONA/+2cX4F1UAfJqI3cK5r6r1+4tViFq+l+nyxkMMw9ANd9+4kWmBNxpA
         BigA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=sJ8rQYiu;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MfLCqg8i0XS803Rqft0nzsEuLfta6LbxUlGU1DUe6fc=;
        b=MG2O6mvQRtSwATUt3VU6Lhx7t8vFij+M5QSWo+4PGkh3QGQ45D9Yc9U1S1Xo5uvu2G
         EbP/1HyEubQiHK5KitMucrB3HbSoy7E5PgOhbVPGFCtlxes8hsmglbkPBILhmEoyZmiN
         5x4b2oi6hlZV33JlhQfgxJy/ZwSgM6t3Fl6l0DiJ3L1s8VBYIr0CXzLXRf6SmX6QD8LI
         pCPEpHlBKmhHpMasj8QmSzMASSl5OwwpWgu4tzr8m3lt231mPx9DbpDAT/RN1zX4Wy4L
         zAC5DRJasSmvRrEBlnuAL8MvBYSrJxVZOhwOw7R3NkrGQLJtrUthzWJFyaK37w650xbP
         i7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MfLCqg8i0XS803Rqft0nzsEuLfta6LbxUlGU1DUe6fc=;
        b=NFY6zJdCdQG0f/yY1W++N/UVcEIiKI1gKpYr7TDBTnq8U3DKKPggj8r/Y5LJIzA1To
         kYeux2OOYnC/W7OhyEiXhaCUm1/7Q+Dld2r9LwY7XQbLJyV7Ot4wRjzHOMSrGEk3ibTC
         EPvXJ5nm6O/HvhaEDR8TXfbQ9KIcoQrYnI+kt0vhM2kHI2DylbIrAjKyURp+8rohIqtl
         qwAwz4V5MxAXWyX+Xe3l0Es9LW3Vml8MB8En/IvNAWUCopux20RA1VOYI1pYy9ENGm2i
         DjwrskTs6CohHbmm91kgGPc5g8R85zj9j2XlM4OpxPg3i+CTgtR8PRLN1ZJDLNa389Q4
         4B3A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVXe+d105ac1an6AirLBtUUMRbn6Zom8ptLnNr7/mVhMWZSVaM8
	gVEXbnBDVhqOnslCaCFzi60=
X-Google-Smtp-Source: APXvYqwqKQ3BEB7rQ/iIetO41euqva9jiJ+Nm6ataQo5MsWpNztpcAbWMC5KHhqnQxSjjxyudNlMXQ==
X-Received: by 2002:a25:505:: with SMTP id 5mr60841960ybf.189.1556727330476;
        Wed, 01 May 2019 09:15:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:34c2:: with SMTP id b185ls6108259yba.8.gmail; Wed, 01
 May 2019 09:15:29 -0700 (PDT)
X-Received: by 2002:a25:4189:: with SMTP id o131mr62751476yba.519.1556727329543;
        Wed, 01 May 2019 09:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727329; cv=none;
        d=google.com; s=arc-20160816;
        b=dFZmSedARD3ZsQJDURMRb0dSyi/yR8lY/6CVOovHwbl4QXxSHbhTHRd3Vn+ZS/l3E8
         FhhxDS0f51PCeYvvwfnreGNWcdpI+4IRkvAphtynoyZ/yB0exLTpkOVyI2JFZh7TTpbw
         lr5qMt7gYCuEGZrredH6C+31ke8eN1Cz8Ow0a2HHAHFsm4Ajt5sKMPxT5swhuciiMoYe
         t9mbT66BygDJwI3htF/dTlbujnjlP+hcBrZ6L41QjX274X6todC+tsUpONvsMP5XF8ya
         z50WN9elIvvkkNOzhRP0aOt81J3T+K8+gx65MzTmpyBuw/9CHzvx/2R0ghdieFYJgX4r
         Sagg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LhiiGsQtqWts5dxpsG+adD5T1bQE0OqxeRu+AIjcIuE=;
        b=Qb338ttSNWOvaFA4T5Do56TqJMiBX1rveDHtiezg/SxDxTkkEfOajLnNJvCQ4F5q3R
         fz/Oj3ddpBYSC6H6T8eIn+hG+5QcBDToNLgnSWWlQIiTx3rmU877omeqntW9jHoh0O0/
         yH0NK00YfikN/IoVNi+PLb3EFxJalgHCDbODVSeVZQAX0p2d/VgNrpxFT/i0H9pZrOY8
         PhdLGZOg4kAjJabnj8N8ce/FOBg3ACs2kUL+OUDoMiGJftIFv5Q4JHn8cElSgQDIBhHn
         aSjlzmYQLyCug8mr6904hLAi4NbrnRnHtCxw0dbTvg1x+dgBXXlNZRaNpR0f+sYLZHYZ
         DSQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=sJ8rQYiu;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id r1si2381725ybb.0.2019.05.01.09.15.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrt8-0005ew-Sq; Wed, 01 May 2019 16:15:19 +0000
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
Subject: [PATCH 15/24] libsas: add a SPDX tag to sas_task.c
Date: Wed,  1 May 2019 12:14:08 -0400
Message-Id: <20190501161417.32592-16-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=sJ8rQYiu;
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

sas_task.c is the only libsas file missing licensing information.  Add a
GPLv2 tag for the default kernel license.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/libsas/sas_task.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/libsas/sas_task.c b/drivers/scsi/libsas/sas_task.c
index c3b9befad4e6..a46e8e4c0684 100644
--- a/drivers/scsi/libsas/sas_task.c
+++ b/drivers/scsi/libsas/sas_task.c
@@ -1,4 +1,4 @@
-
+// SPDX-License-Identifier: GPL-2.0
 #include "sas_internal.h"
 
 #include <linux/kernel.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
