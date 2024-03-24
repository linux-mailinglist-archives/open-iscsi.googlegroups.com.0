Return-Path: <open-iscsi+bncBDUNBGN3R4KRB672QKYAMGQENMAO3MI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A018882C1
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:43 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id 98e67ed59e1d1-29deeb2fc13sf2924595a91.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324542; cv=pass;
        d=google.com; s=arc-20160816;
        b=oOhLboCaW15oPWjs9VIvwyOVNp20+3UTsB3Uh2CfYREOXEfYmF0ii3SWhdYnucYEu1
         9OPmSdfb5EQCWsy1hBOA9DQlHKSKXjmNBdzXwl0oZ4ipn0w6K8Y3VZ9rADIOezASXj37
         yMBrJJzdrRXICjtGs9JeBTN/Pe5zLojWvsk0uJbDmVyCU8O/JushoHAbedg8l8uiGlZ0
         5zGhlZDihOU6I0STVLLfUhiBG2xk/oaLorL3MjBk7QhukbhLvcOmk30U6qFe5TTH6fBi
         lB6H3etN7rM/dLAVUkibEc6EHPlt3J+46izP4osW0X56EsSX6yKkivSJOzYP2rU50Lxg
         MIgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=sGKRNezr7zHgRJSRMRauwSWvJuaZbsvWGuIdospNS2s=;
        fh=22LQoT+kD/xRrQmqDV1EE+UTD3AzoJvk4Du9MJyWh80=;
        b=MI38xNKQo+x+9xpOHToCJFKrkBXpl/OM4rYDcxEhfDJotZ2R9yMHLD3e+KJfEa173q
         KogMmtNxc/oMsjTLU3ZFDIITW1iILk3gqGg0/4E37m+LAnx83e1n/UCdbb1TwCHR2khA
         k1kw7hO5V5gyfLcIbXhjQEl5mxcMJrd42OlO0y9+vsF3ovnDEZn/YDS37Ry7t3xsUlhg
         tWAXYg3H5cyVHuQg7Zvn/h50Q4UgREcfhDIoAsetLsv1L8MGM42tu6rvv7VI/09L3bKL
         lP6lvKQpfZqm1eHqJVSjblXt8HBPawvHonQrmGnQboBuA+/izuKEqiqnQGaCCOuNpwJS
         i5sQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=2dDQODCm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324542; x=1711929342; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sGKRNezr7zHgRJSRMRauwSWvJuaZbsvWGuIdospNS2s=;
        b=vnklsKdGrftuVUfXGVcRnaHm90nfDKmb47b/ZH3xm0Z/HT79Sqsu0wDsL0X1AKKUti
         hW3aK7ctz2QZXdCZUyYR0ZEFCaFWb+KyRQyZJP8J5b0f4Kcvnx8zTFQbP7yP2rSBL9Ee
         L5xUAagpnjPXw7DFb8dQFMQ6w4jJx9NTHaMIuamN0RueYOH2/pbKFSftYTDPuN3anwmz
         U9jssrzp0nF73wOaBLhfU5mGwZPeYMIZa4XnCK+jmuc5QI+rE2nT5Kc8mEK0U1JeTV6f
         7e2qhYNmnUif3YzRI4veoFS3jZbvpYb78h6mWdi7g2fRMQmSdVzOMqf07Pm1FcLfXXFI
         5ZvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324542; x=1711929342;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sGKRNezr7zHgRJSRMRauwSWvJuaZbsvWGuIdospNS2s=;
        b=RsGV9ScOrYw+y8uh7di6HEY8C9lLf2C1DUh+9TlDgf2DtINZSNb4kpqh5p9vIYZs6E
         8bZzXqL4UG1qcrSIbfvxXImcYSp/egZQodOQX49Aef0FalVfjg6clld5NkD9gJ9D374E
         Eyvn1H528Bj6wqn6pNUKLukH+ZwZTcoqHOJNfJkwdp/pSOxoSouEErhQ2aH63sesc4mz
         1tDOWldzl3FofbaMDR0qwECgOs9HEr1nXImh4tgXN/J94y1MIdAWyOhJqY5mvAiI9scq
         yDg/vyhQSxyE9v3FbQJ8fKyzDvdODkiXWUfD6gFCnHZvWutBPbQYaxb9sIdnMxEnd/mp
         sb4Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXK6hcHcIbOb3xAwZES070JAqeYTr9Ma3tXeKmBNlpc9v7mmhlIdQy9wkOu6nffpTB7grvkqQJ4EdFbpGWb+0mCl52wokYmrwY=
X-Gm-Message-State: AOJu0YxOYoAVcZce0vZ/l0oVp29wYfU8J8aaVNBFQV2GL46Uz80/7ZAo
	Uu9e6nKzYoc5yWLfP4kEMkDx0FRwpge0U/1WvPoclcHneRQpWrGl
X-Google-Smtp-Source: AGHT+IHqVPDzQL9olae+4TDxQ9EKAjRtptJVt25GcjqFH7arbkGMwUgfPaY4yKGixBU+xQtuch5Yig==
X-Received: by 2002:a05:6a20:d497:b0:1a1:5779:9e83 with SMTP id im23-20020a056a20d49700b001a157799e83mr4741759pzb.56.1711324541799;
        Sun, 24 Mar 2024 16:55:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:e808:b0:1dd:ae61:6793 with SMTP id
 u8-20020a170902e80800b001ddae616793ls630863plg.1.-pod-prod-04-us; Sun, 24 Mar
 2024 16:55:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXUR0liX1/OKSHghC0mW2K9lmEjag2N2LVUZPCLULdU16/TPFNQaUMNP+OFmoFJX4XuWtVCxdIchInnoEe4J3+OFqRc59zm99iZ8IQ=
X-Received: by 2002:a17:902:e746:b0:1e0:b5f3:f2bf with SMTP id p6-20020a170902e74600b001e0b5f3f2bfmr2264326plf.13.1711324536687;
        Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324536; cv=none;
        d=google.com; s=arc-20160816;
        b=LrMzhT4mqsp1sv06cmYQZhITfuNoW+tIVGk0ybfg5WnC2wDG1joWfgmyfZrLL4iXV6
         fXeWeF7MQ3JnEb28PmjjYWupS11HVMCRY+L7FfQ/vnDvO1m91p1QMYo/GqxaXg7afW/X
         ElSxdv+9qXXhQUKzk4hE81Ec84UDP+cIIaL2WgUHK5x6KOla7gWyKD3Nzje73ELCCJu6
         b1HnjuRaqHYt+vVnwQxjRFaD6zb2wyBV+GHofop7DDuIqJNKr2oV4xs6thghrFc+r1wP
         h7vEhGizn26eBGxr+feQdRergM/m+HjMH6T/YezB4whfWbMbsTufcUxN32zEeobvfGB+
         TiYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JVG9pbbeeSXQ/roJTY2dlwsI7Lw+oBvV+4eIuCwzqu8=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=Necce8pfEo/jYq95DwaxONmZWi8y4wQdurKW0D/HkCoT7UpY10RgMoZvCAI7HUrlu4
         ua2LNnduOX1TBEmLBOaMkrKHULxQvfdKXqWw5F/cK9B5s5TgePknmcPYeImcA5tAXnxh
         ubMSnttdoRJXxLvPAai4Xuv+FgYADtriBBNZCQ/F0VBxy0Zfx5ZLhxEd+B6xU/+Iwe5s
         e7eo6A+cAtaBUvNPuOzeklODHsG9VjLFdIIsYasijIoU6rP4dYkQri5EOiRzrD/iAidK
         GnpcLPMqDLYryG+6YalRbQgyEeRtNIJBzRDtLFOV3m/bwLQ/IrQcTYMIrmjjFYoLP2y8
         F3tg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=2dDQODCm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id m10-20020a170902d18a00b001dd61b4ef8esi266613plb.12.2024.03.24.16.55.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgT-0000000DzTW-02q0;
	Sun, 24 Mar 2024 23:55:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Xiang Chen <chenxiang66@hisilicon.com>,
	HighPoint Linux Team <linux@highpoint-tech.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Brian King <brking@us.ibm.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	John Garry <john.g.garry@oracle.com>,
	Jason Yan <yanaijie@huawei.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumit Saxena <sumit.saxena@broadcom.com>,
	Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
	Chandrakanth patil <chandrakanth.patil@broadcom.com>,
	Jack Wang <jinpu.wang@cloud.ionos.com>,
	Nilesh Javali <njavali@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-block@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	open-iscsi@googlegroups.com,
	megaraidlinux.pdl@broadcom.com,
	mpi3mr-linuxdrv.pdl@broadcom.com,
	linux-samsung-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [PATCH 06/23] scsi: add a no_highmem flag to struct Scsi_Host
Date: Mon, 25 Mar 2024 07:54:31 +0800
Message-Id: <20240324235448.2039074-7-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=2dDQODCm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate
 permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
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
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

While we really should be killing the block layer bounce buffering ASAP,
I even more urgently need to stop the drivers to fiddle with the limits
from ->slave_configure.  Add a no_highmem flag to the Scsi_Host to
centralize this setting and switch the remaining four drivers that use
block layer bounce buffering to it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/aha152x.c         |  8 +-------
 drivers/scsi/imm.c             | 12 +-----------
 drivers/scsi/ppa.c             |  8 +-------
 drivers/scsi/scsi_lib.c        |  3 +++
 drivers/usb/storage/scsiglue.c | 10 ----------
 drivers/usb/storage/usb.c      | 10 ++++++++++
 include/scsi/scsi_host.h       |  2 ++
 7 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 055adb349b0e41..83f16fc14d9630 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -746,6 +746,7 @@ struct Scsi_Host *aha152x_probe_one(struct aha152x_setup *setup)
 	/* need to have host registered before triggering any interrupt */
 	list_add_tail(&HOSTDATA(shpnt)->host_list, &aha152x_host_list);
 
+	shpnt->no_highmem = true;
 	shpnt->io_port   = setup->io_port;
 	shpnt->n_io_port = IO_RANGE;
 	shpnt->irq       = setup->irq;
@@ -2940,12 +2941,6 @@ static int aha152x_show_info(struct seq_file *m, struct Scsi_Host *shpnt)
 	return 0;
 }
 
-static int aha152x_adjust_queue(struct scsi_device *device)
-{
-	blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
-	return 0;
-}
-
 static const struct scsi_host_template aha152x_driver_template = {
 	.module				= THIS_MODULE,
 	.name				= AHA152X_REVID,
@@ -2961,7 +2956,6 @@ static const struct scsi_host_template aha152x_driver_template = {
 	.this_id			= 7,
 	.sg_tablesize			= SG_ALL,
 	.dma_boundary			= PAGE_SIZE - 1,
-	.slave_alloc			= aha152x_adjust_queue,
 	.cmd_size			= sizeof(struct aha152x_cmd_priv),
 };
 
diff --git a/drivers/scsi/imm.c b/drivers/scsi/imm.c
index 180a5ddedb2cda..21339da505f1ea 100644
--- a/drivers/scsi/imm.c
+++ b/drivers/scsi/imm.c
@@ -1100,16 +1100,6 @@ static int device_check(imm_struct *dev, bool autodetect)
 	return -ENODEV;
 }
 
-/*
- * imm cannot deal with highmem, so this causes all IO pages for this host
- * to reside in low memory (hence mapped)
- */
-static int imm_adjust_queue(struct scsi_device *device)
-{
-	blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
-	return 0;
-}
-
 static const struct scsi_host_template imm_template = {
 	.module			= THIS_MODULE,
 	.proc_name		= "imm",
@@ -1123,7 +1113,6 @@ static const struct scsi_host_template imm_template = {
 	.this_id		= 7,
 	.sg_tablesize		= SG_ALL,
 	.can_queue		= 1,
-	.slave_alloc		= imm_adjust_queue,
 	.cmd_size		= sizeof(struct scsi_pointer),
 };
 
@@ -1235,6 +1224,7 @@ static int __imm_attach(struct parport *pb)
 	host = scsi_host_alloc(&imm_template, sizeof(imm_struct *));
 	if (!host)
 		goto out1;
+	host->no_highmem = true;
 	host->io_port = pb->base;
 	host->n_io_port = ports;
 	host->dma_channel = -1;
diff --git a/drivers/scsi/ppa.c b/drivers/scsi/ppa.c
index d592ee9170c11f..8300f0bdddb37a 100644
--- a/drivers/scsi/ppa.c
+++ b/drivers/scsi/ppa.c
@@ -986,12 +986,6 @@ static int device_check(ppa_struct *dev, bool autodetect)
 	return -ENODEV;
 }
 
-static int ppa_adjust_queue(struct scsi_device *device)
-{
-	blk_queue_bounce_limit(device->request_queue, BLK_BOUNCE_HIGH);
-	return 0;
-}
-
 static const struct scsi_host_template ppa_template = {
 	.module			= THIS_MODULE,
 	.proc_name		= "ppa",
@@ -1005,7 +999,6 @@ static const struct scsi_host_template ppa_template = {
 	.this_id		= -1,
 	.sg_tablesize		= SG_ALL,
 	.can_queue		= 1,
-	.slave_alloc		= ppa_adjust_queue,
 	.cmd_size		= sizeof(struct scsi_pointer),
 };
 
@@ -1111,6 +1104,7 @@ static int __ppa_attach(struct parport *pb)
 	host = scsi_host_alloc(&ppa_template, sizeof(ppa_struct *));
 	if (!host)
 		goto out1;
+	host->no_highmem = true;
 	host->io_port = pb->base;
 	host->n_io_port = ports;
 	host->dma_channel = -1;
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 1deca84914e87a..f1936f98abe3e2 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1995,6 +1995,9 @@ void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 	 */
 	lim->dma_alignment = max(4, dma_get_cache_alignment()) - 1;
 
+	if (shost->no_highmem)
+		lim->bounce = BLK_BOUNCE_HIGH;
+
 	dma_set_seg_boundary(dev, shost->dma_boundary);
 	dma_set_max_seg_size(dev, shost->max_segment_size);
 }
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 12cf9940e5b675..1d14c678f3d3e3 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -40,7 +40,6 @@
 #include <scsi/scsi_eh.h>
 
 #include "usb.h"
-#include <linux/usb/hcd.h>
 #include "scsiglue.h"
 #include "debug.h"
 #include "transport.h"
@@ -130,15 +129,6 @@ static int slave_configure(struct scsi_device *sdev)
 		min_t(size_t, queue_max_hw_sectors(sdev->request_queue),
 		      dma_max_mapping_size(dev) >> SECTOR_SHIFT));
 
-	/*
-	 * Some USB host controllers can't do DMA; they have to use PIO.
-	 * For such controllers we need to make sure the block layer sets
-	 * up bounce buffers in addressable memory.
-	 */
-	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
-			(bus_to_hcd(us->pusb_dev->bus)->localmem_pool != NULL))
-		blk_queue_bounce_limit(sdev->request_queue, BLK_BOUNCE_HIGH);
-
 	/*
 	 * We can't put these settings in slave_alloc() because that gets
 	 * called before the device type is known.  Consequently these
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d1ad6a2509ab7f..a49a31639f6f0c 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -47,6 +47,7 @@
 #include <scsi/scsi_device.h>
 
 #include "usb.h"
+#include <linux/usb/hcd.h>
 #include "scsiglue.h"
 #include "transport.h"
 #include "protocol.h"
@@ -961,6 +962,15 @@ int usb_stor_probe1(struct us_data **pus,
 	if (result)
 		goto BadDevice;
 
+	/*
+	 * Some USB host controllers can't do DMA; they have to use PIO.
+	 * For such controllers we need to make sure the block layer sets
+	 * up bounce buffers in addressable memory.
+	 */
+	if (!hcd_uses_dma(bus_to_hcd(us->pusb_dev->bus)) ||
+	    bus_to_hcd(us->pusb_dev->bus)->localmem_pool)
+		host->no_highmem = true;
+
 	/* Get the unusual_devs entries and the descriptors */
 	result = get_device_info(us, id, unusual_dev);
 	if (result)
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index b259d42a1e1aff..6d77c48e8311fb 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -665,6 +665,8 @@ struct Scsi_Host {
 	/* The transport requires the LUN bits NOT to be stored in CDB[1] */
 	unsigned no_scsi2_lun_in_cdb:1;
 
+	unsigned no_highmem:1;
+
 	/*
 	 * Optional work queue to be utilized by the transport
 	 */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-7-hch%40lst.de.
