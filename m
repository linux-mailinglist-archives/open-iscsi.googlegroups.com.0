Return-Path: <open-iscsi+bncBDUNBGN3R4KRBNP3QKYAMGQEYPLWFPI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4678882E9
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:39 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id 006d021491bc7-5a05537c0b3sf2873063eaf.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324598; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hv9atlq0ywSW96FebhWUS8IX5mlYQCorHsANa+n9xc7HapJxK7QGFovZXV0S/FCJ+9
         zDd13ZSxp8wRTTrrCebReAkw73IeIhf8FP+U84XhSS74VBD36aOL1lIVmmBpxIgFlkFU
         qR+dxhKAm9wyWx1RVJ+smHZu1Cfoj30Fv6gQFyIR5MYtmI50GONBFXPttmK8UyIFWAkr
         v9Iw1e2ESL+DbTkoGiNPbR90nH/7fiDSfOEhsGr3I1G9eL002fHI4vywvy7oJ+xIUk3h
         Uk4JphiVIOP2uLregVk1O8XaYAV/KsTFKprZbdbMshxSUiJ7t7KUhKmNzFxNCNp6wYNN
         T4Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=hS5hbV/q+iPNtj5O7iOwNHQ1gh1GJIlbz5VK1+5Zsco=;
        fh=lG5DEf3K9qz/klz/2S1pXkD8SmsiDnxhPGgOWndtV98=;
        b=nbyIxGEHKh10b7GMLTT633iO6rmKalAM4ygQTMk6adlzrVih36jw5gMa76V8Jqndpy
         fzY4K8HOc4ARLUBBfSwo44RHutJdYqhY2aZMR/MS2M8Z3peKbKm6J+iyIQDZUYM95SVo
         kpuj3HVroV96LIB8X6A8xJRPYmBAY0w81GSZTJIEtZOXn9A7OyqfJgimaGTgBf7ptHNP
         7mjwKzswrXHoYhnl87bqM/hjp058VPxj6oVNRTQVmCViRRUiagSxkcjmyX4J2dtEM0Uj
         y3VVURdYRLHPTHsvAknkw32cDIKDXsvMgQjM3uKV11lJoZ85xoLpA+kY9o1eci7kBnJg
         SYIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=zVvRoNPl;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324598; x=1711929398; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hS5hbV/q+iPNtj5O7iOwNHQ1gh1GJIlbz5VK1+5Zsco=;
        b=PpSH0120wbEAfHFfiiyr/62EEWM+DM/zuU4ic+mAePbMa0aFhfCLXGYiZPK6HNFqJi
         b4S/TS/Ru9quzjyNrZzYm8zuOcFqB1tgL4ITbj1KqTD2b7WGtTZGVHxZsdgZ+srjiNJO
         HaFRxafvsofkGuyE+kIWdzpWDZo668fFbNKgemGbRYLzjUiuyzD8iXaylpBAUIhks9IT
         Ea35QeHH8PKR8NfiSVLpSAckeWfiKo2eEq6L7ong8ee+/BmNXPdnK4GcqkHETryN2OA1
         XZhgMYFkMvGWpufdaNOyKV9FU1uOgbn8EoBEsTEfTPvu8ZwZrldJU46c9CilbTFJYAho
         TrTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324598; x=1711929398;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hS5hbV/q+iPNtj5O7iOwNHQ1gh1GJIlbz5VK1+5Zsco=;
        b=RNGLa0vibYSQt/ftYXxhSgxAn53o0TIY4nSAK4Sjbb1lCH3ds3Zu0LhJeT1IYfLUMj
         W2HRZpbABAJRAZpTOv5tPhWcL6E12Sf501XYWHk6jbFVakVe1i1kqSk0E3uilHKaEB0O
         1hDUKnP4PjXGUh38djgAOfT4epeejAnkdZVcJlgXpnfCVfGZmW/51ZGsifVi+/VLW/7q
         Ysh1/+BtZ/VYTitR6YH8nS9Xzlts/ozEug1W1fyVsXjI4YKH7nFIuIyimspHsVql9GJW
         dERoUwW+MGumUuokulYj4MwIA9OisIGZYfXSlrHvMCgxi+w2Kd+OpLEAeN9tSW6X8/kT
         NELA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUscd8l2iLUDSxoUy+9bg5R7VFSj07zpD+G1StbQMm4huDrCMj3h6RFitVXZahHTkp9RjzAg2daGGTYTpk4Qy73h/6qCuL2bbg=
X-Gm-Message-State: AOJu0YylBp0faaERPm5DOPNFpT9bw2I3oXgmhguCrB4RsNbCoeXXvK0I
	vfuGd/bWhBtKlzkQ58+g0MKSotCp0V8SVucZoiooUQqsmNv6c+Oa
X-Google-Smtp-Source: AGHT+IHPB/imEGBcEqJleFiUSr0R6BKnt2U1orMxRF2IbjZD6n1RtEdywiAeAuXeuazwTh81FfWMAQ==
X-Received: by 2002:a05:6820:1b13:b0:5a5:27ab:189d with SMTP id bv19-20020a0568201b1300b005a527ab189dmr5213824oob.6.1711324598241;
        Sun, 24 Mar 2024 16:56:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:5502:0:b0:5a0:3387:2adb with SMTP id e2-20020a4a5502000000b005a033872adbls2411310oob.2.-pod-prod-05-us;
 Sun, 24 Mar 2024 16:56:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUTP6Nligke0GSrRJ32mDrElC1JMXvGCUWmeC+OvJkQu/8t35G20JnpSgixPieFW9ef76mk48m1w07gFtTq0Jy6Gy3U4+vpS083CFY=
X-Received: by 2002:a05:6830:1e61:b0:6e6:b105:1288 with SMTP id m1-20020a0568301e6100b006e6b1051288mr6493105otr.38.1711324596277;
        Sun, 24 Mar 2024 16:56:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324596; cv=none;
        d=google.com; s=arc-20160816;
        b=EbfaKvxezqTiz6/UpbB7ntWFsM+cjEvjnphETJLkBcdw6tNAogAh7w+C/9GNk92OqZ
         b3WDqTBkKtEtgrxbEFj7S1puvW85C305IlGYPO1Eze9C2V8ZI2d/f+apmgoEZZkMGZIL
         P/+8/clAGryyqp63MHsAZLlFvvxsvfO2QbXhZOp4wZb5HQ9j7xljq9wnlWKHn8Jy8ndQ
         ELxluhuOFTUhmrymNdMrM9vdqu3SlIlxIIKaMA7fO6Uf75IaV7HV5TwrrDAb1p1/+jzd
         WdUphISFD2fwv47mn/ztPBWxFvh+50R2itYfJ35sB9dXZ3IkygjL4oHD0C1rNbYMapYt
         PTfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6Vypia/n0elZ0ADslF2SARtwDYy85/m1cdDXOopX7zM=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=mg0nYXE02M8DImSmUOyyo+biVTT29+pfK/AUGWzyh34bVdpP/nFM2bv2ilpBxo38vA
         4eBjtxAunv2PiyQPyL6+Jh7Yk/xE8R0a5Ofpx9OdYj6omyMjFa3nE7anyifBQzf5c/qQ
         CMykwrtfeasCAVD1LJ9uYyn5d75JKXG61/QQG0llbD0/fb6D+2kkvKdfLJ15SGpMy1Ox
         w5EYrwomxILIgy8NW7ZmlRxPZMG94G9uLlDRPH+aw64lGihUUL521mcWMstzScUDr2a0
         m/Bxwb/pK7FJI18V97psFqux2iRH5QaRuo/UobeCyswnKb9pkAR7FZvDuUXoY8KUGTad
         5Yxg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=zVvRoNPl;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id j13-20020a9d738d000000b006e6bc2485d9si332568otk.3.2024.03.24.16.56.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:36 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhS-0000000Dzqm-0tl9;
	Sun, 24 Mar 2024 23:56:26 +0000
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
Subject: [PATCH 21/23] mpi3mr: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:46 +0800
Message-Id: <20240324235448.2039074-22-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=zVvRoNPl;
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

Note that mpi3mr also updates the limits from an event handler that
iterates all SCSI devices.  This is also updated to use the
queue_limits, but the complete locking of this path probably means
it already is completely broken and needs a proper audit.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/mpi3mr/mpi3mr.h    |  1 -
 drivers/scsi/mpi3mr/mpi3mr_os.c | 76 ++++++++++++++-------------------
 2 files changed, 31 insertions(+), 46 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr.h b/drivers/scsi/mpi3mr/mpi3mr.h
index 3de1ee05c44e4c..565d6047f68cb8 100644
--- a/drivers/scsi/mpi3mr/mpi3mr.h
+++ b/drivers/scsi/mpi3mr/mpi3mr.h
@@ -1348,7 +1348,6 @@ void mpi3mr_wait_for_host_io(struct mpi3mr_ioc *mrioc, u32 timeout);
 void mpi3mr_cleanup_fwevt_list(struct mpi3mr_ioc *mrioc);
 void mpi3mr_flush_host_io(struct mpi3mr_ioc *mrioc);
 void mpi3mr_invalidate_devhandles(struct mpi3mr_ioc *mrioc);
-void mpi3mr_rfresh_tgtdevs(struct mpi3mr_ioc *mrioc);
 void mpi3mr_flush_delayed_cmd_lists(struct mpi3mr_ioc *mrioc);
 void mpi3mr_check_rh_fault_ioc(struct mpi3mr_ioc *mrioc, u32 reason_code);
 void mpi3mr_print_fault_info(struct mpi3mr_ioc *mrioc);
diff --git a/drivers/scsi/mpi3mr/mpi3mr_os.c b/drivers/scsi/mpi3mr/mpi3mr_os.c
index 73c831a97d276a..de3e02446c6814 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_os.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_os.c
@@ -986,6 +986,25 @@ static int mpi3mr_change_queue_depth(struct scsi_device *sdev,
 	return retval;
 }
 
+static void mpi3mr_configure_nvme_dev(struct mpi3mr_tgt_dev *tgt_dev,
+		struct queue_limits *lim)
+{
+	u8 pgsz = tgt_dev->dev_spec.pcie_inf.pgsz ? : MPI3MR_DEFAULT_PGSZEXP;
+
+	lim->max_hw_sectors = tgt_dev->dev_spec.pcie_inf.mdts / 512;
+	lim->virt_boundary_mask = (1 << pgsz) - 1;
+}
+
+static void mpi3mr_configure_tgt_dev(struct mpi3mr_tgt_dev *tgt_dev,
+		struct queue_limits *lim)
+{
+	if (tgt_dev->dev_type == MPI3_DEVICE_DEVFORM_PCIE &&
+	    (tgt_dev->dev_spec.pcie_inf.dev_info &
+	     MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
+			MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE)
+		mpi3mr_configure_nvme_dev(tgt_dev, lim);
+}
+
 /**
  * mpi3mr_update_sdev - Update SCSI device information
  * @sdev: SCSI device reference
@@ -1001,31 +1020,17 @@ static void
 mpi3mr_update_sdev(struct scsi_device *sdev, void *data)
 {
 	struct mpi3mr_tgt_dev *tgtdev;
+	struct queue_limits lim;
 
 	tgtdev = (struct mpi3mr_tgt_dev *)data;
 	if (!tgtdev)
 		return;
 
 	mpi3mr_change_queue_depth(sdev, tgtdev->q_depth);
-	switch (tgtdev->dev_type) {
-	case MPI3_DEVICE_DEVFORM_PCIE:
-		/*The block layer hw sector size = 512*/
-		if ((tgtdev->dev_spec.pcie_inf.dev_info &
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-			    tgtdev->dev_spec.pcie_inf.mdts / 512);
-			if (tgtdev->dev_spec.pcie_inf.pgsz == 0)
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
-			else
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << tgtdev->dev_spec.pcie_inf.pgsz) - 1));
-		}
-		break;
-	default:
-		break;
-	}
+
+	lim = queue_limits_start_update(sdev->request_queue);
+	mpi3mr_configure_tgt_dev(tgtdev, &lim);
+	WARN_ON_ONCE(queue_limits_commit_update(sdev->request_queue, &lim));
 }
 
 /**
@@ -1038,8 +1043,7 @@ mpi3mr_update_sdev(struct scsi_device *sdev, void *data)
  *
  * Return: Nothing.
  */
-
-void mpi3mr_rfresh_tgtdevs(struct mpi3mr_ioc *mrioc)
+static void mpi3mr_rfresh_tgtdevs(struct mpi3mr_ioc *mrioc)
 {
 	struct mpi3mr_tgt_dev *tgtdev, *tgtdev_next;
 	struct mpi3mr_stgt_priv_data *tgt_priv;
@@ -4393,15 +4397,17 @@ static void mpi3mr_target_destroy(struct scsi_target *starget)
 }
 
 /**
- * mpi3mr_slave_configure - Slave configure callback handler
+ * mpi3mr_device_configure - Slave configure callback handler
  * @sdev: SCSI device reference
+ * @lim: queue limits
  *
  * Configure queue depth, max hardware sectors and virt boundary
  * as required
  *
  * Return: 0 always.
  */
-static int mpi3mr_slave_configure(struct scsi_device *sdev)
+static int mpi3mr_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct scsi_target *starget;
 	struct Scsi_Host *shost;
@@ -4432,28 +4438,8 @@ static int mpi3mr_slave_configure(struct scsi_device *sdev)
 	sdev->eh_timeout = MPI3MR_EH_SCMD_TIMEOUT;
 	blk_queue_rq_timeout(sdev->request_queue, MPI3MR_SCMD_TIMEOUT);
 
-	switch (tgt_dev->dev_type) {
-	case MPI3_DEVICE_DEVFORM_PCIE:
-		/*The block layer hw sector size = 512*/
-		if ((tgt_dev->dev_spec.pcie_inf.dev_info &
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_MASK) ==
-		    MPI3_DEVICE0_PCIE_DEVICE_INFO_TYPE_NVME_DEVICE) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-			    tgt_dev->dev_spec.pcie_inf.mdts / 512);
-			if (tgt_dev->dev_spec.pcie_inf.pgsz == 0)
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << MPI3MR_DEFAULT_PGSZEXP) - 1));
-			else
-				blk_queue_virt_boundary(sdev->request_queue,
-				    ((1 << tgt_dev->dev_spec.pcie_inf.pgsz) - 1));
-		}
-		break;
-	default:
-		break;
-	}
-
+	mpi3mr_configure_tgt_dev(tgt_dev, lim);
 	mpi3mr_tgtdev_put(tgt_dev);
-
 	return retval;
 }
 
@@ -4921,7 +4907,7 @@ static const struct scsi_host_template mpi3mr_driver_template = {
 	.queuecommand			= mpi3mr_qcmd,
 	.target_alloc			= mpi3mr_target_alloc,
 	.slave_alloc			= mpi3mr_slave_alloc,
-	.slave_configure		= mpi3mr_slave_configure,
+	.device_configure		= mpi3mr_device_configure,
 	.target_destroy			= mpi3mr_target_destroy,
 	.slave_destroy			= mpi3mr_slave_destroy,
 	.scan_finished			= mpi3mr_scan_finished,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-22-hch%40lst.de.
