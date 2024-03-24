Return-Path: <open-iscsi+bncBDUNBGN3R4KRBEH3QKYAMGQELPXCEPY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113b.google.com (mail-yw1-x113b.google.com [IPv6:2607:f8b0:4864:20::113b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1D18882D1
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:03 +0100 (CET)
Received: by mail-yw1-x113b.google.com with SMTP id 00721157ae682-60a0a5bf550sf75073837b3.3
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324562; cv=pass;
        d=google.com; s=arc-20160816;
        b=KKbkuttS9BEWJ4QlMKVw06+nyfbO21sITij0KGlsMmykcjfYXd7j3JkAfpTkmt+d/v
         N3E+C0phul0Lw7UKbdyYDfgwKQboGppLm0GpYhnjhNIrVkvLAByiDdRRZQYkxoQSQaqE
         gn/qBHi+2lcwjgs2YIVEMbWcx71ngi66eK3Lf2nD4UciK+br0aD5QX+zkd6na+A5JLMq
         5hwm/Y52bvlRsy9UYvfkp62T9ily2+xAZHhJYIJgWaas8hKp5mu9RUSO2gsRb6Td2IFY
         PglhLPODFvdbXNNXvYoiSK5kAuN6H6DdFv6tbJhAKRKZxStkCaVkN5HB4zJz9dKEuXB8
         9HpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=caC9A4fGzHKKm+teJ8r+ITSry9DltextxwmhRSRen7E=;
        fh=/ryZjI94mZEV0zG2gqpjwWNoSXM6jIK/edVV0QLCZNM=;
        b=ID9N3avs4HwyNrW5aaG5re70Q/HTy2o1WdY8OuBqVL2aFPnXKLCC8MOI77doRBlJeQ
         DroLOQG3lrr/U7un2eZwmr7g2KPH7lDYzYy66NwGlBAlfr89x3T7KPW5mOZPfE7vr+sT
         ENhwJ6iRYHlGf9UeSoqNsnNTIMKggn4PUua7dqGptXvI6pYBAeC+i76qrJK5kwPZRyqv
         Br9XDRJyjQunx0ygiU0SvZyCcegkLhH3nIvHV6b/U+BV8Htk1+939uficzq52y5rT7ur
         zXnIryqwpmBpSGc9f70ehOkEQrNgOB4mfUJofiyKIVeQeuxUO0P8+J6QgVIunzUbXr4w
         ZGLA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mUzKVDRm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324562; x=1711929362; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=caC9A4fGzHKKm+teJ8r+ITSry9DltextxwmhRSRen7E=;
        b=rnKwfB2FsMhUbBTdhRvMZKtGMFmCglv06O27QQgl0bHmNztvB958e7ltgz4MntH+iU
         pnKvBmW/+k3IUFNRgrXqHd/D8RugFKOnJK7rAXQfn/zem4bUkrpFqdBlfOn4Nrj15u4P
         n0E6btxjtnxZNrqg5EAFL5M+zkN5Flw7TDXgjJBQBSwsFx4HJqHSx2cE0yeQcgt5Bu5K
         ByAfmcvelf+kB1famaUZkIT+PO8qoWAIsUsShlfRHbe5KY2FJ38FSISVfn2IfpGGZV4j
         dGDw6QlwXpf/Vnc8oIP1f/4VVblgHsxBvscuzIitVl/5NfmvJWK/NJbHudLNURkoPDZi
         /68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324562; x=1711929362;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=caC9A4fGzHKKm+teJ8r+ITSry9DltextxwmhRSRen7E=;
        b=BwZxZA2FIkLART2MkURT7duxD0/mqneeu2rd5T0Dw+mgjm+LBFTXh6JmG5rupaG7I1
         0d0H7J5vf7Ns1Zzp/VoG69QaHoroxT0sFu9ygddbOxnh1iKlOuw/+G3lSnK30hUZH5zP
         kZoQSXFvIzJNHjJMdYnNSm/V+J6zP+rzQ/g/FFK6w7zSxqyM5fELwfoCK4/ohTLdNw/A
         KaH12vWc44iE9G2ZNceNOQTk1RHd2EVjVDipqRgQl8HDXEjZdnHmj1IyteuZHX4Nwwm4
         SLwsv8aavv+519xHrao4AuRSXD5uGlvRvSCvCdHWF56WU+11X6NATkslz9zsSb3PQVPC
         UDIA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWnUPVmKkw32Uk3xjqPOmTgJYYosVpN48o++Ze34MGTu3GdGDgTLyK8PMi+E6Dyne4yu6bNb3pfpcmA76jtVVApo9IhrcTwnmA=
X-Gm-Message-State: AOJu0YzMS2tc5ds7QBFVzxPamFoZNl2yXp8n9mweRH7jWc1Mh2CoW2H+
	Xh9Zy1pAr/n7KRoKDe/S1XUAGbT/KKsePj3Xvj2sgG0AxK6wE1bS
X-Google-Smtp-Source: AGHT+IG9d4n6itFKR7GuyqCw3/PvDYVAHdBip2qLRUorx/xN/ktvQt7d4SSetueH3LwnqGgWWFR9Gw==
X-Received: by 2002:a25:4a03:0:b0:dda:abbd:7395 with SMTP id x3-20020a254a03000000b00ddaabbd7395mr3222544yba.51.1711324562640;
        Sun, 24 Mar 2024 16:56:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d68b:0:b0:dcd:202d:6be8 with SMTP id n133-20020a25d68b000000b00dcd202d6be8ls451075ybg.2.-pod-prod-08-us;
 Sun, 24 Mar 2024 16:56:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVMsSXgmn73GiZr//MuhkCXY8Icvf0JDPkuEAt4FdBKLmws2iCgnMD7E58YbxMFNt649BO3gbREPSCYe9wIdBz8goPfxg6o8ed6BIY=
X-Received: by 2002:a0d:e002:0:b0:610:fc70:9f14 with SMTP id j2-20020a0de002000000b00610fc709f14mr4181707ywe.1.1711324560030;
        Sun, 24 Mar 2024 16:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324560; cv=none;
        d=google.com; s=arc-20160816;
        b=IafSc2RZYNWNq4sV2fwrM3dTvdcxZqLlHJbSJ67C6D4EuT0HEqMMXxAtGn8s5kZSlQ
         HrihTsECCKjFJrT78fO3MFHaN6ttDxarSjlftj79aB3XVzcbLH3m5a5qpRBFtKfYyp7c
         3e9Ny3eIHYru47szVtUZwH9fecpk6R5BKRwFReY/36tUhvO8aobcVp4SLbK9mU9/AXYU
         ST6yfX9RAnRou5jbCguedla8vRDZ7WkwzGrpam5iY8fSic7bDQWsOKWwM7CFK5J3dKhb
         vxeFOz9nn2iYqpWKnWlG6/lrF3UEQoPML5lrZlAdjTjNOJzLu3fR+USMFrelvcc8wjVw
         07xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OPWUBHnGb0JxJ3ne4A3+w3BXzTBtlAWCEg6mk8pbIPQ=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=nKUzrrQho5bbjYsmmrRwpJ/OBuivp4Cyq0f74hFHHFOY+t2Q8jDreYZdCuNUv948DU
         /i2a4A3yR6cAqdBUatXWABiUDZ9gZJTa6TPYw42uMxfocwJbxKXw7UQblaypfXIuw2ey
         DybVnOzqSOS+uiYAdSIiUW3SVNM2J5jwb2zGkXkukjgRdc1+dn6d1AajjCVxt7ntdVej
         o0Juqn17dvmDZDsN/4u+8mP6vqQmIVlueTpyrdnVdlRnNlt9CRNz7CQD1Osyk0rL0EY8
         jWMUZ6WN3jS/M1cgamJ+T9lnybv1Y2pO0K3pae6EHctsLWYDX9j8B2UpLWFljP84CWL8
         JGGg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mUzKVDRm;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id r136-20020a819a8e000000b0060a6050a1c1si359085ywg.4.2024.03.24.16.55.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:59 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgq-0000000Dzdg-0RFW;
	Sun, 24 Mar 2024 23:55:48 +0000
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
Subject: [PATCH 12/23] mpt3sas: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:37 +0800
Message-Id: <20240324235448.2039074-13-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=mUzKVDRm;
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
 drivers/scsi/mpt3sas/mpt3sas_scsih.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/mpt3sas/mpt3sas_scsih.c b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
index ef8ee93005eae6..89ef43a5ef862d 100644
--- a/drivers/scsi/mpt3sas/mpt3sas_scsih.c
+++ b/drivers/scsi/mpt3sas/mpt3sas_scsih.c
@@ -2497,14 +2497,15 @@ _scsih_enable_tlr(struct MPT3SAS_ADAPTER *ioc, struct scsi_device *sdev)
 }
 
 /**
- * scsih_slave_configure - device configure routine.
+ * scsih_device_configure - device configure routine.
  * @sdev: scsi device struct
+ * @lim: queue limits
  *
  * Return: 0 if ok. Any other return is assumed to be an error and
  * the device is ignored.
  */
 static int
-scsih_slave_configure(struct scsi_device *sdev)
+scsih_device_configure(struct scsi_device *sdev, struct queue_limits *lim)
 {
 	struct Scsi_Host *shost = sdev->host;
 	struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
@@ -2609,8 +2610,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 			    raid_device->num_pds, ds);
 
 		if (shost->max_sectors > MPT3SAS_RAID_MAX_SECTORS) {
-			blk_queue_max_hw_sectors(sdev->request_queue,
-						MPT3SAS_RAID_MAX_SECTORS);
+			lim->max_hw_sectors = MPT3SAS_RAID_MAX_SECTORS;
 			sdev_printk(KERN_INFO, sdev,
 					"Set queue's max_sector to: %u\n",
 						MPT3SAS_RAID_MAX_SECTORS);
@@ -2675,8 +2675,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 				pcie_device->connector_name);
 
 		if (pcie_device->nvme_mdts)
-			blk_queue_max_hw_sectors(sdev->request_queue,
-					pcie_device->nvme_mdts/512);
+			lim->max_hw_sectors = pcie_device->nvme_mdts / 512;
 
 		pcie_device_put(pcie_device);
 		spin_unlock_irqrestore(&ioc->pcie_device_lock, flags);
@@ -2687,8 +2686,7 @@ scsih_slave_configure(struct scsi_device *sdev)
 		 **/
 		blk_queue_flag_set(QUEUE_FLAG_NOMERGES,
 				sdev->request_queue);
-		blk_queue_virt_boundary(sdev->request_queue,
-				ioc->page_size - 1);
+		lim->virt_boundary_mask = ioc->page_size - 1;
 		return 0;
 	}
 
@@ -11914,7 +11912,7 @@ static const struct scsi_host_template mpt2sas_driver_template = {
 	.queuecommand			= scsih_qcmd,
 	.target_alloc			= scsih_target_alloc,
 	.slave_alloc			= scsih_slave_alloc,
-	.slave_configure		= scsih_slave_configure,
+	.device_configure		= scsih_device_configure,
 	.target_destroy			= scsih_target_destroy,
 	.slave_destroy			= scsih_slave_destroy,
 	.scan_finished			= scsih_scan_finished,
@@ -11952,7 +11950,7 @@ static const struct scsi_host_template mpt3sas_driver_template = {
 	.queuecommand			= scsih_qcmd,
 	.target_alloc			= scsih_target_alloc,
 	.slave_alloc			= scsih_slave_alloc,
-	.slave_configure		= scsih_slave_configure,
+	.device_configure		= scsih_device_configure,
 	.target_destroy			= scsih_target_destroy,
 	.slave_destroy			= scsih_slave_destroy,
 	.scan_finished			= scsih_scan_finished,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-13-hch%40lst.de.
