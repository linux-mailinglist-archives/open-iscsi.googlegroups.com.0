Return-Path: <open-iscsi+bncBDUNBGN3R4KRBAH3QKYAMGQERQRWCKQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 608C98882C5
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:46 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id 006d021491bc7-5a1d14ca2absf3650520eaf.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324545; cv=pass;
        d=google.com; s=arc-20160816;
        b=OxUvldhVLiGGLE/NVZ5roI3reuT4dyJAutiN/puNdZgxiSEdpprf2ThUxHl5MsHl8t
         b0rzih798uIfb3RsV6BbuFUAvCV1q9i18tBOLzNnr5dFmKby/Pd0JY/fYHS5zfeNevQh
         utKlzOjqcbHQcNMlkP10lh3lsJxyJ6752KbfsPh7jMnZXJ3cwZ5FxPHHSnpelbC5NX+N
         iEb5I93z2OXkwyUFBbCOWYmjSsl1jDi/1JMhKeViIxsKaJviTTv+og6RJLcJhbE2HLDF
         MKrFJjJ5kwdA0thxG5XWLNnwE150kaJe5GZTb/+/ftOtUepB3tPyV7G/qzvnCE5JwlfI
         +8sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=4LSze7dzXicdytpF0I7sx47akw6cYav/tU20x7tJtTI=;
        fh=9eLsR4Q5BiR2hHm8sXwaUqFvTt6Xxqd4WfmBpDalbxs=;
        b=cNXowf9r50cdo83mL3zvnxjqxiDaKnSpVxbwPUDAizp1g/ACsrQCeBZF3DMJ9PoTXl
         cFyK3ufgtEHd6QPdVlBunOuQEvTNz0ePxYm4tvDH+Pgt95WDxSjJynQGYWckfsWTlCjC
         vIa7pJEKnZ7HQZhULU9hEByctpb+yszYTe+mUNyEgVmfDKQf6IYnTazOPdbZ57dGjIAn
         U1ybCb/0ThCu1qWKO1FwtBoZZEbxlhodUKNnqlkKWDRWGxR3SX0PDWEvyFMCwFZ4g05V
         Bi0hXxR8M/EiDg4yZ0b14OdtRzyyW6/WbXgcJtNl780qeiXvy7zw2s82o6PFVAtnOVLf
         NwPg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=tW7wzOQd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324545; x=1711929345; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4LSze7dzXicdytpF0I7sx47akw6cYav/tU20x7tJtTI=;
        b=Wr3avNCRmb376PerTu3vdRnXxrK7ePOIOjcOuIQQtV4S3bjJtMdFyJNZVChc/DgkLE
         qubQiC2JYqdttWvbvLGYuJkl0BP7eVBiVEQQOWP0785vJ+VQ4Kk4UMgUg8s5/LOfWu3L
         I8G9G1CICk5tb+XcDtqr+UBbQ7qCEFMIvv+Un0HOTqyoWHe8IGEtnStwCD3l+JxTgjEx
         7D/N54geEYDhVNpWMBj1NFh5gHU0GUIBOgWz8xgebvtv5O7zkTGHFEe11Lo/F3GiNSZ8
         i9qyu5REHRTIzVPZJ+wJmCPzaOtyxFEgRemGtPZO69QnVfHis+Fwc4z1AR2qqN7ALUxJ
         IWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324545; x=1711929345;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4LSze7dzXicdytpF0I7sx47akw6cYav/tU20x7tJtTI=;
        b=C/Y2SBW/CMk55P/j1V81BgbqvjVUebTjGl5DKmPIvjaEPy/nPdvPDU/NJP19/7l7WX
         XTJLiWhGow0XP4rg+gKmpPb93ts+cLPrL7Ma11rHuM9takmKOjSq1S23buBoYw695noT
         fOu4VG0ln115T3I+mg2krkD/Z/PsQMFmWNEXgLK3QKyqV31VMd26UwIHUFWgPy81uwQS
         hzucEOZkgdwVTvPwtXQMoGaJRWoS9iI5l1dV4CdgjEbUG66LzWBxvDoZvGItURdc76YN
         2qMZF3qW9VJwOcVDz/JthSzSETbfD0BxCeQ512zixLygsfqOoORgzRIbYp8WvUlTAerW
         Litw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUHMf33caCNf8DhSCmm6TQ/fnbiK3dYg/Y4VB2fHatENgQQuG2iY2+MUPCNlPZTLSg+mrwaKLuXHicQnDzNJPcPlUWMbm2OE34=
X-Gm-Message-State: AOJu0Yzi+aZ+liJ0z1KGbksEENdGCj0BaUxUmbVTbUEXltj/CHcH8gLF
	cEAvSw7kl52+neb8+rg0ozds1twSS6+bGPHvTo1OOD0LVqBmiQF+
X-Google-Smtp-Source: AGHT+IG20iZRLvVhvjPLj3fpxfFZeiRnuaC5tf3cKW8bIlSKQfd15e/GTpBnmzeUtMGmuG0RehZG7g==
X-Received: by 2002:a05:6820:2007:b0:5a5:16e8:5be5 with SMTP id by7-20020a056820200700b005a516e85be5mr6215600oob.0.1711324545234;
        Sun, 24 Mar 2024 16:55:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:5804:0:b0:5a4:5fe2:2211 with SMTP id f4-20020a4a5804000000b005a45fe22211ls4501752oob.1.-pod-prod-07-us;
 Sun, 24 Mar 2024 16:55:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV85ByV0fzviDKxN8S/55+02mPspKQO3VIG/Vw+dzAKexmL7ceEenP+GDxKNT0i2deBzKcdGX7r5KRSyUS2gAKLN0X51/dbuRc4uXc=
X-Received: by 2002:a05:6808:14c9:b0:3c3:cb0f:b338 with SMTP id f9-20020a05680814c900b003c3cb0fb338mr3610049oiw.42.1711324543256;
        Sun, 24 Mar 2024 16:55:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324543; cv=none;
        d=google.com; s=arc-20160816;
        b=onbETKubF0LoYz+Cjw71Xp8J50Rykyn5CNzM029flQjHsI+AxeS9xV2iJV6aJuvWCY
         swhKhX0c7i092ruoxRJYo0hX4RDsFMmzH9DMIvmF6d8mOtIAG8rRmdYnzUvSHcQxUoAh
         LdPN+YDvYtt3O9xKwgmXp2k8nKPs3szhHoHR82kFR/s0QAqDm4tkVoY8l945+KeD6SUy
         JnP255ATGBy1pU7q8bLjF9OH88F994+zBBbrBF+DpjS9SXFchGNU4b//mDE62KBfZutZ
         em4tPTdZvP6ehh0YR3QrBwzi4bgp8DGqnUKmD9/to3c+mCWm1rWT6ZeVq4kTdCbYEI1f
         cmGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TV2KULhx0jXvmBL1siFqJvD3Q15LHPygeYRaqDNqSRw=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=BrDtDc3HvNODUuiVpoxA5reNwbqjIWdNshYddJyN2+naD7EJDBA3VC6Pt9ZiAkSvlP
         avzha012U/c59e5cVT2IerXHDyBq2XJVWFM7WSM5jwsHVj9aFkC/1JWBPkfPOVztTLDb
         0cvERlHm3hJol87yA2VcOXF1EBtoJZtUL/0eTKySXmjER0uTU3u9PXieZugbTo/65j8o
         4PXStyzSBwScrxZUCqNA3P19mQvVgGMiFGsqWAtFboDZ9sdifW/i5QvFud6JVHksR+2F
         PQbVHo+LaJmmVjGJ/tESp9o5BVVHQ3bX0vVSuj4FJnIbDwgJAiMQvVQaRPGFB00tzOpq
         5xzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=tW7wzOQd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id ct1-20020a056808360100b003c3c4ef1430si233858oib.0.2024.03.24.16.55.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:41 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgW-0000000DzW8-2KV4;
	Sun, 24 Mar 2024 23:55:29 +0000
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
Subject: [PATCH 07/23] scsi: add a dma_alignment field to the host and host template
Date: Mon, 25 Mar 2024 07:54:32 +0800
Message-Id: <20240324235448.2039074-8-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=tW7wzOQd;
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

Get drivers out of the business of having to call the block layer
dma alignment limits helpers themselves.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/firewire/sbp2.c           |  6 ------
 drivers/message/fusion/mptfc.c    |  1 +
 drivers/message/fusion/mptsas.c   |  1 +
 drivers/message/fusion/mptscsih.c |  2 --
 drivers/message/fusion/mptspi.c   |  1 +
 drivers/scsi/hosts.c              |  6 ++++++
 drivers/scsi/iscsi_tcp.c          |  2 +-
 drivers/scsi/qla2xxx/qla_os.c     |  6 +++---
 drivers/scsi/scsi_lib.c           | 11 ++---------
 drivers/staging/rts5208/rtsx.c    | 24 ++++++++++++------------
 drivers/usb/image/microtek.c      |  8 +-------
 drivers/usb/storage/scsiglue.c    | 11 +++++------
 drivers/usb/storage/uas.c         | 13 ++++++-------
 include/scsi/scsi_host.h          |  3 +++
 14 files changed, 42 insertions(+), 53 deletions(-)

diff --git a/drivers/firewire/sbp2.c b/drivers/firewire/sbp2.c
index e779d866022b9f..8f7810b2a4c10f 100644
--- a/drivers/firewire/sbp2.c
+++ b/drivers/firewire/sbp2.c
@@ -1500,12 +1500,6 @@ static int sbp2_scsi_slave_alloc(struct scsi_device *sdev)
 
 	sdev->allow_restart = 1;
 
-	/*
-	 * SBP-2 does not require any alignment, but we set it anyway
-	 * for compatibility with earlier versions of this driver.
-	 */
-	blk_queue_update_dma_alignment(sdev->request_queue, 4 - 1);
-
 	if (lu->tgt->workarounds & SBP2_WORKAROUND_INQUIRY_36)
 		sdev->inquiry_len = 36;
 
diff --git a/drivers/message/fusion/mptfc.c b/drivers/message/fusion/mptfc.c
index c459f709107b7c..a3c17c4fe69c54 100644
--- a/drivers/message/fusion/mptfc.c
+++ b/drivers/message/fusion/mptfc.c
@@ -129,6 +129,7 @@ static const struct scsi_host_template mptfc_driver_template = {
 	.sg_tablesize			= MPT_SCSI_SG_DEPTH,
 	.max_sectors			= 8192,
 	.cmd_per_lun			= 7,
+	.dma_alignment			= 511,
 	.shost_groups			= mptscsih_host_attr_groups,
 };
 
diff --git a/drivers/message/fusion/mptsas.c b/drivers/message/fusion/mptsas.c
index 300f8e955a5319..30cb4f64e77047 100644
--- a/drivers/message/fusion/mptsas.c
+++ b/drivers/message/fusion/mptsas.c
@@ -2020,6 +2020,7 @@ static const struct scsi_host_template mptsas_driver_template = {
 	.sg_tablesize			= MPT_SCSI_SG_DEPTH,
 	.max_sectors			= 8192,
 	.cmd_per_lun			= 7,
+	.dma_alignment			= 511,
 	.shost_groups			= mptscsih_host_attr_groups,
 	.no_write_same			= 1,
 };
diff --git a/drivers/message/fusion/mptscsih.c b/drivers/message/fusion/mptscsih.c
index 9080a73b4ea64a..6c3f25cc33ff99 100644
--- a/drivers/message/fusion/mptscsih.c
+++ b/drivers/message/fusion/mptscsih.c
@@ -2438,8 +2438,6 @@ mptscsih_slave_configure(struct scsi_device *sdev)
 		"tagged %d, simple %d\n",
 		ioc->name,sdev->tagged_supported, sdev->simple_tags));
 
-	blk_queue_dma_alignment (sdev->request_queue, 512 - 1);
-
 	return 0;
 }
 
diff --git a/drivers/message/fusion/mptspi.c b/drivers/message/fusion/mptspi.c
index 6c5920db1e9dc5..574b882c9a8540 100644
--- a/drivers/message/fusion/mptspi.c
+++ b/drivers/message/fusion/mptspi.c
@@ -843,6 +843,7 @@ static const struct scsi_host_template mptspi_driver_template = {
 	.sg_tablesize			= MPT_SCSI_SG_DEPTH,
 	.max_sectors			= 8192,
 	.cmd_per_lun			= 7,
+	.dma_alignment			= 511,
 	.shost_groups			= mptscsih_host_attr_groups,
 };
 
diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index 4f495a41ec4aae..a67a98bd7ae2d7 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -478,6 +478,12 @@ struct Scsi_Host *scsi_host_alloc(const struct scsi_host_template *sht, int priv
 	else
 		shost->max_segment_size = BLK_MAX_SEGMENT_SIZE;
 
+	/* 32-byte (dword) is a common minimum for HBAs. */
+	if (sht->dma_alignment)
+		shost->dma_alignment = sht->dma_alignment;
+	else
+		shost->dma_alignment = 3;
+
 	/*
 	 * assume a 4GB boundary, if not set
 	 */
diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 8e14cea15f9808..60688f18fac6f7 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -943,6 +943,7 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	shost->max_id = 0;
 	shost->max_channel = 0;
 	shost->max_cmd_len = SCSI_MAX_VARLEN_CDB_SIZE;
+	shost->dma_alignment = 0;
 
 	rc = iscsi_host_get_max_scsi_cmds(shost, cmds_max);
 	if (rc < 0)
@@ -1065,7 +1066,6 @@ static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
 	if (conn->datadgst_en)
 		blk_queue_flag_set(QUEUE_FLAG_STABLE_WRITES,
 				   sdev->request_queue);
-	blk_queue_dma_alignment(sdev->request_queue, 0);
 	return 0;
 }
 
diff --git a/drivers/scsi/qla2xxx/qla_os.c b/drivers/scsi/qla2xxx/qla_os.c
index dd674378f2f392..d188749f29e407 100644
--- a/drivers/scsi/qla2xxx/qla_os.c
+++ b/drivers/scsi/qla2xxx/qla_os.c
@@ -1957,9 +1957,6 @@ qla2xxx_slave_configure(struct scsi_device *sdev)
 	scsi_qla_host_t *vha = shost_priv(sdev->host);
 	struct req_que *req = vha->req;
 
-	if (IS_T10_PI_CAPABLE(vha->hw))
-		blk_queue_update_dma_alignment(sdev->request_queue, 0x7);
-
 	scsi_change_queue_depth(sdev, req->max_q_depth);
 	return 0;
 }
@@ -3575,6 +3572,9 @@ qla2x00_probe_one(struct pci_dev *pdev, const struct pci_device_id *id)
 		    QLA_SG_ALL : 128;
 	}
 
+	if (IS_T10_PI_CAPABLE(base_vha->hw))
+		host->dma_alignment = 0x7;
+
 	ret = scsi_add_host(host, &pdev->dev);
 	if (ret)
 		goto probe_failed;
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index f1936f98abe3e2..26b51406c477e3 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1985,15 +1985,8 @@ void scsi_init_limits(struct Scsi_Host *shost, struct queue_limits *lim)
 	lim->seg_boundary_mask = shost->dma_boundary;
 	lim->max_segment_size = shost->max_segment_size;
 	lim->virt_boundary_mask = shost->virt_boundary_mask;
-
-	/*
-	 * Set a reasonable default alignment:  The larger of 32-byte (dword),
-	 * which is a common minimum for HBAs, and the minimum DMA alignment,
-	 * which is set by the platform.
-	 *
-	 * Devices that require a bigger alignment can increase it later.
-	 */
-	lim->dma_alignment = max(4, dma_get_cache_alignment()) - 1;
+	lim->dma_alignment = max_t(unsigned int,
+		shost->dma_alignment, dma_get_cache_alignment() - 1);
 
 	if (shost->no_highmem)
 		lim->bounce = BLK_BOUNCE_HIGH;
diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 86d32e3b3282a5..c4f54c311d0549 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -70,18 +70,6 @@ static int slave_alloc(struct scsi_device *sdev)
 
 static int slave_configure(struct scsi_device *sdev)
 {
-	/*
-	 * Scatter-gather buffers (all but the last) must have a length
-	 * divisible by the bulk maxpacket size.  Otherwise a data packet
-	 * would end up being short, causing a premature end to the data
-	 * transfer.  Since high-speed bulk pipes have a maxpacket size
-	 * of 512, we'll use that as the scsi device queue's DMA alignment
-	 * mask.  Guaranteeing proper alignment of the first buffer will
-	 * have the desired effect because, except at the beginning and
-	 * the end, scatter-gather buffers follow page boundaries.
-	 */
-	blk_queue_dma_alignment(sdev->request_queue, (512 - 1));
-
 	/* Set the SCSI level to at least 2.  We'll leave it at 3 if that's
 	 * what is originally reported.  We need this to avoid confusing
 	 * the SCSI layer with devices that report 0 or 1, but need 10-byte
@@ -219,6 +207,18 @@ static const struct scsi_host_template rtsx_host_template = {
 	/* limit the total size of a transfer to 120 KB */
 	.max_sectors =                  240,
 
+	/*
+	 * Scatter-gather buffers (all but the last) must have a length
+	 * divisible by the bulk maxpacket size.  Otherwise a data packet
+	 * would end up being short, causing a premature end to the data
+	 * transfer.  Since high-speed bulk pipes have a maxpacket size
+	 * of 512, we'll use that as the scsi device queue's DMA alignment
+	 * mask.  Guaranteeing proper alignment of the first buffer will
+	 * have the desired effect because, except at the beginning and
+	 * the end, scatter-gather buffers follow page boundaries.
+	 */
+	.dma_alignment =		511,
+
 	/* emulated HBA */
 	.emulated =			1,
 
diff --git a/drivers/usb/image/microtek.c b/drivers/usb/image/microtek.c
index 8c8fa71c69c411..9f758241d9d376 100644
--- a/drivers/usb/image/microtek.c
+++ b/drivers/usb/image/microtek.c
@@ -328,12 +328,6 @@ static int mts_slave_alloc (struct scsi_device *s)
 	return 0;
 }
 
-static int mts_slave_configure (struct scsi_device *s)
-{
-	blk_queue_dma_alignment(s->request_queue, (512 - 1));
-	return 0;
-}
-
 static int mts_scsi_abort(struct scsi_cmnd *srb)
 {
 	struct mts_desc* desc = (struct mts_desc*)(srb->device->host->hostdata[0]);
@@ -631,8 +625,8 @@ static const struct scsi_host_template mts_scsi_host_template = {
 	.can_queue =		1,
 	.this_id =		-1,
 	.emulated =		1,
+	.dma_alignment =	511,
 	.slave_alloc =		mts_slave_alloc,
-	.slave_configure =	mts_slave_configure,
 	.max_sectors=		256, /* 128 K */
 };
 
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index 1d14c678f3d3e3..eb4ba03e082d89 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -75,12 +75,6 @@ static int slave_alloc (struct scsi_device *sdev)
 	 */
 	sdev->inquiry_len = 36;
 
-	/*
-	 * Some host controllers may have alignment requirements.
-	 * We'll play it safe by requiring 512-byte alignment always.
-	 */
-	blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));
-
 	/* Tell the SCSI layer if we know there is more than one LUN */
 	if (us->protocol == USB_PR_BULK && us->max_lun > 0)
 		sdev->sdev_bflags |= BLIST_FORCELUN;
@@ -638,6 +632,11 @@ static const struct scsi_host_template usb_stor_host_template = {
 	/* lots of sg segments can be handled */
 	.sg_tablesize =			SG_MAX_SEGMENTS,
 
+	/*
+	 * Some host controllers may have alignment requirements.
+	 * We'll play it safe by requiring 512-byte alignment always.
+	 */
+	.dma_alignment =		511,
 
 	/*
 	 * Limit the total size of a transfer to 120 KB.
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 71ace274761f18..0668182e1c469c 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -824,13 +824,6 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 
 	sdev->hostdata = devinfo;
 
-	/*
-	 * The protocol has no requirements on alignment in the strict sense.
-	 * Controllers may or may not have alignment restrictions.
-	 * As this is not exported, we use an extremely conservative guess.
-	 */
-	blk_queue_update_dma_alignment(sdev->request_queue, (512 - 1));
-
 	if (devinfo->flags & US_FL_MAX_SECTORS_64)
 		blk_queue_max_hw_sectors(sdev->request_queue, 64);
 	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
@@ -912,6 +905,12 @@ static const struct scsi_host_template uas_host_template = {
 	.eh_device_reset_handler = uas_eh_device_reset_handler,
 	.this_id = -1,
 	.skip_settle_delay = 1,
+	/*
+	 * The protocol has no requirements on alignment in the strict sense.
+	 * Controllers may or may not have alignment restrictions.
+	 * As this is not exported, we use an extremely conservative guess.
+	 */
+	.dma_alignment = 511,
 	.dma_boundary = PAGE_SIZE - 1,
 	.cmd_size = sizeof(struct uas_cmd_info),
 };
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 6d77c48e8311fb..b0948ab69e0fa6 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -405,6 +405,8 @@ struct scsi_host_template {
 	 */
 	unsigned int max_segment_size;
 
+	unsigned int dma_alignment;
+
 	/*
 	 * DMA scatter gather segment boundary limit. A segment crossing this
 	 * boundary will be split in two.
@@ -614,6 +616,7 @@ struct Scsi_Host {
 	unsigned int max_sectors;
 	unsigned int opt_sectors;
 	unsigned int max_segment_size;
+	unsigned int dma_alignment;
 	unsigned long dma_boundary;
 	unsigned long virt_boundary_mask;
 	/*
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-8-hch%40lst.de.
