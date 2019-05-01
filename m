Return-Path: <open-iscsi+bncBDUNBGN3R4KRBJMMU7TAKGQEHNO5SRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB1010AF1
	for <lists+open-iscsi@lfdr.de>; Wed,  1 May 2019 18:15:35 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id p8sf11283002pfd.4
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 09:15:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556727334; cv=pass;
        d=google.com; s=arc-20160816;
        b=QAtPJElLm4RYuTMnZwqGr4/x61GoxZTWVjCAjT/RM/XJc6nsX7JRF7jO9UZoWOxQL8
         ThiRYhcORFJyJbvIypg2KlsjMs+7iSxhBv6m1zqvCc6D8H9p3t00i+tSSyT3xVQsgwdm
         2zqa1zlOf3UgA/i+Kc0Z4s0DvfLwjPaIoZgtKdA0xDY9jmsb4zxvQ+aSTOK/0P4fKr2s
         objFB3onBKIYh74Xsc/eIgTiqKTQraYVUFBofiprLLWXgUYynlTnUV5KvI+viEXjdhVC
         Gy3Uqe0CM9AO7eOsrL/uwSvSWMNlv+lwpHG6d2iHE3mIZJg8iduh2yeNmURURUtQ+2b8
         DUKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=v2u8RzMiUWcWRwd/lbZQbEKeZFbYpo2eFW/ZPKJgfds=;
        b=p9N9cRCsWziPOgpuIpwGKqSqRn2mhonmu7ENXb7KZCvUxbqFoNq5tnEeqZ5KDvpP57
         cys8GQTHSfVE51DutUlKSmn0z6WQYMAdF3fEd9zB0UTQaKOxixb1m+khA6N6zqxF+u2w
         tKdyQgUKODhjJmrpYPHSgE/90eqOeLNi7CXzx9YP0DioruSUUhmc6tn+PtgMqPB5jKd9
         h01BP2YHopa8/G55SHLRsUEkLUPiqy2gYBknRqdMydwxoinS4tdFsM1yjnCXI4gMoofT
         +7m9i3O30hUAg2jVSi+0h1hyiTCg0AAzH05ZToIJHzwpeQv39eT/+qua/xVDFIarixBD
         MuAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=pHaC0WTp;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v2u8RzMiUWcWRwd/lbZQbEKeZFbYpo2eFW/ZPKJgfds=;
        b=P/WuKFbwDJuffoKWdTSN7e9mHUmQJO6UAtCtvt32V7+rjOTG5lLDGihRUHcaP/N+Wt
         c7ucvnOY3pfvClJxmiPdrWNUGj3SyTOKrXfrw9A0eUarhtSnWHODZsUdZKTLdOY4gfIU
         3Gq0jWcIKaJF4oMhFLDoU2qj0aU4Rh1ZT8urc8EuA3iw7fIJLcHGb6JGgUyBDj/WVEoP
         QZcK/1DCu81su0QOKsRziajzmba5CNzPdlaEEjZgMfWCHZ6eQukPPQBCeFF34PNC/Cu6
         gR+8Ds6MBkNspuzC2vCktd0xU6mwS9c/QddIOZAKpWQ0SYWomCYRC4XnON1c15ZyGrBN
         yn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v2u8RzMiUWcWRwd/lbZQbEKeZFbYpo2eFW/ZPKJgfds=;
        b=Lo3tTA1Bnvj2JSZdsc01gqIdy+QPfKY2QFNuojr/95pxNXePsiDhPUyEL9yaeZWkDu
         8CZyAs4WtgXqGcVYVvmFq6FcngFpGnFBiLzxub0OEUhklsVweWGNAafZz1xX7Pl8Q8Zd
         2aOHscvY4dvE9avgpqc3z+4oslUtwrCUw3u3UKTpYptFzkiFlIPP+IDO6O/+my3ozvHp
         gWv6Fc8Bp62iY4CclbWJ7Y3w8dYVsgGYTYIK0IZHrl6ljvokjZBtgXzqZCHMF7sm/DTT
         fIRTt4OQfXApfGbilK3T7L76lYfj3QHcguZqsmYUwCcTfN/ga6sid89wDf0XPuGnW2YK
         AHhA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUOS+akIueeIINx3LO1RaqP/opSfaTTm+2rupFc24zFDGhSyiu7
	18p8lL9hhnLFC+vLpAcm4pE=
X-Google-Smtp-Source: APXvYqylQwKTSvw5u9SkHLTEu8QppAge1qsUMwKmmsBPO6l9TeydAXNqIQnMsou/IUD3r3QeMdoSpA==
X-Received: by 2002:a63:af0a:: with SMTP id w10mr74718091pge.67.1556727334024;
        Wed, 01 May 2019 09:15:34 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a65:64cd:: with SMTP id t13ls1278335pgv.16.gmail; Wed, 01
 May 2019 09:15:33 -0700 (PDT)
X-Received: by 2002:a65:5106:: with SMTP id f6mr75316131pgq.253.1556727333695;
        Wed, 01 May 2019 09:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556727333; cv=none;
        d=google.com; s=arc-20160816;
        b=HQG63hpUm6eBEx8hUqESI44mQXCMxG7IbWWMHwYc7Fq+cD1fcKQiA3z26KmnnKzm+B
         xEec2A8xPyCwfWF99xSUGk6aEXbqa6ZEsKAbL0hEeCRkUbrXYB591KF9Lu3m2+D+qzXD
         dbwEjMnB7EA9pYkUxp/kA2wxtTygjuQO/yPnXxo4F128qTBOOk92AUnTlu/1TocTV0LA
         1Z5SDTkd4DQBeEhxadWXSVWToXjAdYkS5hFX9IsvB+bYzNKzwBZcQ3xhaWEVMb/DJ7/4
         sTHPjxfdHtLGsj42T9Jdu/ibmUZ7pSw+l8WEtjzGz3q1Fu4R6TP7e/cvqkYWL+4fiEGf
         0/Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=73fVpgtKFRyvxsqOU0LWpDO/to7iwBP7xuc/fGa1KTU=;
        b=GBU3eg7gddcQiDKc11WlbpegYyesOsz7dhcXeRPLNBPe6GAVoKiP+r2D3OmuY6oJCP
         Rq0fN23wa0sbKotZ03IxKfQfulBBJhmsbMJr6wTGwahM5rX6jWyENws41Rh2Jb8hYY2V
         ASetbYrm+PVs4DcYzynP6kBnWeVvSQqs0JTB9EL4aEyUNwN/vyilyb++aG5k1uTleuxc
         d/fEjDs629rmmuSDVdKyUoS32isHAAUacCqZtg3HIX7tigc55AK96086KBuVtWkUlIX9
         wRxvJsiZmBy9tv0ZQxzQOjK4/nN4ZYUlhLUy+TZvhKtmdWHLUszGcYC2pUCjHoaQ4i+u
         djlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=pHaC0WTp;
       spf=pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id d18si1922960pls.0.2019.05.01.09.15.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 May 2019 09:15:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+fbe6eae7536a933b5243+5729+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrtG-0005g5-Bu; Wed, 01 May 2019 16:15:26 +0000
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
Subject: [PATCH 19/24] sd: switch remaining files to SPDX tags
Date: Wed,  1 May 2019 12:14:12 -0400
Message-Id: <20190501161417.32592-20-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501161417.32592-1-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=pHaC0WTp;
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
 drivers/scsi/sd_dif.c | 16 +---------------
 drivers/scsi/sd_zbc.c | 16 +---------------
 2 files changed, 2 insertions(+), 30 deletions(-)

diff --git a/drivers/scsi/sd_dif.c b/drivers/scsi/sd_dif.c
index db72c82486e3..93ac1e4cab73 100644
--- a/drivers/scsi/sd_dif.c
+++ b/drivers/scsi/sd_dif.c
@@ -1,23 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * sd_dif.c - SCSI Data Integrity Field
  *
  * Copyright (C) 2007, 2008 Oracle Corporation
  * Written by: Martin K. Petersen <martin.petersen@oracle.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version
- * 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; see the file COPYING.  If not, write to
- * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139,
- * USA.
- *
  */
 
 #include <linux/blkdev.h>
diff --git a/drivers/scsi/sd_zbc.c b/drivers/scsi/sd_zbc.c
index a340af797a85..d5e83cfa4d74 100644
--- a/drivers/scsi/sd_zbc.c
+++ b/drivers/scsi/sd_zbc.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * SCSI Zoned Block commands
  *
@@ -5,21 +6,6 @@
  * Written by: Hannes Reinecke <hare@suse.de>
  * Modified by: Damien Le Moal <damien.lemoal@hgst.com>
  * Modified by: Shaun Tancheff <shaun.tancheff@seagate.com>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License version
- * 2 as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; see the file COPYING.  If not, write to
- * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139,
- * USA.
- *
  */
 
 #include <linux/blkdev.h>
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
