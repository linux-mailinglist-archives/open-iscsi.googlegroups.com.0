Return-Path: <open-iscsi+bncBDUNBGN3R4KRBI73QKYAMGQEAGIWVGY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CA58882DC
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:21 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id 6a1803df08f44-6967246e2a2sf28670826d6.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324580; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qn0my980GlDOAiVGXxFjoGkFcGp5RjDkbLiVS4w8MUwNutaj0oTCrMb6Nsyyb58Kmd
         kE9jvNt/RXGIZOV+aC2a4ZV73Iu/ZppMhkA3vYrjk0awlmz1F5TlT6NCrl955T6dOx64
         CmsXsIvy1vfz38OTd7bY2nQmeVfcs6ocBQz3CGcRjoKjnu1ZFSCJzmTGbgsVpiRyd430
         rkQivsIPRMRgfUK2WARyO3aBGTcmqjmcBJnd5LdOsCD76bRJmK0sxlYzK04B21VA4zQv
         MCoFg1Qmn/4QY9C4mn0A6aSwlAqlW7v8TSsF+6RfT7QEwfQ/qnigQeCxTiyIUi3E0Xay
         NCGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=DUsSsaZeltfaU/86IP7k+znzPBEQ5pPLIoOdMdcUBW4=;
        fh=VtONOyQhw/5R/+9ilOWHqFkYBPV+b6F5KljJRPNtwsc=;
        b=GFQPSj07agKHhtQs+bjIsIIIRh3i338sJ1uXeIIJ8uvUi88r9Q7E/JDiVob/BuZsOM
         De7zKkp1HAmoB6xHzssT/i8s0Cp/JPCGcVOrZ5AzZeqH4g7PzhkBgB7aUv4uUoATBkiY
         dFE+Q7IxoonwxTocV1gRb1Qip7GwP+tOfmV7/wIJfHMPrqXSZzWkRkSMARTN5Qv5WkZF
         WDz/KdNEfuqKIp2WTApvb33i/f7zNiZwGhAJ4gutos+/LX52AKCWtm7hjElyGhwsOZW2
         nr99R8oEQMUmmWBktQ7zL5sWFivV8gigCNEXjzk9Tlf3BS7Tu02+n6rwBN75p3OUv/tK
         jnYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=QNv5BRtj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324580; x=1711929380; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DUsSsaZeltfaU/86IP7k+znzPBEQ5pPLIoOdMdcUBW4=;
        b=iFvU91DbcYD2mfHtATBksJXfaVADqStj/P2GVK9YA+bzxwfCdeUASsZVb1Fim22Df3
         doDCgpXLhaloEUaa8/Oo6tozM6SIlkfDjaEWXJttfHBkVGLbfFaqe5UH/l3cPzuy0Jqk
         AeyQkX0/9gHWo895CjHZjgPxXIavLNJNPrQXUl02/iEiUjrgKEgiY5yrzCf+eqgSs3mw
         x8BPAj/zBIIgcHR7j9vlAiyyUEdR69/zqdydNmsJgZm7Oc2JmrThjutceG57SLKJpx4K
         t7fUPWwHkyerR3je0X1W85JPpfJ/Ndr0GynC8cxmWhgot+eLA3BfOXtirbDr1imE3L6T
         596Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324580; x=1711929380;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUsSsaZeltfaU/86IP7k+znzPBEQ5pPLIoOdMdcUBW4=;
        b=hl9lMM2OBH4/2TqgM4eq8cE2SjTR7OzvzgzaS94Dfi6Z5rkqHcOUCUM6P/eoLggEQF
         qqab7vfsEtinMDUKUDnW22g3UxAzzDJFzSeLe4nSYJNqSNA8m+dmg9ZeZlN7H+Zoo9zs
         xcWyoNvLyh6qkWPcoOM2XY4V3cU4iaVvZ7hHLaGUZM3qRLdMcddSw9IZjDSQ0MbmavgD
         a/nV3KberSDIg0U5YhrfrOWrHz0Ik88h8m6noy55l8BYyX7EBobNsRLvR6DxY3526Xnc
         EkfHD9wDzCOaveOfM2fQ7g3WYS7Fm+T2pgNuNeVJ8kEQgWsiohQbXzC83YqNpXZWeTbw
         k0uQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWs3EVYL/wGzWG1P2rLu/bW4rRO1cnr4A8AeqqykDWxP3fbIz+9o1oTz2qFD/qdbAwbCuSn5m86qj+zJCttduU91q7C68cAqIQ=
X-Gm-Message-State: AOJu0YwEftAu5ST8Fi/5C0Gg0VapZNLAYfczWP/0vEHBhNbfiy9yogLg
	Hlq5vTlz+UUJQQOC5peFMvHF/ogO4gYR0A+1T45dW+AaFpA7/s9E
X-Google-Smtp-Source: AGHT+IFi8ed4SvRtUsDYpnQymo/jUUmGnhdpoXzMZVR5eLKLws0vCgpd2kMPPTwwI1TPs1iBAsGTPg==
X-Received: by 2002:a05:622a:289:b0:430:f0ea:e3ed with SMTP id z9-20020a05622a028900b00430f0eae3edmr5476096qtw.65.1711324580645;
        Sun, 24 Mar 2024 16:56:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5e09:0:b0:431:1d90:c004 with SMTP id h9-20020ac85e09000000b004311d90c004ls5840952qtx.1.-pod-prod-02-us;
 Sun, 24 Mar 2024 16:56:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWGLWHUHfzc6/fQLu4vbd4oj2fw88UI3gABREHuki6GOdAroCFuIlx9NWsKe4+IyPg9srz+2YlowP8RsMiZqX1yM9BBCsD2cAYMYZk=
X-Received: by 2002:a05:6102:6c8:b0:476:f91b:2eab with SMTP id m8-20020a05610206c800b00476f91b2eabmr757901vsg.14.1711324578331;
        Sun, 24 Mar 2024 16:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324578; cv=none;
        d=google.com; s=arc-20160816;
        b=06qbbspv3gjTZaZR6hrS40Hs+AnV+mE+nyVO9xO1plgcXXubFQd+1qrlfKXVW/YnZn
         GOnPBu8vL5C8r3em/JHrjflco0OQX1/fgKItusrepr+us4XQ/azhWyhJ3/ewyrdbf9Zz
         VpcCw2o6q6jUMivnUgHc0CAe9NAZXMDxKa/i+jhFPJySi3OOtJsFTHDGMzS5XVvd4DeP
         lkseMG4mfiUVzptnLd2jt44/302GUDUsF96kC3Mkahcn8pShZ78YUIjsLdBnBjTNbGDh
         +BhF2K3GOP9yOkBrGbY1bMfxrAy6tsalLC+VzXzhMnTVuQZoSHecX+ZiY5DI1HOQtCfl
         oTwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T8ehCRIZEnmsHiyVVTq703MnTOLl40e8Jhvby/3yq3E=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=HeaL8UFNT21ScsFI7gwWGPZuiRqivri2mKeR8/TOPEl6yym+SKt3L5QgwF6C8VBoxp
         C3YT1lUegFx1G5NAnspKDFIo7/UimzQdgioYNTIeXKhKqJDjbCTb53FbJlit0/q9NNfi
         zHt1IHv9RmwZfw5yuGhYO4W6NVfCVUrB4N6NqMs3H6uKhjScjxJ5Pb4Ap0fLKT42t/Am
         z3FJWAUKr0Jq8DG9klSgIw9zkrKefl8QgsNkYIy6YjIOvsCbpASOfgmuqlafaJoHDOnT
         aCwYFLBdJPQ1uRuAEyASNh9QpGm41H4MjbrbhFhjkxvAeNvWsmeCIeIpHfB9G7Vgjy/H
         9irA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=QNv5BRtj;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id je18-20020a056102179200b00474d2ccf7c1si326740vsb.1.2024.03.24.16.56.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:18 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXh6-0000000DzjB-1Bp0;
	Sun, 24 Mar 2024 23:56:05 +0000
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
Subject: [PATCH 16/23] pmcraid: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:41 +0800
Message-Id: <20240324235448.2039074-17-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=QNv5BRtj;
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
 drivers/scsi/pmcraid.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/pmcraid.c b/drivers/scsi/pmcraid.c
index e8bcc3a88732a1..0184fcbc15a9e2 100644
--- a/drivers/scsi/pmcraid.c
+++ b/drivers/scsi/pmcraid.c
@@ -195,8 +195,9 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
 }
 
 /**
- * pmcraid_slave_configure - Configures a SCSI device
+ * pmcraid_device_configure - Configures a SCSI device
  * @scsi_dev: scsi device struct
+ * @lim: queue limits
  *
  * This function is executed by SCSI mid layer just after a device is first
  * scanned (i.e. it has responded to an INQUIRY). For VSET resources, the
@@ -207,7 +208,8 @@ static int pmcraid_slave_alloc(struct scsi_device *scsi_dev)
  * Return value:
  *	  0 on success
  */
-static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
+static int pmcraid_device_configure(struct scsi_device *scsi_dev,
+		struct queue_limits *lim)
 {
 	struct pmcraid_resource_entry *res = scsi_dev->hostdata;
 
@@ -231,8 +233,7 @@ static int pmcraid_slave_configure(struct scsi_device *scsi_dev)
 		scsi_dev->allow_restart = 1;
 		blk_queue_rq_timeout(scsi_dev->request_queue,
 				     PMCRAID_VSET_IO_TIMEOUT);
-		blk_queue_max_hw_sectors(scsi_dev->request_queue,
-				      PMCRAID_VSET_MAX_SECTORS);
+		lim->max_hw_sectors = PMCRAID_VSET_MAX_SECTORS;
 	}
 
 	/*
@@ -3666,7 +3667,7 @@ static const struct scsi_host_template pmcraid_host_template = {
 	.eh_host_reset_handler = pmcraid_eh_host_reset_handler,
 
 	.slave_alloc = pmcraid_slave_alloc,
-	.slave_configure = pmcraid_slave_configure,
+	.device_configure = pmcraid_device_configure,
 	.slave_destroy = pmcraid_slave_destroy,
 	.change_queue_depth = pmcraid_change_queue_depth,
 	.can_queue = PMCRAID_MAX_IO_CMD,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-17-hch%40lst.de.
