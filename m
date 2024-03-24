Return-Path: <open-iscsi+bncBDUNBGN3R4KRBDH3QKYAMGQECXPXXBQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C27FB8882CE
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:58 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id e9e14a558f8ab-3685206dacbsf37899285ab.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324557; cv=pass;
        d=google.com; s=arc-20160816;
        b=auoACRPeMPLjLeQJt0BR6pmbVCDV4jz+B20bMdAqrebJvZO39Yyqv6WgPufGeHsOZo
         hiff6sYYHVvcV8cyAMHOEDnSkiNuedt/W/CsbS8Q3yty4HeHUS0wo/2JCdjg4SZAyBmq
         RoII4ThMnWhV059cmBjbKiXOMF2LxCISaK0eGcOazl22DMF2TI0MX7wtzjK7j7UOY+bj
         kgn2fBnF7QHjyuCsHq5m6mTY1DjdIn8NPAfY4/AMEy6dgWyWXO3ceEGrKW9zopUzIsrx
         kfybc5OfnWHcozjxmvGDVLRBcoVLkf4C9CLvytJrzDaFDJbaHdZeLnvU4vEDvCqRKD0X
         DGTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=TfNFKj6fhPb8mIUlv7vb9k7lZozBix941BnpGP9St5U=;
        fh=cCubx8TP2v8A6iQKy4v1yN/Omtv+MowfvBEz7ilz5bI=;
        b=kWpQWrUcn6PoG68Uh+EixkwuUv5Xhoa5Qu47/ZHIe+Y+qwYRDC7EQjDCWe8eab6W/A
         9L5L2SnYV/SRLktU7UqsIP0/Yij3tN7NRrsI6+JGu35jnBNCdMBiICfMVpXzI9Nq0VYS
         V9FYAjvW/vs0OzDmDcAGjTUKuUakYb6gJznsEHfwCeiH0of8+RLQvxDlCJJBNseAUYSe
         r6S5hUafDNFyuHzIZe1E9gb5pcOGNysnSxAOCLXoFU+G8fzYMSpaKz7tD0GpWaYlFX1N
         myWKF+dceKv1lSZraXdgXUlSu3Ah8yGiwkQQ5RbP53KQyNHCE4KT7V0s3IWnFtW6Htqr
         t8Bg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EPwKA8vB;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324557; x=1711929357; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TfNFKj6fhPb8mIUlv7vb9k7lZozBix941BnpGP9St5U=;
        b=lnTT7GhCHxZmzsT8hac3iTgOrZUlY1RPDHCjajZ6Y+7UCXYfm2M1DKZ1nGZXzbXGbJ
         1uv6fsV1pG54shwaUo8O3EuICWxphyshOxduUfINSm793VmhNpHz6+jc3N5hrXC3j5PA
         cr0X6dwct2tY3+aCE0S+JeVMp0+BxKb8CufBmfj/6cJdChY0/I/VII2hkGsBT/9eOdTC
         x1IKWPZdtQHBzf3C82135T9168OqYNOGKg0jrimU9RVdIH7Ap8fm/KXB5ltpx7gq3M3r
         8/9hLs7DnN8HjBpIEIxFHzP+RDPRN6lZeMMi5sqW8b8aiidEEJIahb6vUcQb+Ww2eF9F
         +F3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324557; x=1711929357;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfNFKj6fhPb8mIUlv7vb9k7lZozBix941BnpGP9St5U=;
        b=FJS+sQG1YFtaS6Xy+2RsDLHO5L+ulMVhaHrZsyHg9WjbMcGyZnPTgUWhfXTn2qq+za
         V9Msu+WOYsMYieFOuv+LbtZwZKHBt2Uafr1THTWLx7Wzd3+mNHPl3SMh6LwqFCNxeLUn
         KveC9xySjGpLwsK69rzhq8P7JNjq7zv59BhCXgplxgJl37YA/SxvPUp8cOEHqZ8J/8Cc
         X7vowOjGDHrIHdOTSZdaCd1LL3VlDK+uSI/OHeDlXeyDmDMaH37aC5u2U0H4m8aBM9SL
         UpUVFc1uGeKAMYER9lT53KJlFaBcMNKprg05NNBc8PSvVK/yEiUNwDWGHrSPHl25ew/a
         l+wA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVar+yzPhS+2EJTrsJabrnJkOnX8eHdaijZnjXnpNz/DSuWo7si4RQHvb4AMH0gkG9gcCUZ514n6UiUw+BleKcgUnTHa92E4cM=
X-Gm-Message-State: AOJu0YxygGlbhcs1tHVYtwD3Nk66sjZBVLOqd97Jd+yFxl07YyzrbDq4
	rDcfpDBpxEa2aVuazOME3oRrxo24VXdrDFznOYuxVaWHLcnNfmTw
X-Google-Smtp-Source: AGHT+IHMEoqz3Lmvfo7Mz6zRhUMWUR/UgnmAHSH4jeD0IFzajh+9N5htHDCa6YgeHNfsPkqae95c1w==
X-Received: by 2002:a05:6e02:2183:b0:368:5f2b:16c4 with SMTP id j3-20020a056e02218300b003685f2b16c4mr7124711ila.16.1711324557414;
        Sun, 24 Mar 2024 16:55:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1a6a:b0:368:89cc:76db with SMTP id
 w10-20020a056e021a6a00b0036889cc76dbls519000ilv.1.-pod-prod-01-us; Sun, 24
 Mar 2024 16:55:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUpf3/aSHZtnM1AIFu4Po63jLcIf100P39rht4TMHOKzuwJrtKactxYJerq/KX3sXDfmE8H4LTV1xlVlX3HzqTtzLhc+Z/0D83VG74=
X-Received: by 2002:a6b:4414:0:b0:7d0:23a3:3a68 with SMTP id r20-20020a6b4414000000b007d023a33a68mr6342822ioa.11.1711324555560;
        Sun, 24 Mar 2024 16:55:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324555; cv=none;
        d=google.com; s=arc-20160816;
        b=uLIMxk1rhRrXHjzUkwGFYGbBWaI/9Oh06mmF1Xaryj1Pbjxnxv1lxYuJy3H6TEQiBA
         8qLvpZaTubqYweH8/uzqTbX3GAaov73Y1HfMZG6942Wzl82XOgPrAJu9RMk5kcImLQMx
         0LXLsGQIkuzHQNPp1cXea2ePBRXtrjQGHmgsTdt8eTlZAPwwUrRwi3OnvdQ9DtDeBiLy
         6d7Bw81FYHHH25bxvwC8iPPruXIcbgljDmWo9uNqs04UZLfI2ronhDXxmUpWmySxBk4j
         v/Vl4xhc0U4sqec3mRXW69gi9SyRrBvrJrFRmcSvgasTPqYoA6kfIVgkxmTgSaspiiNw
         qevg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qJi5WCtY1yhQ9UxhLc1APOVXudQDNK947ENHC/rdITw=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=pGChfXft3pK4bYDPmFTmVNspB7C1o9VRpFX0GPXTT43waz/vtWFFOxTzFmCAgxLDi3
         H5Au1fxIEBmspjx7CLloEAULiDsnBEupGy4q+/uCQPEffQai+KvToUc5yqE3LzBa5Nx+
         okEB8AIbPmyTYRzA3mcXgnRmb++KUA3mgTVtci3pmK4bbex2/nt25qJvuG9ATtFWOhfD
         +eAMtc1DOkWTfjjsJKtDqvFPp8EaC3an5a/TYPbI7UGBB0sDT8RPnC9beytwrV9g6BTh
         QLKNhGokiWiNeOhi1iUetsDxj7Yd3euDY4rTULXAWD7NxqfxTt+iz59WdGk6cb7YkNdY
         ivTw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EPwKA8vB;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id dp40-20020a0566381ca800b00478070af315si413983jab.3.2024.03.24.16.55.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:55 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgl-0000000DzcT-32yh;
	Sun, 24 Mar 2024 23:55:44 +0000
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
Subject: [PATCH 11/23] megaraid_sas: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:36 +0800
Message-Id: <20240324235448.2039074-12-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=EPwKA8vB;
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
 drivers/scsi/megaraid/megaraid_sas.h        |  2 +-
 drivers/scsi/megaraid/megaraid_sas_base.c   | 29 ++++++++++++---------
 drivers/scsi/megaraid/megaraid_sas_fusion.c |  3 ++-
 3 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas.h b/drivers/scsi/megaraid/megaraid_sas.h
index 56624cbf7fa5e7..5680c6cdb22193 100644
--- a/drivers/scsi/megaraid/megaraid_sas.h
+++ b/drivers/scsi/megaraid/megaraid_sas.h
@@ -2701,7 +2701,7 @@ int megasas_get_ctrl_info(struct megasas_instance *instance);
 int
 megasas_sync_pd_seq_num(struct megasas_instance *instance, bool pend);
 void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
-					   bool is_target_prop);
+		struct queue_limits *lim, bool is_target_prop);
 int megasas_get_target_prop(struct megasas_instance *instance,
 			    struct scsi_device *sdev);
 void megasas_get_snapdump_properties(struct megasas_instance *instance);
diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
index 3d4f13da1ae873..def0d905b6d9e3 100644
--- a/drivers/scsi/megaraid/megaraid_sas_base.c
+++ b/drivers/scsi/megaraid/megaraid_sas_base.c
@@ -1888,7 +1888,7 @@ static struct megasas_instance *megasas_lookup_instance(u16 host_no)
 * Returns void
 */
 void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
-					   bool is_target_prop)
+		struct queue_limits *lim, bool is_target_prop)
 {
 	u16 pd_index = 0, ld;
 	u32 device_id;
@@ -1915,8 +1915,10 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
 			return;
 		raid = MR_LdRaidGet(ld, local_map_ptr);
 
-		if (raid->capability.ldPiMode == MR_PROT_INFO_TYPE_CONTROLLER)
-			blk_queue_update_dma_alignment(sdev->request_queue, 0x7);
+		if (raid->capability.ldPiMode == MR_PROT_INFO_TYPE_CONTROLLER) {
+			if (lim)
+				lim->dma_alignment = 0x7;
+		}
 
 		mr_device_priv_data->is_tm_capable =
 			raid->capability.tmCapable;
@@ -1967,7 +1969,8 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
  *
  */
 static inline void
-megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
+megasas_set_nvme_device_properties(struct scsi_device *sdev,
+		struct queue_limits *lim, u32 max_io_size)
 {
 	struct megasas_instance *instance;
 	u32 mr_nvme_pg_size;
@@ -1976,10 +1979,10 @@ megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
 	mr_nvme_pg_size = max_t(u32, instance->nvme_page_size,
 				MR_DEFAULT_NVME_PAGE_SIZE);
 
-	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
+	lim->max_hw_sectors = max_io_size / 512;
+	lim->virt_boundary_mask = mr_nvme_pg_size - 1;
 
 	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
-	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
 }
 
 /*
@@ -2041,7 +2044,7 @@ static void megasas_set_fw_assisted_qd(struct scsi_device *sdev,
  * @is_target_prop			true, if fw provided target properties.
  */
 static void megasas_set_static_target_properties(struct scsi_device *sdev,
-						 bool is_target_prop)
+		struct queue_limits *lim, bool is_target_prop)
 {
 	u32 max_io_size_kb = MR_DEFAULT_NVME_MDTS_KB;
 	struct megasas_instance *instance;
@@ -2060,13 +2063,15 @@ static void megasas_set_static_target_properties(struct scsi_device *sdev,
 		max_io_size_kb = le32_to_cpu(instance->tgt_prop->max_io_size_kb);
 
 	if (instance->nvme_page_size && max_io_size_kb)
-		megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));
+		megasas_set_nvme_device_properties(sdev, lim,
+				max_io_size_kb << 10);
 
 	megasas_set_fw_assisted_qd(sdev, is_target_prop);
 }
 
 
-static int megasas_slave_configure(struct scsi_device *sdev)
+static int megasas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	u16 pd_index = 0;
 	struct megasas_instance *instance;
@@ -2096,10 +2101,10 @@ static int megasas_slave_configure(struct scsi_device *sdev)
 		ret_target_prop = megasas_get_target_prop(instance, sdev);
 
 	is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
-	megasas_set_static_target_properties(sdev, is_target_prop);
+	megasas_set_static_target_properties(sdev, lim, is_target_prop);
 
 	/* This sdev property may change post OCR */
-	megasas_set_dynamic_target_properties(sdev, is_target_prop);
+	megasas_set_dynamic_target_properties(sdev, lim, is_target_prop);
 
 	mutex_unlock(&instance->reset_mutex);
 
@@ -3507,7 +3512,7 @@ static const struct scsi_host_template megasas_template = {
 	.module = THIS_MODULE,
 	.name = "Avago SAS based MegaRAID driver",
 	.proc_name = "megaraid_sas",
-	.slave_configure = megasas_slave_configure,
+	.device_configure = megasas_device_configure,
 	.slave_alloc = megasas_slave_alloc,
 	.slave_destroy = megasas_slave_destroy,
 	.queuecommand = megasas_queue_command,
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index c60014e07b449e..6c1fb8149553a8 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -5119,7 +5119,8 @@ int megasas_reset_fusion(struct Scsi_Host *shost, int reason)
 					ret_target_prop = megasas_get_target_prop(instance, sdev);
 
 				is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
-				megasas_set_dynamic_target_properties(sdev, is_target_prop);
+				megasas_set_dynamic_target_properties(sdev, NULL,
+						is_target_prop);
 			}
 
 			status_reg = instance->instancet->read_fw_status_reg
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-12-hch%40lst.de.
