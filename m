Return-Path: <open-iscsi+bncBDUNBGN3R4KRB4H2QKYAMGQE3FUE6EQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id F00248882BB
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:31 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id 98e67ed59e1d1-29ff65bbd63sf3050634a91.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324530; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCqwbP2DojByJpGADci2tgBRvQ1pntp3oivJpqbfJ+q2LgfCGAtv/TpmWfdVownjI+
         Rk33/PYkjxk3e+YRjBxTNmDcVCpGoZLqL72gQCuxrrk5dn3xj55GnvaDAUT6DDrK2uI2
         2uzlOSdnELykD6IwaBsVTO7qtv+VKw8bdnjy/1OMAO35LmhSd2Ob7ZOnDrtGXwi605BD
         TmGaIsSfuJ6cUXWOipcTlRdMIEIyeBwCkoM7Jnqocb8p+udbZK4zvAP1MmW45YdzbU75
         AXsAh6QdDGX3A59UKHh6byTRhNFH7NFmr0E7kRo+ykSJxVl7VXGILjkYV77GKDisaX2h
         /OzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Jr4Xi2vmr3SIPffzgqhSp6oRq8VYmKXn+5TSOEklnbI=;
        fh=Lgnwsn2BxCiyhU+4Cm5QKdgQ85RT9Wl0G9BPD1fV9k0=;
        b=O3B4VeHQGKkidfykz8QdT+HSdNO7jgjt2fUzXFNPk2NXTneF1sdZxv1jb/dWjUFxry
         Vn15kEHpIoXSUHW3dkYeWgk3vlBcSY4Nz8vST91PLqEdCu4t3R1MpyPqDRti4YvzA6VZ
         KFNe7JWtF6ze894O8sr/oBF865q0D+fQ7EP9uY8iPnBBbXMaMf0xgmzEYqE+K1BJymMf
         8RH9h08XE8fderNmJ9xJhrq+LsH1pgw8TCv3ZG/haPZje42yAU002MDJU6iWbo33aMLG
         vGbOYocIoegYLXjAj8Fe5v7pQBb52vukWnTUqfC5yYbyaY/lMBcgZrcqDDIfkA0fcsGf
         RuQg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uTzehiaV;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324530; x=1711929330; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jr4Xi2vmr3SIPffzgqhSp6oRq8VYmKXn+5TSOEklnbI=;
        b=KUsDxqKzuNLMfAYXV1ZQ2mxLYmHZMjUbbTJzBZKJJFgojrWDemhAGVSPhAHmbGd/Sx
         0xS8R6u/n/vteJFTPciNkT8fpSzkFTQunmR9FTQpIcV7KEIvaFntG4iRVJ9c8+8BUGxP
         z4WHUZziV55EO+S+JFkgphXAjkrKYdoXA617BgLOjfqpezmV7lO7TChofU/HmEuLh4YG
         3GiFWQKsU5KyXlqZ3U+hrCKyr88K2z95yZDT95j5gZCZ8T42TEvfzhTHYGqlHDcaVKZM
         /lr1rUPetnUy/evoO1exqOAt0s7D3nsydA9O7Jx60XbbQEtdeSObcOQREq94BfMkyl2x
         JTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324530; x=1711929330;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jr4Xi2vmr3SIPffzgqhSp6oRq8VYmKXn+5TSOEklnbI=;
        b=MkfgrWqgMHJS4RJKS5idL2oETDfdgKgqaRXpRnjKif1MTqQrVPnOtfNqIrDb7thqEv
         JitLnIp9ThxpGfJdcUXY97T+GJNeI8p9ezYYtZ5x++OkVLjSxMP87DPO7ShqgLxzo5zJ
         D/26/8nRvdNInwcyClsCa/h2dL+gL31bvMSJIL6dB2mYWHcD8gXTCos5NqUBZMhOectu
         LKUrH6UgQydfG1VrCBw9kIBHhTgCfXyrFnbQxHA1Lu5lQ9W/4HGohBp9wOB33XvM0ws8
         Vq0UqwWA7igPvvZEBO4eUdYy+nEqM0seYSCZS9xRE1mQgTwaYonDQbjpxf+kDFuAFCP8
         25lQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWg7DDYj8ZH5AZLYfUjK+1rAbwqj+codVngW5mq1n0BEQk2a9VwrqToxdU7LYQPJvlkImRgv/fCDE500IzOxSD1M6c0n4LJY2Y=
X-Gm-Message-State: AOJu0Yy1gDmxwyoqTLygQzIySfQAvvq2MbGuxmN8hOy8wyX/1NgMcfBe
	bPvpKTQXybPNK28AcEtaE3xq0rXBrxv97cND1c4dnTgXE1nTtyoI
X-Google-Smtp-Source: AGHT+IEwYGeIfXBsnqPsPadNt+iE5DnT+y4WpsWV1HxnqALO/Cq+t1XNDNwHYSkEb5DymFxkbdhDdg==
X-Received: by 2002:a17:903:26c9:b0:1e0:27c8:5c7e with SMTP id jg9-20020a17090326c900b001e027c85c7emr5026782plb.25.1711324530551;
        Sun, 24 Mar 2024 16:55:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:40d2:b0:1e0:912e:8b93 with SMTP id
 t18-20020a17090340d200b001e0912e8b93ls1459221pld.0.-pod-prod-05-us; Sun, 24
 Mar 2024 16:55:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWOVJdxhTL4jBkiQf5iR76mzJMaae9eSBBq3Zri64qqjEwqHOi52V1PBLUysyGEEa/eiL08MM68hkzy8fI8/6xISmm6JLbq2oi9FMg=
X-Received: by 2002:a17:902:da8f:b0:1e0:b562:b229 with SMTP id j15-20020a170902da8f00b001e0b562b229mr3012934plx.47.1711324527715;
        Sun, 24 Mar 2024 16:55:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324527; cv=none;
        d=google.com; s=arc-20160816;
        b=qYCu7VXQYzhYIffnSzh5lx+JRvH0ooDFnBjR325O5Zdf2Raz1ljwYE5LSBbp6O/q1b
         NFvK6j5uS7vVPl9wErLmJsZfaP9051TnoPtiMqq1GPFVPNUpxjqHHTMhgCd0M14tW5Bl
         CXVNg0gtbqTLjyP6ujPjETJWWmXm0NYSZsj+yLf5BuqW0NquXQ7QqSden7bf3wcSdKlP
         YC3FDCBVi7FvxrmV/kQEmIdOl5dtncBplWzx91/o8SjX0vUeYA0+xsBn4DOdAPFAOKpu
         c834RELGlcwY2GfiFgQenlNSG6CUciiFj1FqZjx7a2iIMEEDMNKqGQ6GaQhH4s7S8Oj0
         G79w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nvdQfwJLbeHnAUQyn4LV7PgOkGPeM0Gg8xt8AYIC3uU=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=OtFzHaPN4GAHPUN1CcI9zJJwpKOZA0PElLK64W7fqUeaAx9QYlmldzJ88GZJJP4ZMB
         rmHwm2MJzn7aHEVzFuxnmRE0VYRl0iuZ2LIaRjT0N7kxQAeTsKXcq0rTvbea7ruIuQae
         oUrgj7VneubEInO/tUR7HzEe0+UtxE2BP5nhsNVop5C05EEskaftZWf1p2cUKxewm9wi
         WIblCexDd0G3+gQJ+pOFv2EcPBwz2BzytegJ//ClSsZIpVyq+LQ8zXmyD+2UGikZ4zb/
         /GEykybB2AiB6cq1hC7JWR+KhVBem+XMf55vKxCr+F1RHzXaDsU6GytUa/mozsacHT7S
         sPpA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uTzehiaV;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id ld12-20020a170902facc00b001dd527af9fcsi262639plb.3.2024.03.24.16.55.27
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:27 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXg2-0000000DzLn-1sTF;
	Sun, 24 Mar 2024 23:54:59 +0000
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
Subject: [PATCH 02/23] bsg: pass queue_limits to bsg_setup_queue
Date: Mon, 25 Mar 2024 07:54:27 +0800
Message-Id: <20240324235448.2039074-3-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=uTzehiaV;
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

This allows bsg_setup_queue to pass them to blk_mq_alloc_queue and thus
set up the limits at queue allocation time.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 block/bsg-lib.c                     | 6 ++++--
 drivers/scsi/mpi3mr/mpi3mr_app.c    | 2 +-
 drivers/scsi/scsi_transport_fc.c    | 6 +++---
 drivers/scsi/scsi_transport_iscsi.c | 3 ++-
 drivers/scsi/scsi_transport_sas.c   | 4 ++--
 drivers/ufs/core/ufs_bsg.c          | 3 ++-
 include/linux/bsg-lib.h             | 3 ++-
 7 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/block/bsg-lib.c b/block/bsg-lib.c
index bcc7dee6abced6..ee738d129a9f5e 100644
--- a/block/bsg-lib.c
+++ b/block/bsg-lib.c
@@ -354,12 +354,14 @@ static const struct blk_mq_ops bsg_mq_ops = {
  * bsg_setup_queue - Create and add the bsg hooks so we can receive requests
  * @dev: device to attach bsg device to
  * @name: device to give bsg device
+ * @lim: queue limits for the bsg queue
  * @job_fn: bsg job handler
  * @timeout: timeout handler function pointer
  * @dd_job_size: size of LLD data needed for each job
  */
 struct request_queue *bsg_setup_queue(struct device *dev, const char *name,
-		bsg_job_fn *job_fn, bsg_timeout_fn *timeout, int dd_job_size)
+		struct queue_limits *lim, bsg_job_fn *job_fn,
+		bsg_timeout_fn *timeout, int dd_job_size)
 {
 	struct bsg_set *bset;
 	struct blk_mq_tag_set *set;
@@ -383,7 +385,7 @@ struct request_queue *bsg_setup_queue(struct device *dev, const char *name,
 	if (blk_mq_alloc_tag_set(set))
 		goto out_tag_set;
 
-	q = blk_mq_alloc_queue(set, NULL, NULL);
+	q = blk_mq_alloc_queue(set, lim, NULL);
 	if (IS_ERR(q)) {
 		ret = PTR_ERR(q);
 		goto out_queue;
diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
index 0380996b5ad27a..0bac3f49d8057d 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1853,7 +1853,7 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 		return;
 	}
 
-	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev),
+	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL,
 			mpi3mr_bsg_request, NULL, 0);
 	if (IS_ERR(mrioc->bsg_queue)) {
 		ioc_err(mrioc, "%s: bsg registration failed\n",
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index b04075f19445dc..87b2235b8ece45 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -4287,8 +4287,8 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 	snprintf(bsg_name, sizeof(bsg_name),
 		 "fc_host%d", shost->host_no);
 
-	q = bsg_setup_queue(dev, bsg_name, fc_bsg_dispatch, fc_bsg_job_timeout,
-				i->f->dd_bsg_size);
+	q = bsg_setup_queue(dev, bsg_name, NULL, fc_bsg_dispatch,
+			fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev,
 			"fc_host%d: bsg interface failed to initialize - setup queue\n",
@@ -4318,7 +4318,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 	if (!i->f->bsg_request)
 		return -ENOTSUPP;
 
-	q = bsg_setup_queue(dev, dev_name(dev), fc_bsg_dispatch_prep,
+	q = bsg_setup_queue(dev, dev_name(dev), NULL, fc_bsg_dispatch_prep,
 				fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
 		dev_err(dev, "failed to setup bsg queue\n");
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index af3ac6346796ba..c131746bf20777 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1542,7 +1542,8 @@ iscsi_bsg_host_add(struct Scsi_Host *shost, struct iscsi_cls_host *ihost)
 		return -ENOTSUPP;
 
 	snprintf(bsg_name, sizeof(bsg_name), "iscsi_host%d", shost->host_no);
-	q = bsg_setup_queue(dev, bsg_name, iscsi_bsg_host_dispatch, NULL, 0);
+	q = bsg_setup_queue(dev, bsg_name, NULL, iscsi_bsg_host_dispatch, NULL,
+			0);
 	if (IS_ERR(q)) {
 		shost_printk(KERN_ERR, shost, "bsg interface failed to "
 			     "initialize - no request queue\n");
diff --git a/drivers/scsi/scsi_transport_sas.c b/drivers/scsi/scsi_transport_sas.c
index d704c484a251c5..424a89513814b4 100644
--- a/drivers/scsi/scsi_transport_sas.c
+++ b/drivers/scsi/scsi_transport_sas.c
@@ -197,7 +197,7 @@ static int sas_bsg_initialize(struct Scsi_Host *shost, struct sas_rphy *rphy)
 	}
 
 	if (rphy) {
-		q = bsg_setup_queue(&rphy->dev, dev_name(&rphy->dev),
+		q = bsg_setup_queue(&rphy->dev, dev_name(&rphy->dev), NULL,
 				sas_smp_dispatch, NULL, 0);
 		if (IS_ERR(q))
 			return PTR_ERR(q);
@@ -206,7 +206,7 @@ static int sas_bsg_initialize(struct Scsi_Host *shost, struct sas_rphy *rphy)
 		char name[20];
 
 		snprintf(name, sizeof(name), "sas_host%d", shost->host_no);
-		q = bsg_setup_queue(&shost->shost_gendev, name,
+		q = bsg_setup_queue(&shost->shost_gendev, name, NULL,
 				sas_smp_dispatch, NULL, 0);
 		if (IS_ERR(q))
 			return PTR_ERR(q);
diff --git a/drivers/ufs/core/ufs_bsg.c b/drivers/ufs/core/ufs_bsg.c
index 374e5aae4e7e86..433d0480391ea6 100644
--- a/drivers/ufs/core/ufs_bsg.c
+++ b/drivers/ufs/core/ufs_bsg.c
@@ -253,7 +253,8 @@ int ufs_bsg_probe(struct ufs_hba *hba)
 	if (ret)
 		goto out;
 
-	q = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), ufs_bsg_request, NULL, 0);
+	q = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL, ufs_bsg_request,
+			NULL, 0);
 	if (IS_ERR(q)) {
 		ret = PTR_ERR(q);
 		goto out;
diff --git a/include/linux/bsg-lib.h b/include/linux/bsg-lib.h
index 9e97ced2896df2..14fa93268630ed 100644
--- a/include/linux/bsg-lib.h
+++ b/include/linux/bsg-lib.h
@@ -65,7 +65,8 @@ struct bsg_job {
 void bsg_job_done(struct bsg_job *job, int result,
 		  unsigned int reply_payload_rcv_len);
 struct request_queue *bsg_setup_queue(struct device *dev, const char *name,
-		bsg_job_fn *job_fn, bsg_timeout_fn *timeout, int dd_job_size);
+		struct queue_limits *lim, bsg_job_fn *job_fn,
+		bsg_timeout_fn *timeout, int dd_job_size);
 void bsg_remove_queue(struct request_queue *q);
 void bsg_job_put(struct bsg_job *job);
 int __must_check bsg_job_get(struct bsg_job *job);
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-3-hch%40lst.de.
