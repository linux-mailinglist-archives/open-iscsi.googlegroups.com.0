Return-Path: <open-iscsi+bncBDUNBGN3R4KRB472QKYAMGQEEV5IRVI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id E719F8882BC
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:33 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id 6a1803df08f44-69692519a88sf711266d6.3
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324533; cv=pass;
        d=google.com; s=arc-20160816;
        b=mPem2ltbg3UJvhnIvyPKQQy4J1cuMvyQrzvZNMC45aK0/RHbfWpi8XD6/2XZjApJEg
         W32xxMghdbUaXCSqlwZNE4agk0BUWGWzLmIrXuGlGaPHnDYQNrXNDzjh/U32lDJDDCf7
         +FjteIT1kTKst3dxGNEOO6nJE0ud4DOjltf43ZUqsO1Wm0ly2Xf2krCS9AQbn4V6KLaD
         BeaulJY0ujBMnwiVUST8A+owA4qRSDq1x9tJhyMLZfM2pRxxP/A0SksYGOZzyh+mxJai
         rUEwK0WqI9pxIEg9BOpsbg0ts9bHQbx5i3TbdmAL5oXeQiN6PqYlp20QUFmXlKJmHP0Z
         MztQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wu1oFefipyq3jM6tBGprGzLWPW4qavmhKcpdft8JAW4=;
        fh=mEEj2JI3KbNZmLDua5ZuUwej025eLeBm7Ta9rGto4C4=;
        b=TzSJrPW7ftAr/8xzLbqqDLbOTXLJOUvDN+UXoiN06x4irTPrHh88IXhfrSqNOJ498K
         PPr5KBnqdKxiUvC/hhG3JYDjFZmX+YkRUSRR7VeMQ+jvcun3i0wn/gNpo+X+Gzj0Lr5l
         7aexjQQMeudZHZIlMCNlBaTkpyS+puv0JSobFB7z8eYaokweL3MXU3HAh8m6XoLOfJPW
         0HYgn/gOicQpPYTb9aSSM8fxPfxZBvMLEjJv9lCPISsFZ1BQdt6gkogRXV1u2WHJv1o4
         qvYUrhedooCYw55oTLVY/jKQyLLhNdPIOKAlDc3Ud2ph0iwLVeUnl7NmssGlTbZVACrX
         cQBw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cYCq+MLC;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324533; x=1711929333; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wu1oFefipyq3jM6tBGprGzLWPW4qavmhKcpdft8JAW4=;
        b=sgwFgdZrIqowNp6aWgwWGDqRYE1LOm/q5HHRz8wArl1OdqOIRVlApvxWk6SQEbaE8g
         4hUERKOBeo6aI51b9u6IQwppMOV7ayas7FegbfQrnvUML1I1VXKyWiqYIwgY+FIDGRzT
         feIv5R4Ly9MazdWUSDWDB9G4f+tf8pFHDqB3/1SiYYe61GNyZuyFF2cb9wWXuVC2+MMW
         VkpuqhQN3RnTQQn7Rn2oHVTBd2P6tCU05of639Yx8SxpGYISfX70wP+bMpVprK5Ne99g
         2j/s8tMZN8rTqknui+EjuKj+qSF2kOo99BLaLR/QTsZDIskzHnh4uqOmb/1ldU3BtZqC
         F0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324533; x=1711929333;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wu1oFefipyq3jM6tBGprGzLWPW4qavmhKcpdft8JAW4=;
        b=IdsUavXENROXDSAhNruEPRYzgB/1ouXJ1EyF6VGw8z3f37bL4bNivd6mENHFd75qVV
         mpO3214u5DVx7o0Vib+k0yMZx0Cg6hwEcWJVrIB6YBd21tjFpxHsYCShUT+PJYyOB5PU
         UnFLEUiSTVjhDIXqyCo8ySJb33XdBiFHXI/VkIguUjB+jmWBMVmrAKHDtobYE7Ziwiu4
         Be0/97yuma9QHEMslF974/Pajf1UR1I+UqvKKurDG/V0haVI9JwSWYkkjnt5i80/I/bP
         GPBDEEsigH4C3eRhl0SWjtW/rvYtdDg85JkaNHw0ddTSD/oa2NxUdNTZ2oo2f10felJK
         7New==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVwwygz+JB824WQTQBD43WstwwYziJYgWG9XQxAaqeqIHK1oMFmL341BxBsl6eSHG9/TwpkrJI1w5SGtJEa3vhBDCnuPaVnU8Q=
X-Gm-Message-State: AOJu0YyLl8n2/p1/U1K+lm9pZS/DKGOu8HpJwtwrsqc1A7FQdRVIludw
	9dPR2RXWNK08hmt56iBon2jx5KSSe0RwhEZ/36UvazRK3jRk3qAY
X-Google-Smtp-Source: AGHT+IEgSkWP52G0ZAeiD+e0RDkXsLlGFfk6yiYm9kM/NjxuqUwNZqUTGPC9NM8nEv4mz90h0LQwJg==
X-Received: by 2002:a05:6214:212b:b0:68f:e779:716c with SMTP id r11-20020a056214212b00b0068fe779716cmr7058998qvc.63.1711324532799;
        Sun, 24 Mar 2024 16:55:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:1311:b0:690:bb85:6016 with SMTP id
 pn17-20020a056214131100b00690bb856016ls6639740qvb.0.-pod-prod-02-us; Sun, 24
 Mar 2024 16:55:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWKAjSiksz94p6zUomtFGmbtDCFPdme/jLE06aQfghqtqvm2Q+tkiT7/5b3I7jexZ0DoCDfAGzNvApSIox4LK4uDrp0le2bVwJwh5o=
X-Received: by 2002:a05:6122:2524:b0:4d3:4aad:1b9c with SMTP id cl36-20020a056122252400b004d34aad1b9cmr3369088vkb.0.1711324530147;
        Sun, 24 Mar 2024 16:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324530; cv=none;
        d=google.com; s=arc-20160816;
        b=rjJVSwUDf9cFn3CVpm/rH5ouSu4HISohYVDiJ544ffUiG9dxug2n/GJoUSYZdri146
         CyUOKaEUkmy0j6TFGlRmHDppb5zxAl/gABx/uLCZlDPdfy4bg3BBh2TL2d2yM2QRJk8l
         vBzVCKnvFLghSRLB5Z02u+hWz8DsTuAKJVFLcT0a85eJDg6mJQCZ/tWGKp+5rA4Y9ZgM
         4nbc1PuYcMwSLerVRny0c8X5WwlzQ2+P6ANgfJpeVdztymwXkQNquTIOyHsTwdLPAh87
         uIOfsUUXyEBJPpJYkOj1DDG72L/ggzhWNLToeHEYNUplA9EqX8bPamZPFRUEEHu9yDfM
         Vf1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ohx8m4bpsWvYszEh4ZPMkTDxqGS94gGRxclW6ZHLypE=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=kwI3JeFRBA6gClJioSugmajkXnVZUb9yjTEjn0bPcI7x5os2LXbIUKahtULl0LP4wk
         GuGdRRB67QXJmDVzz1Cs/8p+NiQd+ttkt4aQJhZo/iHiUGYCGlwGOG4KHl1AgQ2VdPRk
         Bz7MTmtCM89jCXpZzCVZIoBJxav+AtmfQJOiNK68d+Srm7USmj8k2rtb8h73cIVIRewx
         ADq1DnSH5PzWQu5GDObgqFnMLwP+J1zBw0GCpIBbmkVXT9X6VW4wg6aFyQSzLGrBuxdJ
         wY9tHBU0Ta9m24nVAuGfTGyuhUQSQ3P3EsBF5Las0Iz2PsLejApNQnZhnX1CJovvLM4v
         DDkw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=cYCq+MLC;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id n190-20020a1fd6c7000000b004d3c4a37c63si755664vkg.2.2024.03.24.16.55.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:26 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgA-0000000DzOZ-3URi;
	Sun, 24 Mar 2024 23:55:07 +0000
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
Subject: [PATCH 04/23] scsi: initialize scsi midlayer limits before allocating the queue
Date: Mon, 25 Mar 2024 07:54:29 +0800
Message-Id: <20240324235448.2039074-5-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=cYCq+MLC;
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

Turn __scsi_init_queue into scsi_init_limits which initializes
queue_limits structure that can be passed to blk_mq_alloc_queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_lib.c             | 32 ++++++++++++++---------------
 drivers/scsi/scsi_scan.c            |  5 +++--
 drivers/scsi/scsi_transport_fc.c    | 11 +++++-----
 drivers/scsi/scsi_transport_iscsi.c |  5 +++--
 include/scsi/scsi_transport.h       |  2 +-
 5 files changed, 28 insertions(+), 27 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 2e28e2360c8574..1deca84914e87a 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -32,7 +32,7 @@
 #include <scsi/scsi_driver.h>
 #include <scsi/scsi_eh.h>
 #include <scsi/scsi_host.h>
-#include <scsi/scsi_transport.h> /* __scsi_init_queue() */
+#include <scsi/scsi_transport.h> /* scsi_init_limits() */
 #include <scsi/scsi_dh.h>
 
 #include <trace/events/scsi.h>
@@ -1965,31 +1965,26 @@ static void scsi_map_queues(struct blk_mq_tag_set *set)
 	blk_mq_map_queues(&set->map[HCTX_TYPE_DEFAULT]);
 }
 
-void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q)
+void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 {
 	struct device *dev = shost->dma_dev;
 
-	/*
-	 * this limit is imposed by hardware restrictions
-	 */
-	blk_queue_max_segments(q, min_t(unsigned short, shost->sg_tablesize,
-					SG_MAX_SEGMENTS));
+	memset(lim, 0, sizeof(*lim));
+	lim->max_segments =
+		min_t(unsigned short, shost->sg_tablesize, SG_MAX_SEGMENTS);
 
 	if (scsi_host_prot_dma(shost)) {
 		shost->sg_prot_tablesize =
 			min_not_zero(shost->sg_prot_tablesize,
 				     (unsigned short)SCSI_MAX_PROT_SG_SEGMENTS);
 		BUG_ON(shost->sg_prot_tablesize < shost->sg_tablesize);
-		blk_queue_max_integrity_segments(q, shost->sg_prot_tablesize);
+		lim->max_integrity_segments = shost->sg_prot_tablesize;
 	}
 
-	blk_queue_max_hw_sectors(q, shost->max_sectors);
-	blk_queue_segment_boundary(q, shost->dma_boundary);
-	dma_set_seg_boundary(dev, shost->dma_boundary);
-
-	blk_queue_max_segment_size(q, shost->max_segment_size);
-	blk_queue_virt_boundary(q, shost->virt_boundary_mask);
-	dma_set_max_seg_size(dev, queue_max_segment_size(q));
+	lim->max_hw_sectors = shost->max_sectors;
+	lim->seg_boundary_mask = shost->dma_boundary;
+	lim->max_segment_size = shost->max_segment_size;
+	lim->virt_boundary_mask = shost->virt_boundary_mask;
 
 	/*
 	 * Set a reasonable default alignment:  The larger of 32-byte (dword),
@@ -1998,9 +1993,12 @@ void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q)
 	 *
 	 * Devices that require a bigger alignment can increase it later.
 	 */
-	blk_queue_dma_alignment(q, max(4, dma_get_cache_alignment()) - 1);
+	lim->dma_alignment = max(4, dma_get_cache_alignment()) - 1;
+
+	dma_set_seg_boundary(dev, shost->dma_boundary);
+	dma_set_max_seg_size(dev, shost->max_segment_size);
 }
-EXPORT_SYMBOL_GPL(__scsi_init_queue);
+EXPORT_SYMBOL_GPL(scsi_init_limits);
 
 static const struct blk_mq_ops scsi_mq_ops_no_commit = {
 	.get_budget	= scsi_mq_get_budget,
diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 8d06475de17a33..205ab3b3ea89be 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -283,6 +283,7 @@ static struct scsi_device *scsi_alloc_sdev(struct scsi_target *starget,
 	struct request_queue *q;
 	int display_failure_msg = 1, ret;
 	struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
+	struct queue_limits lim;
 
 	sdev = kzalloc(sizeof(*sdev) + shost->transportt->device_size,
 		       GFP_KERNEL);
@@ -332,7 +333,8 @@ static struct scsi_device *scsi_alloc_sdev(struct scsi_target *starget,
 
 	sdev->sg_reserved_size = INT_MAX;
 
-	q = blk_mq_alloc_queue(&sdev->host->tag_set, NULL, NULL);
+	scsi_init_limits(shost, &lim);
+	q = blk_mq_alloc_queue(&sdev->host->tag_set, &lim, NULL);
 	if (IS_ERR(q)) {
 		/* release fn is set up in scsi_sysfs_device_initialise, so
 		 * have to free and put manually here */
@@ -343,7 +345,6 @@ static struct scsi_device *scsi_alloc_sdev(struct scsi_target *starget,
 	kref_get(&sdev->host->tagset_refcnt);
 	sdev->request_queue = q;
 	q->queuedata = sdev;
-	__scsi_init_queue(sdev->host, q);
 
 	depth = sdev->host->cmd_per_lun ?: 1;
 
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index 87b2235b8ece45..0799700b0fca77 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -4276,6 +4276,7 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 {
 	struct device *dev = &shost->shost_gendev;
 	struct fc_internal *i = to_fc_internal(shost->transportt);
+	struct queue_limits lim;
 	struct request_queue *q;
 	char bsg_name[20];
 
@@ -4286,8 +4287,8 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 
 	snprintf(bsg_name, sizeof(bsg_name),
 		 "fc_host%d", shost->host_no);
-
-	q = bsg_setup_queue(dev, bsg_name, NULL, fc_bsg_dispatch,
+	scsi_init_limits(shost, &lim);
+	q = bsg_setup_queue(dev, bsg_name, &lim, fc_bsg_dispatch,
 			fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev,
@@ -4295,7 +4296,6 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 			shost->host_no);
 		return PTR_ERR(q);
 	}
-	__scsi_init_queue(shost, q);
 	blk_queue_rq_timeout(q, FC_DEFAULT_BSG_TIMEOUT);
 	fc_host->rqst_q = q;
 	return 0;
@@ -4311,6 +4311,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 {
 	struct device *dev = &rport->dev;
 	struct fc_internal *i = to_fc_internal(shost->transportt);
+	struct queue_limits lim;
 	struct request_queue *q;
 
 	rport->rqst_q = NULL;
@@ -4318,13 +4319,13 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 	if (!i->f->bsg_request)
 		return -ENOTSUPP;
 
-	q = bsg_setup_queue(dev, dev_name(dev), NULL, fc_bsg_dispatch_prep,
+	scsi_init_limits(shost, &lim);
+	q = bsg_setup_queue(dev, dev_name(dev), &lim, fc_bsg_dispatch_prep,
 				fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev, "failed to setup bsg queue\n");
 		return PTR_ERR(q);
 	}
-	__scsi_init_queue(shost, q);
 	blk_queue_rq_timeout(q, BLK_DEFAULT_SG_TIMEOUT);
 	rport->rqst_q = q;
 	return 0;
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index c131746bf20777..5e1bb488da15c0 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1535,6 +1535,7 @@ iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
 {
 	struct device *dev = &shost->shost_gendev;
 	struct iscsi_internal *i = to_iscsi_internal(shost->transportt);
+	struct queue_limits lim;
 	struct request_queue *q;
 	char bsg_name[20];
 
@@ -1542,14 +1543,14 @@ iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
 		return -ENOTSUPP;
 
 	snprintf(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);
-	q = bsg_setup_queue(dev, bsg_name, NULL, iscsi_bsg_host_dispatch, NULL,
+	scsi_init_limits(shost, &lim);
+	q = bsg_setup_queue(dev, bsg_name, &lim, iscsi_bsg_host_dispatch, NULL,
 			0);
 	if (IS_ERR(q)) {
 		shost_printk(KERN_ERR, shost, "bsg interface failed to "
 			     "initialize - no request queue\n");
 		return PTR_ERR(q);
 	}
-	__scsi_init_queue(shost, q);
 
 	ihost->bsg_q = q;
 	return 0;
diff --git a/include/scsi/scsi_transport.h b/include/scsi/scsi_transport.h
index a0458bda314872..1394cf313bb37c 100644
--- a/include/scsi/scsi_transport.h
+++ b/include/scsi/scsi_transport.h
@@ -83,6 +83,6 @@ scsi_transport_device_data(struct scsi_device *sdev)
 		+ shost->transportt->device_private_offset;
 }
 
-void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q);
+void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim);
 
 #endif /* SCSI_TRANSPORT_H */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-5-hch%40lst.de.
