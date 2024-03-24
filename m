Return-Path: <open-iscsi+bncBDUNBGN3R4KRBMX3QKYAMGQESEKV67A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD308882E7
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:36 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id d75a77b69052e-430b7aa0f0asf41324821cf.2
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324595; cv=pass;
        d=google.com; s=arc-20160816;
        b=bwcQsqAzqCNRv0b5lFkbNKE2XxtJnqCz6epdTR6w+BxlIsdlndKeJb0rl0G7vCMuiQ
         2c+vFFPtFwT4TTewVgOGgW9YCUkTBXMuPwyJlqLDFpGuU+/QunYeE/YIvfSAoaai1ZYE
         vWynxFXsf98l+W27jmQ/N1+gPcPP9pHK+KyJZ6kxfEe/5sQuYIJc4ICYxi4YxceCAFxY
         29ey+bIoANzi8ts0bq+giq5pCTc+cN0WQbf8G9DDjK0TukjLaPAiZwaA38KoZSO/Elx9
         cVyTx6AxlFJPCp7WoeksarAb0urM4O1EcsuL9FJf9IG4GEqA1kRawoGJS1EvKhVeDln3
         0p4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=h01xaW3tHXQVGMNpKfC9gfrS4vfWtLhZYdbF+z5DRoM=;
        fh=1jaYJKCZb6tVumgB2+O8JuDh8GCSLcp3DJM6y6zwT3k=;
        b=uAlNTgW6BpUyLMhG5QH5Nj3hifzn7p7MyfA+/5zf8QbN9v0nteVy/pe3w2wCUkBxuK
         IUUpHlGbams77fQ0jnPtRyBEDO4D4vIvbF3fE1AVTKzam+XCTPCTSNvcE5nHWe12oVP/
         r3zZh2UPrKuQeZKYQTdl2Rlmp2ghNooB2NHhzvksktnCp6Ysk7RrPYN2phsDmgRIaOgI
         9/GDCceOMVW9dXKXnEPNl8YHquc1EYTO4kx/V/QgU8cjZ/kFLCZ9m+SGWqc4fxPSmTv7
         puNuoCgF5vrXTYjz/Eu8ljE7pEdnmphhyybn+v4vt4cInK/PX7L+Hfn52D6rnD103yA+
         c4GQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=z+RvebV1;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324595; x=1711929395; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h01xaW3tHXQVGMNpKfC9gfrS4vfWtLhZYdbF+z5DRoM=;
        b=Q3M429CSRM4s63iEC2gBgOPzmVaKgxiRg8PCdyv/vzce221Kxuxan5v9nfJWq/iwR/
         zIwb4B6kBzhjFxK+dohDFtVs0rQibeW+UvFJIxjnn0ubL2HLIu8YZNBZXvPBlrVt15P7
         rfihHpQPISjW93N5LKzfrw0mu7GZm3Qz0SFxlHSmW6Ut3Y/dNpjYWdFCRCagRLRDBSmJ
         DwMynchuUuFiCQOOjUBhbplc9UXkHwgap2Ditti5yL/vPZrXWYgmrlhjNPbNEmCi3WEA
         95ch7AzeRZohisDZKEa0wpGi3yw89T6emgMvegxhKzMWPf6HKg9cmL07aYFCA3qIxSYd
         0NNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324595; x=1711929395;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h01xaW3tHXQVGMNpKfC9gfrS4vfWtLhZYdbF+z5DRoM=;
        b=HJoPLjFNeIw8u2k2N3Xu0SomvHHWylzUQ2K3SnT1bdlqNy2toqKMdyzxQkxYCmbqQP
         rqmlQfzqUE7cvhrvaITBtzlwwfju9nudNhBN1TNJoVm5DfghveC9t8wDlIC67e87PSor
         HP3f0Pk/HYYdUSGroqZYcmBOuzmSm65VXeah8y6EhPX3745CjFke2iVO5AOMmKxOf0pa
         8lbdtqBemmF6LS5t/0ArPKXFBRC08xXMdtRstoY1c81P+9Z0V7m6wiShg13bRNCi36mY
         vHXCg5GFHmVo/8ie20jlO8KbWdb7fs2sxGLIcvrW9jKnWpEg2ETH10RbYCy9DfjHb//y
         NMiA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWiKsPggeSjNKUixTJuXr5TMDDt1yCD5ZLW/OQzsrtywrtENrC4ulIpLPwOXNCer5bBwzX5x8b+xluXFtTzMmBrISPLZvjy3dU=
X-Gm-Message-State: AOJu0YyVl1jCCpTRgNNCX3rfRSzYU1vsMlJcUwDITiv+AhhQ4GU4bgFT
	vQHuGpy9NbFEi6CddpCK5p2VG5U1Hk2PaWCnnxBeVOE4JbZTXfvx
X-Google-Smtp-Source: AGHT+IH/eHFL4QssXSjay6OdM6ZW9awJzkfnaZP3+vBnOQaeH9KVu3r/tvR0j4oqXbsh8RUrKol1Lw==
X-Received: by 2002:a05:622a:14d1:b0:430:bf36:d16b with SMTP id u17-20020a05622a14d100b00430bf36d16bmr9385474qtx.66.1711324595141;
        Sun, 24 Mar 2024 16:56:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5d0e:0:b0:431:1e71:a57d with SMTP id f14-20020ac85d0e000000b004311e71a57dls6113656qtx.2.-pod-prod-02-us;
 Sun, 24 Mar 2024 16:56:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWowU5wtcmRUwH06UFGW8qaJau0wBWY+7SCbqxVx6eLKPJooNBVVT6fzU9eFRRFAWrxmM7mPQWk+GEi4tmbMOuTSxlR0svAiEVPuHg=
X-Received: by 2002:a05:6102:9d1:b0:473:efc:eeae with SMTP id g17-20020a05610209d100b004730efceeaemr4178937vsi.2.1711324593081;
        Sun, 24 Mar 2024 16:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324593; cv=none;
        d=google.com; s=arc-20160816;
        b=XO4YG7v1+BYlWX+j9u6FZHP3UrkPfmy595iMOVCC9eulyIH7AeeYpuQoGWJA1+4ARE
         dI1KWbUNQEnTWLTLKfTJjEWtrp5Sa8TsiYBdd1W85HT+6VTWlqBh9MYd9SWOC4DfHoND
         SJ0Ez6kpi0HJJ095iI+QX3R7ieHXbkx1o+AddBeLUu6cftNEajLFT9T0ebRDA7R+50UY
         +8zm+A3EltR/GWXcAnel1pKaMYuKbpT/3ZVFPMmiJzNcYMQmFQfI45JkUbK4wVIbinQl
         IpNVLeDWT239qeD84rc/1GcA5VD8fYfJ754xxf55CGXrV+nA+IO0CCY5Bc1Q8O8TuMPE
         5HEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yAndMHAX9EfBLIlJ7DOl64htqBpthsNlWc1ELYpuhBM=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=HoWBJoNkNw2sr4hxuW+AtQy5VmXKGcEvFc3Y0B4PNfgCqswphs+YXay2ehU3o4P1ha
         KfblVpQ3e3lMpRCH/d531YTicHlbALSAOjFxgYwUTjFuaNZQ0ruG2awp5ji8vK3VaTfA
         ZWjqXzOgUNokyk/AHUIBRTifaqhJh3qWH/qe08sFKMsaxuHwvflCJLk6Mo5rrDBz89TM
         +gMhLfGkFMHhn7cm0WtDSwJ2v6o3cLDn6E4NFBsdsK8A99ZYUoFuh82V5OuB2ndtE9yU
         p7fm3oTj7TxSXPlI3BZw2BrQ7ez1r2XVh1xhe+jNApDpP8q9kld3qF3CaNY0UBbzY0oa
         LghA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=z+RvebV1;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id p16-20020a05620a113000b0078a256a1894si304694qkk.1.2024.03.24.16.56.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:33 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhN-0000000Dzpm-4Ap8;
	Sun, 24 Mar 2024 23:56:23 +0000
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
Subject: [PATCH 20/23] libata: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:45 +0800
Message-Id: <20240324235448.2039074-21-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=z+RvebV1;
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

Switch to the ->device_configure method instead of ->slave_configure
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/ata/ahci.h                     |  2 +-
 drivers/ata/libata-sata.c              | 10 ++++++----
 drivers/ata/libata-scsi.c              | 19 +++++++++++--------
 drivers/ata/libata.h                   |  3 ++-
 drivers/ata/pata_macio.c               |  2 +-
 drivers/ata/sata_mv.c                  |  2 +-
 drivers/ata/sata_nv.c                  |  4 ++--
 drivers/ata/sata_sil24.c               |  2 +-
 drivers/scsi/aic94xx/aic94xx_init.c    |  2 +-
 drivers/scsi/hisi_sas/hisi_sas.h       |  3 ++-
 drivers/scsi/hisi_sas/hisi_sas_main.c  |  7 ++++---
 drivers/scsi/hisi_sas/hisi_sas_v1_hw.c |  2 +-
 drivers/scsi/hisi_sas/hisi_sas_v2_hw.c |  2 +-
 drivers/scsi/hisi_sas/hisi_sas_v3_hw.c |  7 ++++---
 drivers/scsi/isci/init.c               |  2 +-
 drivers/scsi/libsas/sas_scsi_host.c    |  7 ++++---
 drivers/scsi/mvsas/mv_init.c           |  2 +-
 drivers/scsi/pm8001/pm8001_init.c      |  2 +-
 include/linux/libata.h                 | 10 ++++++----
 include/scsi/libsas.h                  |  3 ++-
 20 files changed, 53 insertions(+), 40 deletions(-)

diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 344c87210d8fe4..8f40f75ba08cff 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -397,7 +397,7 @@ extern const struct attribute_group *ahci_sdev_groups[];
 	.sdev_groups		= ahci_sdev_groups,			\
 	.change_queue_depth     = ata_scsi_change_queue_depth,		\
 	.tag_alloc_policy       = BLK_TAG_ALLOC_RR,             	\
-	.slave_configure        = ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 
 extern struct ata_port_operations ahci_ops;
 extern struct ata_port_operations ahci_platform_ops;
diff --git a/drivers/ata/libata-sata.c b/drivers/ata/libata-sata.c
index 0fb1934875f208..98780d3b2f1c1a 100644
--- a/drivers/ata/libata-sata.c
+++ b/drivers/ata/libata-sata.c
@@ -1170,21 +1170,23 @@ void ata_sas_tport_delete(struct ata_port *ap)
 EXPORT_SYMBOL_GPL(ata_sas_tport_delete);
 
 /**
- *	ata_sas_slave_configure - Default slave_config routine for libata devices
+ *	ata_sas_device_configure - Default slave_config routine for libata devices
  *	@sdev: SCSI device to configure
+ *	@lim: queue limits
  *	@ap: ATA port to which SCSI device is attached
  *
  *	RETURNS:
  *	Zero.
  */
 
-int ata_sas_slave_configure(struct scsi_device *sdev, struct ata_port *ap)
+int ata_sas_device_configure(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_port *ap)
 {
 	ata_scsi_sdev_config(sdev);
 
-	return ata_scsi_dev_config(sdev, ap->link.device);
+	return ata_scsi_dev_config(sdev, lim, ap->link.device);
 }
-EXPORT_SYMBOL_GPL(ata_sas_slave_configure);
+EXPORT_SYMBOL_GPL(ata_sas_device_configure);
 
 /**
  *	ata_sas_queuecmd - Issue SCSI cdb to libata-managed device
diff --git a/drivers/ata/libata-scsi.c b/drivers/ata/libata-scsi.c
index 0a0f483124c3a5..db441815d63306 100644
--- a/drivers/ata/libata-scsi.c
+++ b/drivers/ata/libata-scsi.c
@@ -1021,7 +1021,8 @@ bool ata_scsi_dma_need_drain(struct request *rq)
 }
 EXPORT_SYMBOL_GPL(ata_scsi_dma_need_drain);
 
-int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
+int ata_scsi_dev_config(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_device *dev)
 {
 	struct request_queue *q = sdev->request_queue;
 	int depth = 1;
@@ -1031,7 +1032,7 @@ int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
 
 	/* configure max sectors */
 	dev->max_sectors = min(dev->max_sectors, sdev->host->max_sectors);
-	blk_queue_max_hw_sectors(q, dev->max_sectors);
+	lim->max_hw_sectors = dev->max_sectors;
 
 	if (dev->class == ATA_DEV_ATAPI) {
 		sdev->sector_size = ATA_SECT_SIZE;
@@ -1040,7 +1041,7 @@ int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
 		blk_queue_update_dma_pad(q, ATA_DMA_PAD_SZ - 1);
 
 		/* make room for appending the drain */
-		blk_queue_max_segments(q, queue_max_segments(q) - 1);
+		lim->max_segments--;
 
 		sdev->dma_drain_len = ATAPI_MAX_DRAIN;
 		sdev->dma_drain_buf = kmalloc(sdev->dma_drain_len, GFP_NOIO);
@@ -1077,7 +1078,7 @@ int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev)
 			"sector_size=%u > PAGE_SIZE, PIO may malfunction\n",
 			sdev->sector_size);
 
-	blk_queue_update_dma_alignment(q, sdev->sector_size - 1);
+	lim->dma_alignment = sdev->sector_size - 1;
 
 	if (dev->flags & ATA_DFLAG_AN)
 		set_bit(SDEV_EVT_MEDIA_CHANGE, sdev->supported_events);
@@ -1131,8 +1132,9 @@ int ata_scsi_slave_alloc(struct scsi_device *sdev)
 EXPORT_SYMBOL_GPL(ata_scsi_slave_alloc);
 
 /**
- *	ata_scsi_slave_config - Set SCSI device attributes
+ *	ata_scsi_device_configure - Set SCSI device attributes
  *	@sdev: SCSI device to examine
+ *	@lim: queue limits
  *
  *	This is called before we actually start reading
  *	and writing to the device, to configure certain
@@ -1142,17 +1144,18 @@ EXPORT_SYMBOL_GPL(ata_scsi_slave_alloc);
  *	Defined by SCSI layer.  We don't really care.
  */
 
-int ata_scsi_slave_config(struct scsi_device *sdev)
+int ata_scsi_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct ata_device *dev = __ata_scsi_find_dev(ap, sdev);
 
 	if (dev)
-		return ata_scsi_dev_config(sdev, dev);
+		return ata_scsi_dev_config(sdev, lim, dev);
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(ata_scsi_slave_config);
+EXPORT_SYMBOL_GPL(ata_scsi_device_configure);
 
 /**
  *	ata_scsi_slave_destroy - SCSI device is about to be destroyed
diff --git a/drivers/ata/libata.h b/drivers/ata/libata.h
index 5c685bb1939e68..8aab0df549eacd 100644
--- a/drivers/ata/libata.h
+++ b/drivers/ata/libata.h
@@ -131,7 +131,8 @@ extern void ata_scsi_dev_rescan(struct work_struct *work);
 extern int ata_scsi_user_scan(struct Scsi_Host *shost, unsigned int channel,
 			      unsigned int id, u64 lun);
 void ata_scsi_sdev_config(struct scsi_device *sdev);
-int ata_scsi_dev_config(struct scsi_device *sdev, struct ata_device *dev);
+int ata_scsi_dev_config(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_device *dev);
 int __ata_scsi_queuecmd(struct scsi_cmnd *scmd, struct ata_device *dev);
 
 /* libata-eh.c */
diff --git a/drivers/ata/pata_macio.c b/drivers/ata/pata_macio.c
index f046bfa5c6e7f6..3dbcd737ebb792 100644
--- a/drivers/ata/pata_macio.c
+++ b/drivers/ata/pata_macio.c
@@ -806,7 +806,7 @@ static int pata_macio_device_configure(struct scsi_device *sdev,
 	int rc;
 
 	/* First call original */
-	rc = ata_scsi_slave_config(sdev);
+	rc = ata_scsi_device_configure(sdev, lim);
 	if (rc)
 		return rc;
 
diff --git a/drivers/ata/sata_mv.c b/drivers/ata/sata_mv.c
index e82786c63fbd73..0bb900869ee08c 100644
--- a/drivers/ata/sata_mv.c
+++ b/drivers/ata/sata_mv.c
@@ -673,7 +673,7 @@ static const struct scsi_host_template mv6_sht = {
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth	= ata_scsi_change_queue_depth,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 };
 
 static struct ata_port_operations mv5_ops = {
diff --git a/drivers/ata/sata_nv.c b/drivers/ata/sata_nv.c
index d0a8eb0e8011d0..36d99043ef50ff 100644
--- a/drivers/ata/sata_nv.c
+++ b/drivers/ata/sata_nv.c
@@ -676,7 +676,7 @@ static int nv_adma_device_configure(struct scsi_device *sdev,
 	int adma_enable;
 	u32 current_reg, new_reg, config_mask;
 
-	rc = ata_scsi_slave_config(sdev);
+	rc = ata_scsi_device_configure(sdev, lim);
 
 	if (sdev->id >= ATA_MAX_DEVICES || sdev->channel || sdev->lun)
 		/* Not a proper libata device, ignore */
@@ -1882,7 +1882,7 @@ static int nv_swncq_device_configure(struct scsi_device *sdev,
 	u8 check_maxtor = 0;
 	unsigned char model_num[ATA_ID_PROD_LEN + 1];
 
-	rc = ata_scsi_slave_config(sdev);
+	rc = ata_scsi_device_configure(sdev, lim);
 	if (sdev->id >= ATA_MAX_DEVICES || sdev->channel || sdev->lun)
 		/* Not a proper libata device, ignore */
 		return rc;
diff --git a/drivers/ata/sata_sil24.c b/drivers/ata/sata_sil24.c
index 142e70bfc4982c..72c03cbdaff43b 100644
--- a/drivers/ata/sata_sil24.c
+++ b/drivers/ata/sata_sil24.c
@@ -381,7 +381,7 @@ static const struct scsi_host_template sil24_sht = {
 	.tag_alloc_policy	= BLK_TAG_ALLOC_FIFO,
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth	= ata_scsi_change_queue_depth,
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 };
 
 static struct ata_port_operations sil24_ops = {
diff --git a/drivers/scsi/aic94xx/aic94xx_init.c b/drivers/scsi/aic94xx/aic94xx_init.c
index 8a3340d8d7ad41..575c60f5391d59 100644
--- a/drivers/scsi/aic94xx/aic94xx_init.c
+++ b/drivers/scsi/aic94xx/aic94xx_init.c
@@ -42,7 +42,7 @@ static const struct scsi_host_template aic94xx_sht = {
 	.queuecommand		= sas_queuecommand,
 	.dma_need_drain		= ata_scsi_dma_need_drain,
 	.target_alloc		= sas_target_alloc,
-	.slave_configure	= sas_slave_configure,
+	.device_configure	= sas_device_configure,
 	.scan_finished		= asd_scan_finished,
 	.scan_start		= asd_scan_start,
 	.change_queue_depth	= sas_change_queue_depth,
diff --git a/drivers/scsi/hisi_sas/hisi_sas.h b/drivers/scsi/hisi_sas/hisi_sas.h
index 1e4550156b735d..d223f482488fc6 100644
--- a/drivers/scsi/hisi_sas/hisi_sas.h
+++ b/drivers/scsi/hisi_sas/hisi_sas.h
@@ -643,7 +643,8 @@ extern int hisi_sas_probe(struct platform_device *pdev,
 			  const struct hisi_sas_hw *ops);
 extern void hisi_sas_remove(struct platform_device *pdev);
 
-extern int hisi_sas_slave_configure(struct scsi_device *sdev);
+int hisi_sas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 extern int hisi_sas_slave_alloc(struct scsi_device *sdev);
 extern int hisi_sas_scan_finished(struct Scsi_Host *shost, unsigned long time);
 extern void hisi_sas_scan_start(struct Scsi_Host *shost);
diff --git a/drivers/scsi/hisi_sas/hisi_sas_main.c b/drivers/scsi/hisi_sas/hisi_sas_main.c
index 097dfe4b620dce..11228ba51ded74 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_main.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_main.c
@@ -868,10 +868,11 @@ static int hisi_sas_dev_found(struct domain_device *device)
 	return rc;
 }
 
-int hisi_sas_slave_configure(struct scsi_device *sdev)
+int hisi_sas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct domain_device *dev = sdev_to_domain_dev(sdev);
-	int ret = sas_slave_configure(sdev);
+	int ret = sas_device_configure(sdev, lim);
 
 	if (ret)
 		return ret;
@@ -880,7 +881,7 @@ int hisi_sas_slave_configure(struct scsi_device *sdev)
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(hisi_sas_slave_configure);
+EXPORT_SYMBOL_GPL(hisi_sas_device_configure);
 
 void hisi_sas_scan_start(struct Scsi_Host *shost)
 {
diff --git a/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c b/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c
index 3c555579f9a1cf..5eb03bffcdedf2 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_v1_hw.c
@@ -1741,7 +1741,7 @@ static const struct scsi_host_template sht_v1_hw = {
 	.queuecommand		= sas_queuecommand,
 	.dma_need_drain		= ata_scsi_dma_need_drain,
 	.target_alloc		= sas_target_alloc,
-	.slave_configure	= hisi_sas_slave_configure,
+	.device_configure	= hisi_sas_device_configure,
 	.scan_finished		= hisi_sas_scan_finished,
 	.scan_start		= hisi_sas_scan_start,
 	.change_queue_depth	= sas_change_queue_depth,
diff --git a/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c b/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c
index 73b378837da7bd..b4d91577a050a0 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_v2_hw.c
@@ -3568,7 +3568,7 @@ static const struct scsi_host_template sht_v2_hw = {
 	.queuecommand		= sas_queuecommand,
 	.dma_need_drain		= ata_scsi_dma_need_drain,
 	.target_alloc		= sas_target_alloc,
-	.slave_configure	= hisi_sas_slave_configure,
+	.device_configure	= hisi_sas_device_configure,
 	.scan_finished		= hisi_sas_scan_finished,
 	.scan_start		= hisi_sas_scan_start,
 	.change_queue_depth	= sas_change_queue_depth,
diff --git a/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c b/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c
index 7d2a33514538c2..d5950686939cba 100644
--- a/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c
+++ b/drivers/scsi/hisi_sas/hisi_sas_v3_hw.c
@@ -2894,11 +2894,12 @@ static ssize_t iopoll_q_cnt_v3_hw_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(iopoll_q_cnt_v3_hw);
 
-static int slave_configure_v3_hw(struct scsi_device *sdev)
+static int device_configure_v3_hw(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct Scsi_Host *shost = dev_to_shost(&sdev->sdev_gendev);
 	struct hisi_hba *hisi_hba = shost_priv(shost);
-	int ret = hisi_sas_slave_configure(sdev);
+	int ret = hisi_sas_device_configure(sdev, lim);
 	struct device *dev = hisi_hba->dev;
 
 	if (ret)
@@ -3321,7 +3322,7 @@ static const struct scsi_host_template sht_v3_hw = {
 	.queuecommand		= sas_queuecommand,
 	.dma_need_drain		= ata_scsi_dma_need_drain,
 	.target_alloc		= sas_target_alloc,
-	.slave_configure	= slave_configure_v3_hw,
+	.device_configure	= device_configure_v3_hw,
 	.scan_finished		= hisi_sas_scan_finished,
 	.scan_start		= hisi_sas_scan_start,
 	.map_queues		= hisi_sas_map_queues,
diff --git a/drivers/scsi/isci/init.c b/drivers/scsi/isci/init.c
index c582a3932ceab7..109deff007e612 100644
--- a/drivers/scsi/isci/init.c
+++ b/drivers/scsi/isci/init.c
@@ -157,7 +157,7 @@ static const struct scsi_host_template isci_sht = {
 	.queuecommand			= sas_queuecommand,
 	.dma_need_drain			= ata_scsi_dma_need_drain,
 	.target_alloc			= sas_target_alloc,
-	.slave_configure		= sas_slave_configure,
+	.device_configure		= sas_device_configure,
 	.scan_finished			= isci_host_scan_finished,
 	.scan_start			= isci_host_start,
 	.change_queue_depth		= sas_change_queue_depth,
diff --git a/drivers/scsi/libsas/sas_scsi_host.c b/drivers/scsi/libsas/sas_scsi_host.c
index 9047cfcd1072ec..da11d32840e272 100644
--- a/drivers/scsi/libsas/sas_scsi_host.c
+++ b/drivers/scsi/libsas/sas_scsi_host.c
@@ -804,14 +804,15 @@ EXPORT_SYMBOL_GPL(sas_target_alloc);
 
 #define SAS_DEF_QD 256
 
-int sas_slave_configure(struct scsi_device *scsi_dev)
+int sas_device_configure(struct scsi_device *scsi_dev,
+		struct queue_limits *lim)
 {
 	struct domain_device *dev = sdev_to_domain_dev(scsi_dev);
 
 	BUG_ON(dev->rphy->identify.device_type != SAS_END_DEVICE);
 
 	if (dev_is_sata(dev)) {
-		ata_sas_slave_configure(scsi_dev, dev->sata_dev.ap);
+		ata_sas_device_configure(scsi_dev, lim, dev->sata_dev.ap);
 		return 0;
 	}
 
@@ -829,7 +830,7 @@ int sas_slave_configure(struct scsi_device *scsi_dev)
 
 	return 0;
 }
-EXPORT_SYMBOL_GPL(sas_slave_configure);
+EXPORT_SYMBOL_GPL(sas_device_configure);
 
 int sas_change_queue_depth(struct scsi_device *sdev, int depth)
 {
diff --git a/drivers/scsi/mvsas/mv_init.c b/drivers/scsi/mvsas/mv_init.c
index 43ebb331e21673..2ed3e19f19e343 100644
--- a/drivers/scsi/mvsas/mv_init.c
+++ b/drivers/scsi/mvsas/mv_init.c
@@ -35,7 +35,7 @@ static const struct scsi_host_template mvs_sht = {
 	.queuecommand		= sas_queuecommand,
 	.dma_need_drain		= ata_scsi_dma_need_drain,
 	.target_alloc		= sas_target_alloc,
-	.slave_configure	= sas_slave_configure,
+	.device_configure	= sas_device_configure,
 	.scan_finished		= mvs_scan_finished,
 	.scan_start		= mvs_scan_start,
 	.change_queue_depth	= sas_change_queue_depth,
diff --git a/drivers/scsi/pm8001/pm8001_init.c b/drivers/scsi/pm8001/pm8001_init.c
index ed6b7d954dda87..5c17d5dd62eaf5 100644
--- a/drivers/scsi/pm8001/pm8001_init.c
+++ b/drivers/scsi/pm8001/pm8001_init.c
@@ -116,7 +116,7 @@ static const struct scsi_host_template pm8001_sht = {
 	.queuecommand		= sas_queuecommand,
 	.dma_need_drain		= ata_scsi_dma_need_drain,
 	.target_alloc		= sas_target_alloc,
-	.slave_configure	= sas_slave_configure,
+	.device_configure	= sas_device_configure,
 	.scan_finished		= pm8001_scan_finished,
 	.scan_start		= pm8001_scan_start,
 	.change_queue_depth	= sas_change_queue_depth,
diff --git a/include/linux/libata.h b/include/linux/libata.h
index 26d68115afb826..3d1f30f2dd82b8 100644
--- a/include/linux/libata.h
+++ b/include/linux/libata.h
@@ -1151,7 +1151,8 @@ extern int ata_std_bios_param(struct scsi_device *sdev,
 			      sector_t capacity, int geom[]);
 extern void ata_scsi_unlock_native_capacity(struct scsi_device *sdev);
 extern int ata_scsi_slave_alloc(struct scsi_device *sdev);
-extern int ata_scsi_slave_config(struct scsi_device *sdev);
+int ata_scsi_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 extern void ata_scsi_slave_destroy(struct scsi_device *sdev);
 extern int ata_scsi_change_queue_depth(struct scsi_device *sdev,
 				       int queue_depth);
@@ -1243,7 +1244,8 @@ extern struct ata_port *ata_sas_port_alloc(struct ata_host *,
 extern void ata_port_probe(struct ata_port *ap);
 extern int ata_sas_tport_add(struct device *parent, struct ata_port *ap);
 extern void ata_sas_tport_delete(struct ata_port *ap);
-extern int ata_sas_slave_configure(struct scsi_device *, struct ata_port *);
+int ata_sas_device_configure(struct scsi_device *sdev, struct queue_limits *lim,
+		struct ata_port *ap);
 extern int ata_sas_queuecmd(struct scsi_cmnd *cmd, struct ata_port *ap);
 extern void ata_tf_to_fis(const struct ata_taskfile *tf,
 			  u8 pmp, int is_cmd, u8 *fis);
@@ -1409,13 +1411,13 @@ extern const struct attribute_group *ata_common_sdev_groups[];
 	__ATA_BASE_SHT(drv_name),				\
 	.can_queue		= ATA_DEF_QUEUE,		\
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,		\
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 
 #define ATA_SUBBASE_SHT_QD(drv_name, drv_qd)			\
 	__ATA_BASE_SHT(drv_name),				\
 	.can_queue		= drv_qd,			\
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,		\
-	.slave_configure	= ata_scsi_slave_config
+	.device_configure	= ata_scsi_device_configure
 
 #define ATA_BASE_SHT(drv_name)					\
 	ATA_SUBBASE_SHT(drv_name),				\
diff --git a/include/scsi/libsas.h b/include/scsi/libsas.h
index f5257103fdb6d8..82ba313b06d753 100644
--- a/include/scsi/libsas.h
+++ b/include/scsi/libsas.h
@@ -683,7 +683,8 @@ int sas_phy_reset(struct sas_phy *phy, int hard_reset);
 int sas_phy_enable(struct sas_phy *phy, int enable);
 extern int sas_queuecommand(struct Scsi_Host *, struct scsi_cmnd *);
 extern int sas_target_alloc(struct scsi_target *);
-extern int sas_slave_configure(struct scsi_device *);
+int sas_device_configure(struct scsi_device *dev,
+		struct queue_limits *lim);
 extern int sas_change_queue_depth(struct scsi_device *, int new_depth);
 extern int sas_bios_param(struct scsi_device *, struct block_device *,
 			  sector_t capacity, int *hsc);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-21-hch%40lst.de.
