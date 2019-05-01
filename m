Return-Path: <open-iscsi+bncBDUNBGN3R4KRBF4MU7TAKGQE3ZK5MZQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 884A910AE5
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:20 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id j193sf3215766vsd.2
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727319; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZxH7s9Tc1g+aUJsJStq//YKsn5ivNCN820qtLfJbn7KLmFlK0e01WMW/u4vksUsBi
         I2JFa5Q2QKg9vjQXKmR5CtGOVk1fkY33BFOg6zUdOc1Dl95k4MHTT0UgVRZE0VJRtr2G
         r/0dJlWteQpzmGxvMJbekZYtPjUMCSpp9oUTCUIqQ25j95kry2P5zILGRTQEGh76Efl1
         aFpeTlglesRNfzvu9ErcIMr+Kzpl3IQVbuSXwuf3okxaM2TZCQAFX5Kg77UucSazE13a
         21jsfJHR7VV45py4TGFs1o6P/PYT0ZQyJ2pB9pmbCDjzgtXtH7syj91IqlQCLA4w6Sv3
         jJKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=M4+LooEuLo6k8KTVVxZctqz8dwD6MIhlfo0XJ1ZEw+g=;
        b=albavii53w9de3gu/pq6gjo/+BltKfM1de/8zCgdGAmALxpN/kLrqNZAW979JOr7PU
         4QHkAwt/xVesmtjTk0GmWzYXleDog0dkEh7sSIxhoEeICTsSDWNLXogVtoCi/fiepc2z
         SKqdD0ki2/UtYZlwdAS4ZDP8Td6jbNTcRnr6ijDTM9a5n3zAav40q6VZx04pvrATi6wf
         VAszPtzWty+lLSa2FMAVpSEbGolnwJ9OwIWvf09U7GObZKfGZvSupd1KqtxWAdAla59X
         G9HYFuToB3lqmQgAjp86HKBqxM+MjulBMf809pFrir7P7sLZ3nAfbZnI/wodCYKnXCoN
         JSeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=kz3MYmyO;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=M4+LooEuLo6k8KTVVxZctqz8dwD6MIhlfo0XJ1ZEw+g=;
        b=BJSuEeN2mvlPZxvbA9klIukSlDu2q+CxixYLxCfd6TlEN6ICbBJT88xddzZvhC5MGk
         zKn2e/RFPy89OBlYidhiOS0NHjwZUqKEHAYwp1jWg9A/BSJRc5dRJg1Ngh00aytuzLkF
         qBgB99RfKHNF62Wf/02/cfcU7W8kXurWLYUVtpxBoyPi/1vzMiLaAHfGka8KgCcXmRzd
         Fx9HaLluqtQKNYanv4k9u6W1MWWWrkO53AeeMBowoc88S5JgXI8jgltkTfp3U1dqAQRF
         smxwZX/jJXPIS3q6b6jMVlgkxmQcVHFGLEX5Pzy5VuE+o8kKyvUvkTFMkqOoQ2n0S/Ca
         eUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4+LooEuLo6k8KTVVxZctqz8dwD6MIhlfo0XJ1ZEw+g=;
        b=gzGhUeYpQjrPjLUibNLx0XQAUDvQXWwH0KSE74mswHKgj8O6uTPz2CgOeNrtXelkL+
         SjMA7TST3Riq6W++0DFgrjIoX/Px5yqPQSzHVLtqHzZQZAql3Sx6zuFbVy80VJj8BPKI
         3cCM0vZogS08wkXPo557mhxku6wSirZx5ZfcFlbVGLggX0S3knfCxUrnlx6M2PwUxlHc
         JdNaU6uT0+VS0qBp/uivrMPul+wj05v110z4eOcRzAh+tZ/UbAWvZgDo80xp47ka6Bev
         TawPPrirFC2g1RkT4Z1soldVmWxVBbt+70QXFl1AWdVKZePR11FWckGWvShfjtM0xUM7
         VZWw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVIksKXXubxAPI4wHG7tBFcrwyMRf3kqz+i2OHJOImgfZqFUGRp
	hpxTZwmqIJdSaHR1nukgFo0=
X-Google-Smtp-Source: APXvYqymlKskoL5heR5wCP9WQi7Xgt4miM9oFv7IpTLhRsqxDVc2Lj9sJBpAz9XL4FfTvb7vEm5SNA==
X-Received: by 2002:a67:a648:: with SMTP id r8mr20198806vsh.125.1556727319641;
        Wed, 01 May 2019 09:15:19 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:9d43:: with SMTP id g64ls1484227vke.6.gmail; Wed, 01 May
 2019 09:15:19 -0700 (PDT)
X-Received: by 2002:a1f:d147:: with SMTP id i68mr12429877vkg.56.1556727319302;
        Wed, 01 May 2019 09:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727319; cv=none;
        d=google.com; s=arc-20160816;
        b=tVSexYv00dCQP/SFrvr2CeMxGa2BBe7FTzvNoaC8tPYRRx2Fjps+9jYhJIMehztzwI
         sCvUhkgZecj62U8l8v7T+Try916NaEXhh1evvtGVpoV2HLLytDvx9jW3aOua6GGlbRcy
         Ndj5yp4LHlTlWchvUwWuy9f1O//ypSQoy/iDr7xmAD2RP/y49UXx3UeUgEDvjS4qFi+d
         R5U1qVY3XezOM4xiG29mlWiCwdLs/1rWRYtQHM3vdaWIClpnfeK5rS9dYJg3K6RWaGe1
         mGUVGQQulTquekisHB/apYJL4ft1p84zImnN+McFP6vMM9AVkUw9qB3yNu+rkmsjc5b6
         Thzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UXZQf5uORHjO699A4RsfuSsjKt6Jg++LKU72VXs3P30=;
        b=sX4s0VDciEjT8ocMHTggTC/aS8quccYQymzXUu/QQQLSd2PpbZJu3H0G8J7CYYhYgd
         Nr02P/hijb2KTfnbGG3i2AL4evM/yqmZ9/+gY8QXhELTPCNa7B41n3grAX3AAibuvBej
         X9P7+RFEexHf/RYb70fGVc8yKRB50B1lSVC3CSr42bIs9IyYKv5ngy5SZTpPSr/bo7+v
         /4wYlW1xsDtjTTP1Iw267PTmu+3b2hQeZimDYnblalYXW2gY1KK/D1APAWaHCenY71in
         8ILzn+lL4LzCxGRUErFIZO7IEvYnq2DVhKHQUAQg4M/XabLNe3Rnxg8LpO7Rp+L1BMX1
         cofA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=kz3MYmyO;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id v9si1353292vkd.0.2019.05.01.09.15.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrsy-0005Fk-7s; Wed, 01 May 2019 16:15:08 +0000
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
Subject: [PATCH 09/24] scsi_transport_spi: switch to SPDX tags
Date: Wed,  1 May 2019 12:14:02 -0400
Message-Id: <20190501161417.32592-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=kz3MYmyO;
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
 drivers/scsi/scsi_transport_spi.c | 15 +--------------
 include/scsi/scsi_transport_spi.h | 15 +--------------
 2 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/scsi_transport_spi.c b/drivers/scsi/scsi_transport_spi.c
index 40b85b752b79..474d2ffad9d8 100644
--- a/drivers/scsi/scsi_transport_spi.c
+++ b/drivers/scsi/scsi_transport_spi.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /* 
  *  Parallel SCSI (SPI) transport specific attributes exported to sysfs.
  *
  *  Copyright (c) 2003 Silicon Graphics, Inc.  All rights reserved.
  *  Copyright (c) 2004, 2005 James Bottomley <James.Bottomley@SteelEye.com>
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
  */
 #include <linux/ctype.h>
 #include <linux/init.h>
diff --git a/include/scsi/scsi_transport_spi.h b/include/scsi/scsi_transport_spi.h
index a4fa52b4d5c5..12516d16933d 100644
--- a/include/scsi/scsi_transport_spi.h
+++ b/include/scsi/scsi_transport_spi.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /* 
  *  Parallel SCSI (SPI) transport specific attributes exported to sysfs.
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
  */
 #ifndef SCSI_TRANSPORT_SPI_H
 #define SCSI_TRANSPORT_SPI_H
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
