Return-Path: <open-iscsi+bncBDUNBGN3R4KRBLH3QKYAMGQEPJSWVHY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x37.google.com (mail-oa1-x37.google.com [IPv6:2001:4860:4864:20::37])
	by mail.lfdr.de (Postfix) with ESMTPS id 716DE8882E2
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:31 +0100 (CET)
Received: by mail-oa1-x37.google.com with SMTP id 586e51a60fabf-2261e2fa95csf4308712fac.3
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324590; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgBLLIO21U0nXafm2YibydRoWPVFjJUklEvdJtxCKnqTmI5DOS4vfixa9FeYF1gMHo
         5WRawHQ6goElF74f6cDZxh4lhb0XlZ2Q90H1nI3dZFA1WuzBeVp/k7/tZj41cmhB4Llu
         vviicF5wzHzLKnmvrP96zzkZbAny5Um19gkyLp0bHSn8wddNm+mBRxRASpcW3gmwcnRl
         EvuVFNxFuFhT6wIZsMbNSBz35nXwqQdJ4BV48MAV4LJwY7aIMMzXpvJsZCzf4m20T/ie
         GUPKjBCAtb1MXkwt+3EKeo6ldj2+6XZvLaQEO/XwvXRYS8D4hHB4EFlBcc0tL0QLEPrn
         27/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=8JvavkRhT3AQo8UDhFLVr16ofL1W4AuYWVErbdaabio=;
        fh=URwEK8vvk1Z2lxtBXpQAkprdnfKdal47H/C754HdixQ=;
        b=Bjp/ytENGso5LOD8b1kJGFsIwofvBdfIR/DNACuq2LNPyQtvDFA/V02bS5XJtJKM23
         4wZbsXWtqiO1t2jhbAYrxGiw4ZXqWDEwe4MbwGjngytM8yVYe4t8pyAsb6hDjwKlV/7w
         LFYBXktqMv1oKc72Bkre31hRtDuLh4hx4aq22aKT4nZnM8eP3PyMo+5fCZGYsJFui2PX
         KOPfkO6e9B56S3/05+fVsK6ootDtJf9v3bX9hu58GoSd6b/qEUnZfg1uTmBJl6s+Pe9G
         uexCldUa99Jvh94uDcAymb3uR+yNEwfRPx4zdKOjnT8Su1EMQpeoB31sju2neK8+b9g1
         HtSA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KM+fE8+c;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324590; x=1711929390; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8JvavkRhT3AQo8UDhFLVr16ofL1W4AuYWVErbdaabio=;
        b=EDMnB+9ZT0rVdEmPqmGcQC90wec7zOMR589nh/CmQTTd55ilCyNCDRRBkcwDBxtLYw
         FwCy2N6AH/eizyhocAYvtAsXRP0U3hbVs3kV1kHy4COn6evvZFHqYKVWtZYznWtMpq1j
         F5hVOEZWCYgykzMWdwXZ1jJ+cW2sWNYHElwrTLHuu94SpIqp78daADP1/Sl1VeHu2Xu3
         QJjbn1L2cOsQKTG1CQcMSFADDmzAsbBi69qdGpqHbaXT7pRDqc1pMjlLSTUhpraCYHw7
         gjaHVGVXdIuhzXBSx/bJwY3XC00uyR4fnrKV2S6vIr6y7+HWDhT9soM5pL1v5SKHMXBs
         n8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324590; x=1711929390;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JvavkRhT3AQo8UDhFLVr16ofL1W4AuYWVErbdaabio=;
        b=HzhZKuwwSNpSjrW0e8tua7TJxtsGCALu+KlxcKK89p4Hu5nog+Xumau2BbGu5uQO0A
         69N7gDm+BzjiQZLJpzblCWGqtzqXchqbKBLSUgtc18zKfg9ruqdDSoS22bhpyHEz8Zdo
         OLa540rzZVhNoqk28LheO+7Db0BSDrno6RbTOGsCcBkGJ+eqpJbzoLNMhpl4w0Aj1XAv
         aV6a8BN1nr7JlPUPexdSBNWlNB3Yk0wEWSPOWDOPGrDcl7wWpfzNMJM6FtWto/m9xAX7
         ccpb1xyrkO7xGpT4JtG3QtLrvuRBnQBuK5S2ZIqJiMhFlfJS7Q5Gi359O2J3nAwj6mJz
         fHvQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWHBm3mqOVMxd4EtMbN3wkj5227eaVuhXHhxa3qDKNqvWQF5V+0jpBF5G/QufVN/tvfit302V0JD/mAx1+dIQ/PPSZNva8R64s=
X-Gm-Message-State: AOJu0YyE8L2gNSAm6J9jOoZcL6i3L7CCr9HmE748hGD7SudN6FqOMEmv
	Z+LJpqSSFaYGGAyPUf4+RlmwqdfTNPpjK0pUUF4hxAVDy9x0ln42
X-Google-Smtp-Source: AGHT+IHOcihh4HutrCj7r+Z1b9n5lLS61hE4qestcHA476Xz2GGYJ0kfNdmGgKQCtYjGevm+0eey8g==
X-Received: by 2002:a05:6870:1696:b0:221:8a03:6de7 with SMTP id j22-20020a056870169600b002218a036de7mr6972636oae.32.1711324590120;
        Sun, 24 Mar 2024 16:56:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6871:5b06:b0:229:c291:bff5 with SMTP id
 op6-20020a0568715b0600b00229c291bff5ls2435917oac.0.-pod-prod-08-us; Sun, 24
 Mar 2024 16:56:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUWbNsfa2JILTROqcogmYRNhj6sSeT2iYxHp1M3tswDGpxn6hZTVFqDhzVEwSaCphj7Av8HtvXTAI7H5v+oIqQDeOXdnhqpKGMXNh0=
X-Received: by 2002:a6b:e510:0:b0:7cc:1a7:c62c with SMTP id y16-20020a6be510000000b007cc01a7c62cmr6767045ioc.18.1711324588121;
        Sun, 24 Mar 2024 16:56:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324588; cv=none;
        d=google.com; s=arc-20160816;
        b=SsloRdSK7sPGUeo/Yt+CuJd4hIekb8qPHzWknBdHdJy8iIv1sSqZQCwgP/Kyyqhp9o
         d2e2PX1A6txwN3U43YA3R64r9PXuJZn+UWiEo4Rsndzu4exYhSTt/YGLS52zSQyxYPer
         OwbtABi6nR/cyGev+PL3UTAU5h0ErxLr/InM2uMFL3xkkMOlIfrmLomQcNTY8vAogoUD
         7M2DpJb/ZZdYVYg8bvpPH151IDwwZCi3t+VpsUOg4UmZ4KTow8PCO26+qBo9rsjV68yz
         zhqqN7MosuQRTiv5AMJWOBIgNcQ9boNyqHJHwumi/ZQGUlLQLQ0Jel6KWHj1OdU4RC+J
         bAkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AvUf8Klc+7RB1yDG1wyQOjg5Jk0jlT3PDjCi7SYhfzY=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=dpI8+3kmXRyCLfMkbxHPrrnsVE5UMipAEIFO1ldeNThmJiUb/Ksgpst07a8jeYduId
         b3JRd2IOVekfFj2/jfVcis5cDSMixKkVZZJfZfsNFhpjD3VPIZYfpbbtQ7YWuYF5qJ3l
         TjqfWFJBNrB5y8h59TLSL0HpAyWpM/ZNPNT04bGNiY+D2fruJSBbkYo4OclbZjGqCMM0
         GLdRBN0sD4ExFfKl6ba972vlZiw9ykKnxVkyopvWFFa7/JNYjd/7vgwB13JD6mB3OsMo
         By/Csy+035hdcPHIDmRVJrk/LpFHHlA7yMdUfmAKg4ytWQ9/0xi3Nee6t4EF0FGjE08A
         sP1w==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=KM+fE8+c;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id d7-20020a6bcd07000000b007cc83e09d3asi779569iog.2.2024.03.24.16.56.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:28 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhF-0000000Dzm6-3Hji;
	Sun, 24 Mar 2024 23:56:14 +0000
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
Subject: [PATCH 18/23] sata_nv: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:43 +0800
Message-Id: <20240324235448.2039074-19-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=KM+fE8+c;
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
 drivers/ata/sata_nv.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/ata/sata_nv.c b/drivers/ata/sata_nv.c
index 0a0cee755bde73..d0a8eb0e8011d0 100644
--- a/drivers/ata/sata_nv.c
+++ b/drivers/ata/sata_nv.c
@@ -296,7 +296,8 @@ static void nv_nf2_freeze(struct ata_port *ap);
 static void nv_nf2_thaw(struct ata_port *ap);
 static void nv_ck804_freeze(struct ata_port *ap);
 static void nv_ck804_thaw(struct ata_port *ap);
-static int nv_adma_slave_config(struct scsi_device *sdev);
+static int nv_adma_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 static int nv_adma_check_atapi_dma(struct ata_queued_cmd *qc);
 static enum ata_completion_errors nv_adma_qc_prep(struct ata_queued_cmd *qc);
 static unsigned int nv_adma_qc_issue(struct ata_queued_cmd *qc);
@@ -318,7 +319,8 @@ static void nv_adma_tf_read(struct ata_port *ap, struct ata_taskfile *tf);
 static void nv_mcp55_thaw(struct ata_port *ap);
 static void nv_mcp55_freeze(struct ata_port *ap);
 static void nv_swncq_error_handler(struct ata_port *ap);
-static int nv_swncq_slave_config(struct scsi_device *sdev);
+static int nv_swncq_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim);
 static int nv_swncq_port_start(struct ata_port *ap);
 static enum ata_completion_errors nv_swncq_qc_prep(struct ata_queued_cmd *qc);
 static void nv_swncq_fill_sg(struct ata_queued_cmd *qc);
@@ -380,7 +382,7 @@ static const struct scsi_host_template nv_adma_sht = {
 	.can_queue		= NV_ADMA_MAX_CPBS,
 	.sg_tablesize		= NV_ADMA_SGTBL_TOTAL_LEN,
 	.dma_boundary		= NV_ADMA_DMA_BOUNDARY,
-	.slave_configure	= nv_adma_slave_config,
+	.device_configure	= nv_adma_device_configure,
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth     = ata_scsi_change_queue_depth,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
@@ -391,7 +393,7 @@ static const struct scsi_host_template nv_swncq_sht = {
 	.can_queue		= ATA_MAX_QUEUE - 1,
 	.sg_tablesize		= LIBATA_MAX_PRD,
 	.dma_boundary		= ATA_DMA_BOUNDARY,
-	.slave_configure	= nv_swncq_slave_config,
+	.device_configure	= nv_swncq_device_configure,
 	.sdev_groups		= ata_ncq_sdev_groups,
 	.change_queue_depth     = ata_scsi_change_queue_depth,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
@@ -661,7 +663,8 @@ static void nv_adma_mode(struct ata_port *ap)
 	pp->flags &= ~NV_ADMA_PORT_REGISTER_MODE;
 }
 
-static int nv_adma_slave_config(struct scsi_device *sdev)
+static int nv_adma_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct nv_adma_port_priv *pp = ap->private_data;
@@ -740,8 +743,8 @@ static int nv_adma_slave_config(struct scsi_device *sdev)
 		rc = dma_set_mask(&pdev->dev, pp->adma_dma_mask);
 	}
 
-	blk_queue_segment_boundary(sdev->request_queue, segment_boundary);
-	blk_queue_max_segments(sdev->request_queue, sg_tablesize);
+	lim->seg_boundary_mask = segment_boundary;
+	lim->max_segments = sg_tablesize;
 	ata_port_info(ap,
 		      "DMA mask 0x%llX, segment boundary 0x%lX, hw segs %hu\n",
 		      (unsigned long long)*ap->host->dev->dma_mask,
@@ -1868,7 +1871,8 @@ static void nv_swncq_host_init(struct ata_host *host)
 	writel(~0x0, mmio + NV_INT_STATUS_MCP55);
 }
 
-static int nv_swncq_slave_config(struct scsi_device *sdev)
+static int nv_swncq_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct pci_dev *pdev = to_pci_dev(ap->host->dev);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-19-hch%40lst.de.
