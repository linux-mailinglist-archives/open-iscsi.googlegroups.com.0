Return-Path: <open-iscsi+bncBDUNBGN3R4KRBCP3QKYAMGQEQRHU6EQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB0B8882CC
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:56 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id ca18e2360f4ac-7c75dee76c0sf257060739f.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324555; cv=pass;
        d=google.com; s=arc-20160816;
        b=xbS3hvJ3BHV2S+9tIKQNk3HIrfkLJGb9h36ctCtjeOYKMsag/zP1S6bqdB9nbRcamu
         LAalbT3SkTt6stWuoSPoeJ4vhUqiXPpkkf+80oRprSRcPGGBQX68X9P//iRDA2qUeA2U
         X5V9kjS1jvjrSEo4HLTY2MqtnpscvIv/PBc7rLm+5AZpyYMKiJkUptYODcidi+iQG4ps
         Q/Nj7iUo1VZU3SI3lLKznue17wSimX51MhY5TGVT+yGsJsGGNEXwrHQ/fLNnmfB2ZL7w
         /foXdm0u9jU+hBTR0dRg1SZDaUWUXk2tuO9OrgB4/0KXPY9wphyjY3DOTSAtVe/uVyFy
         JkxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=6+4DkStXxWjTEU0tbj3hKNmrudU95zrFCsYG8uCOYBM=;
        fh=2/L+8EmD5j0Vn64cQsG93h12LAIqVTR1xPJzYZiPtw0=;
        b=q4o19S3VrUM5QLDKTKeKHP1HlkHTTgzU7DKyTd/QzsthL4zMAIVq+WPwFBjU3OUYzx
         IEw45Ys30hOeh5eyOLZFXBkfaprWBlCEQN4SgELRb+HmbzqesDrp7031dN4KQSNkiOQR
         XLzbbRvghUX4Q93qxTUi0s0OnyWR8R2TQoVH7LDYThosMGWj/DSJMSBvCMgc4MZZf5gt
         UERBkwSrm873GPGtYk7g1Pmim7IlGN/DV+NKxW+xBzBqWWK+iPwLpMb/mFrdIDctIG6R
         0XTXGN2dZOmLNWHxgfumZZhVVfyYbhYx7MqDS0limKxQFd6+EOxh0TxVRsGeJ/jwphCA
         lRng==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BfOP82s5;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324555; x=1711929355; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+4DkStXxWjTEU0tbj3hKNmrudU95zrFCsYG8uCOYBM=;
        b=Jqn1Czm92s3Nid/S+Wq103VXDuZQe8tyUMsSGro0te/Ine/01w2pKwOvCEXENWhi5G
         L4r6dFPLbkb7G+4o2L6oOJpeDbrvG2Bso4W3gMt/jbVkGEc4EfM+gs8jsdxuOc/B1hUo
         cQ23IE8OKIbOLCgc60S4fBsEX88vN0NL02HGX9VjLDIbpOi75brAKUgrBNHatfEq2x/p
         kFmO+vBIu1B4slvTbbWWuLLBq6m8yKH3Qou+E5OM+M4ny5IE2cq/tGqMgOUPDwQUcaSP
         jgqwb/rzDpWfz0b5JQ9IK5trR+jdVsVP7OyU/cMue5Ou+SY/QK6s5H/SmL4z1rHHuCGZ
         9iPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324555; x=1711929355;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6+4DkStXxWjTEU0tbj3hKNmrudU95zrFCsYG8uCOYBM=;
        b=C/T/CHBA89pb19UczD+K5RuxiNjlMgpIMUcLLV7968ZFzCY+WmeCzeUjCqkFY2mTXC
         Sf3sByDKd1o/tELMehU8sCEFDDYYW9Y/EBFRWpcC836XDlFcXZrxch7JlUktBlKJ0Lgo
         pfL5w/7MNhwbdr+Ipy/61Qe+24lcQgD88Co7fiJzUy/uO845YWhn2VF2Yam9LdAfg1pF
         pardjiLZITDMfBfet8ETts6db8gdcV7qXphtsPv/I+lC+L/Ms0ezr/cSYRmozruHk3+0
         otS0YjExq0SgefU1cmZbke6Px+2fUWcG0FtMb9kzljNAz191BFu7ZtEm54vH0I0TaPw+
         H0Vw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXWw7oRPlGgyN14k3XgWKJzxdWXH0EpOtPQDv8iJTgXIiNUqAvZZciZ7a2p5gommPzjH9eAmWPVfkvBbtK9r19av3tEQQeikcM=
X-Gm-Message-State: AOJu0Yy8Z5um9pHZLFrU/E716+0n+MiMaShtrBuq4kZibMU5sLQar1kq
	9tkrRjaLwn9TS6yKdXWPwo8Fpifn7nIlfnbKTyezHXKckWynwWP1Dgw=
X-Google-Smtp-Source: AGHT+IE4r2dpQaTDTvnH796s2L8avfTaM0dC/vuRoII8EqVEmTF2FXSTQ5ixtc0IZuOHkYXvBdHKdw==
X-Received: by 2002:a05:6e02:19cb:b0:366:fea2:8e69 with SMTP id r11-20020a056e0219cb00b00366fea28e69mr4062856ill.16.1711324555198;
        Sun, 24 Mar 2024 16:55:55 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6e02:1526:b0:366:a73a:603 with SMTP id
 i6-20020a056e02152600b00366a73a0603ls1131761ilu.0.-pod-prod-00-us; Sun, 24
 Mar 2024 16:55:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUBzOeBIZyTMjQGWDMBaN9+ecO0MUdE8tc9u2ZepOTOcDxCbQlyBZY6XqhJjMDD3NVHi+Juirnr7O2w7EsRixedGpOw1kuyMwWezKU=
X-Received: by 2002:a05:6e02:1d94:b0:368:7571:686d with SMTP id h20-20020a056e021d9400b003687571686dmr4291171ila.1.1711324553207;
        Sun, 24 Mar 2024 16:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324553; cv=none;
        d=google.com; s=arc-20160816;
        b=Wca2txWLsEoOq4cb4b0BBPulXp+l8P2l6W5wgPemJXrAzuB9BKpk0RTNkL7pFbywFR
         K4yp5T9lzRHd4ibMiI3++6psU/gt004CrRkZOb4PMNsAKY8yOr71+CE6zcu/ps0MAkp9
         C1nkMOA8sJhezuuRMpRrlNznQMSVjK4rQHxjKSJRDal4Mp/A/KaQ6S3tA65iXu3AEtd0
         Ysr4Zwe5SB59zqWmmDNR/aHu2Z4MtQDodpVjvyeIERPJlUcvrQ6A4LSuSEEF+80Cj1J5
         cZorI8UIwHUg9k0oOTcbFmIILWVeazWARYwpcJZxw5BMJy5gG66tx+O3JuWn6ixMH8Ix
         S1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=n/G3RdcsG/UHdocEiANoLj+Yss9HtHvu5C4t+MOMe/A=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=aO3wgrAuvin/Cl2507zEnyiETgjGmonsLG0+mP0Oyi1z+HNZE5hbNUkWhDkv97VFLC
         pUSTLJ/UHIo/uRgAluNyJQgsJSnztiu2B841FsItyFO2Jx/lzYTEhL6ANvya3JyH8qBS
         fogMhz4wOqfi4vG7J7Bt/g1uJ6B//yuDqu4FzY4t3noiT1jcZ9gJoq1aKt9EJMUqCpMY
         tJbcO/D8KKauJSS+yZe5nbSCtGjrF7Ymcqqm//h7sVdBrBUia09Io3jodKwbKJ2TDGZl
         LS4eCmt9Xvuzzh4YlY4qtxsGRYwJIBGhd5uFlaITJIgB6UU+RivQPuItQiav+YwqmtWn
         j0rQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BfOP82s5;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id v18-20020a05663812d200b0047c19d050d0si105244jas.2.2024.03.24.16.55.51
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:51 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgi-0000000Dzai-1gDh;
	Sun, 24 Mar 2024 23:55:40 +0000
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
Subject: [PATCH 10/23] scsi: add a device_configure method to the host template
Date: Mon, 25 Mar 2024 07:54:35 +0800
Message-Id: <20240324235448.2039074-11-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BfOP82s5;
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

This is a version of ->slave_configure that also takes a queue_limits
structure that the caller applies, and thus allows drivers to reconfigure
the queue using the atomic queue limits API.

In the long run it should also replace ->slave_configure entirely as
there is no need to have two different methods here, and the slave
name in addition to being politically charged also has no basis in
the SCSI standards or the kernel code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_scan.c | 33 +++++++++++++++++++--------------
 include/scsi/scsi_host.h |  4 ++++
 2 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 699356d7d17545..8e05780f802523 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -227,7 +227,7 @@ static int scsi_realloc_sdev_budget_map(struct scsi_device *sdev,
 
 	/*
 	 * realloc if new shift is calculated, which is caused by setting
-	 * up one new default queue depth after calling ->slave_configure
+	 * up one new default queue depth after calling ->device_configure
 	 */
 	if (!need_alloc && new_shift != sdev->budget_map.shift)
 		need_alloc = need_free = true;
@@ -874,8 +874,9 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	const struct scsi_host_template *hostt = sdev->host->hostt;
 	struct queue_limits lim;
-	int ret;
+	int ret, ret2;
 
 	/*
 	 * XXX do not save the inquiry, since it can change underneath us,
@@ -1073,22 +1074,26 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		lim.max_hw_sectors = 512;
 	else if (*bflags & BLIST_MAX_1024)
 		lim.max_hw_sectors = 1024;
-	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+
+	if (hostt->device_configure)
+		ret = hostt->device_configure(sdev, &lim);
+	else if (hostt->slave_configure)
+		ret = hostt->slave_configure(sdev);
+
+	ret2 = queue_limits_commit_update(sdev->request_queue, &lim);
+	if (ret2 && !ret)
+		ret = ret2;
 	if (ret)
 		goto fail;
 
-	if (sdev->host->hostt->slave_configure) {
-		ret = sdev->host->hostt->slave_configure(sdev);
-		if (ret)
-			goto fail;
-
-		/*
-		 * The queue_depth is often changed in ->slave_configure.
-		 * Set up budget map again since memory consumption of
-		 * the map depends on actual queue depth.
-		 */
+	/*
+	 * The queue_depth is often changed in ->device_configure.
+	 *
+	 * Set up budget map again since memory consumption of the map depends
+	 * on actual queue depth.
+	 */
+	if (hostt->device_configure || hostt->slave_configure)
 		scsi_realloc_sdev_budget_map(sdev, sdev->queue_depth);
-	}
 
 	if (sdev->scsi_level >= SCSI_3)
 		scsi_attach_vpd(sdev);
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index b0948ab69e0fa6..1959193d47e7f5 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -211,7 +211,11 @@ struct scsi_host_template {
 	 *     up after yourself before returning non-0
 	 *
 	 * Status: OPTIONAL
+	 *
+	 * Note: slave_configure is the legacy version, use device_configure for
+	 * all new code.
 	 */
+	int (* device_configure)(struct scsi_device *, struct queue_limits *lim);
 	int (* slave_configure)(struct scsi_device *);
 
 	/*
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-11-hch%40lst.de.
