Return-Path: <open-iscsi+bncBDUNBGN3R4KRBHP3QKYAMGQE3EFAURI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 567328882D9
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:16 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id 6a1803df08f44-69057317d23sf67799886d6.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324574; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTwABSiUF+uJ5kjPWR7OcEJd7X/62cX30ODComIaDLDaWqavAEQGGOCnyXjeBEMM6+
         TNjN8GjOlS/P6gg4GY73D9w+j87WVZrPzEqjVdug7U7GOhFYihkS09ThcLGsorXZcnIJ
         QJc+4OnY6SY14Y1TDKq6K/Odn98wB+YslgkCseCSWEX4Vln/cl7/MR0lmPFWXayinz9N
         kK/yGYkSE4x/+9qEmdK/aYb405dPP9lfJRHfGz25GVcJlqMk7Q0M22j9QefyH5K32vCI
         T8dwpvuVjasDcLWlw9aftmSqkdz023s9lFYNPtpP2m1eMrLlvZlumN/z0bW9BHRoIo3o
         eQxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=4W+zPSX4TGHBMW2jXoF9O/LA+HogQvb6NlHCz4k5nbA=;
        fh=qFWBqMwI4VQgSQcfY8VcvAlOFmyVBj0uzXI6K9rnERQ=;
        b=EG+SE3mBwCQ4I4zLjw/+kpMYYEWXnphfIrze+eghZsOvAWSkar0Df9EX83Zmo7YJrt
         jj9IeVjuS/BOZsSOjoD1jIv94MIFRDZ/y4YuVlNLIueRr11GOof3lFfYcgQShalhyyfF
         TNRrTEBro7M3jbWqkmdXMeTdq1A/VI4gf6JAVwN4SREQa4SS8zWn28L2gZzTgaw+MZJn
         F12YYUelnlCMBaGQLpIHWTf+Vk8QW2B+6Ll4JC9+0rEUeAmfyLJNfebZLLpXdB759KS6
         oM+v+8Tw4Mqc6lT3kdhiS2r4pWXS8+yLyBcTMv3DKp/1PpPo3PH6HbuXL0VcQx5PCSqq
         hFgQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fZw6oQVE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324574; x=1711929374; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4W+zPSX4TGHBMW2jXoF9O/LA+HogQvb6NlHCz4k5nbA=;
        b=awqV0Clq4rWF8E+Gw1eJkVCiwKsUCAGqw9XQ56uvYOy9RwUB4GHqLdxp52BQijMqiV
         idLRIz5Fjb5R31lJgRJxvzgAR2V0BtVyReljihdn+KpBMfjc+NjXQkz4D/C9AL1uPYXH
         bnOYd5YtAsv17bOyXh/PxiSGGXSrEAa4PMvNB7YxUJlvehz3e7zw5t+wQW6RMvv21vDy
         vOSYrTvLHwVvzo1jjc2R4VQ3Ie7Soro21cXCopzcL627DaorJFwgQ+bwyWZwWWDZja1x
         xZ7G55tbpriAIc5fBpok4/nR2Jbq7jMHMgAEdwIZyvMnf9c6jo6jlOie+as8qTHPWRzF
         lwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324574; x=1711929374;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4W+zPSX4TGHBMW2jXoF9O/LA+HogQvb6NlHCz4k5nbA=;
        b=jqifu8UG4iIOtp9Ga9dSIMUNhFvLyGN0JCN7stCtKWqrDD+XmE8bYCP0TgRa+sQ38G
         KnnN0MN+Y9RTw3VGVYlaHVyV2bsEMT5p8SZTkYUK9irXptUvkY/ACquZ6zyXpQTo7Zkn
         tz4I+SNiEoIGLpblA+8+g5ME5/JU4+gG/+N6N2ER/lgLm7zd9UJdu1kQprNS7jBjiUu9
         wkgRTPfWftVcSNCnJ4D2rEeSi0nE3xRbo4DIs/PYAPCwxgwNFk/z8sA0bgI5f41fEZLL
         bjt2oFLVlsdU+t5m6/qKeT8azM3dvozSio1/PAAk+R3VsBfIStjYjxiCzMkHzuVDCmOM
         hkQA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWvDDwbbBGT9SpoYuNDPSn/BvmM7Zin0HEogEPmSvg6CJipHCAKw4BVmCmOi41pyZaJaKoUxYN7rWMqGhaZvO81KV0w4PoU2IE=
X-Gm-Message-State: AOJu0YzO9gQ/+6Brw2Sjz9aLfvvyQIoNtpm7GEFZgYVIWY3WPk+8gfRt
	r7ZRN/1c12A89a7yOERrdVjBXbyZr/xiGBW6PkysOk0WmUGOxa3T
X-Google-Smtp-Source: AGHT+IGpZAlgGfEaH1tlBq8ETKT3jYrqYQFFBbFkLbK3nsp5+Q2OCP2G47RsIwe5ngV7mSm6gI7Vcw==
X-Received: by 2002:ad4:5fc5:0:b0:696:80b0:8a38 with SMTP id jq5-20020ad45fc5000000b0069680b08a38mr4629465qvb.46.1711324574592;
        Sun, 24 Mar 2024 16:56:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:dc2:b0:696:8a5d:3e4d with SMTP id
 2-20020a0562140dc200b006968a5d3e4dls1002514qvt.1.-pod-prod-06-us; Sun, 24 Mar
 2024 16:56:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJtB7UaZ+MBfwJh0Vsk505zsqYOurQ584RtOUceOAsb1frdCb7yH1p41gW3GgdOzrOt1ZLCS1x+fX/w6/tUSJwAH2leqknBrmbzFs=
X-Received: by 2002:a05:6122:104a:b0:4cd:20ea:35aa with SMTP id z10-20020a056122104a00b004cd20ea35aamr2714579vkn.8.1711324572498;
        Sun, 24 Mar 2024 16:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324572; cv=none;
        d=google.com; s=arc-20160816;
        b=nPiypOptVwxkbpfz1yWeKecg7ozSghbOZcMBZXXzkA4OPBRrDXMcqtD0M1r92nF2cv
         U/hJN4MIf0Cj6SccYz+0EACk/1kp184ITKJUtO1EHFrHrn1N6uTHmCEIp/PGfddZ0auh
         mO1u200Mwgi8YWeC7Rz5TWjzbKCO4eZaTylEpm+cPwnNpgaUOVYa2plASaK4ztr4CoEK
         k1IYcQVDJ4UaofTak6ZwKUhDjqn0vsJNVr0N6Q/XgMdNLjLCdqs3bXcZZhD+JsCv48ad
         +uvw9/d+BbhY2Q9j5m3VUaCRCX1ywpU6qB66AjFN8bt/dBq/DuXt6BZY1chVCFkLQCVi
         v9MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pO7QUZsXXhu9HAXfSQAqPprtEItLE8G7INdiPk7KBF8=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=LfU6mL8woyi+wMCweD/IxQrLevDb+nUxKtDYO6z9Y7Xqf6NRJcsLGRxQzcQqNiiX66
         XmADCJNIyHADIsTO5nVbakboAeFNDkD/k9GNdA8ldRcXI5mgPKhX/BvPm/iM20xusrCG
         XJPPR3uA44MuiddFVThT9k4ymaVbwfvWaH5E3Hjl3dD9C2Zn9f1uMaEYjdxYHjg065TF
         m9Kl5L2zdb1Q7nf1HuqYfn64G3BciVP0aJmtSFyUFPhRAw9jAV5aqpO5bERPlymXQooI
         959BYhDiSZb/N/canuAp8EDEY01P0YdeBkaYy0i5vW9QptpAdaOS9N5mu/7RWMZwa7g+
         dZDw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=fZw6oQVE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id i7-20020ac5cbe7000000b004d88e05895asi56063vkn.1.2024.03.24.16.56.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:12 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXh2-0000000Dzho-2g5B;
	Sun, 24 Mar 2024 23:56:01 +0000
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
Subject: [PATCH 15/23] ipr: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:40 +0800
Message-Id: <20240324235448.2039074-16-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=fZw6oQVE;
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
 drivers/scsi/ipr.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/ipr.c b/drivers/scsi/ipr.c
index 3819f7c42788bc..388c8a10295a67 100644
--- a/drivers/scsi/ipr.c
+++ b/drivers/scsi/ipr.c
@@ -4769,15 +4769,17 @@ static void ipr_slave_destroy(struct scsi_device *sdev)
 }
 
 /**
- * ipr_slave_configure - Configure a SCSI device
+ * ipr_device_configure - Configure a SCSI device
  * @sdev:	scsi device struct
+ * @lim:	queue limits
  *
  * This function configures the specified scsi device.
  *
  * Return value:
  * 	0 on success
  **/
-static int ipr_slave_configure(struct scsi_device *sdev)
+static int ipr_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *) sdev->host->hostdata;
 	struct ipr_resource_entry *res;
@@ -4798,7 +4800,7 @@ static int ipr_slave_configure(struct scsi_device *sdev)
 			sdev->no_report_opcodes = 1;
 			blk_queue_rq_timeout(sdev->request_queue,
 					     IPR_VSET_RW_TIMEOUT);
-			blk_queue_max_hw_sectors(sdev->request_queue, IPR_VSET_MAX_SECTORS);
+			lim->max_hw_sectors = IPR_VSET_MAX_SECTORS;
 		}
 		spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 
@@ -6397,7 +6399,7 @@ static const struct scsi_host_template driver_template = {
 	.eh_device_reset_handler = ipr_eh_dev_reset,
 	.eh_host_reset_handler = ipr_eh_host_reset,
 	.slave_alloc = ipr_slave_alloc,
-	.slave_configure = ipr_slave_configure,
+	.device_configure = ipr_device_configure,
 	.slave_destroy = ipr_slave_destroy,
 	.scan_finished = ipr_scan_finished,
 	.target_destroy = ipr_target_destroy,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-16-hch%40lst.de.
