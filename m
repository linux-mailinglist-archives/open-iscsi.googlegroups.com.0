Return-Path: <open-iscsi+bncBDUNBGN3R4KRBBH3QKYAMGQEIB6BMUQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id AF89F8882C9
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:51 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id 98e67ed59e1d1-29b8f702cbfsf2795097a91.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324550; cv=pass;
        d=google.com; s=arc-20160816;
        b=OD879mYgzVH8mgDjqo2yiQXLLIglFbqR0vlNvV5w63P/hRKNH6cBZxP8BuNFKZt4I3
         0TSlfMBzQjK/I1nJ4AFkBgbkILMt5bdnOmJY3V32rNnkMP8cnDdmY/uXbqEkm7Mo5T+T
         elYEsk0VnH0o3eb4t3gAiX8Cy1toa4p9HZE3K5zs3//Fa1/ltNQ8FXVrbObVePr5DizR
         z2Y8jFDc80nS2N5mWPC6v2nXFKCqXwCX6VrpxhYCz2Swz6DiB2W2az6ogr0PYWkwdHW1
         vKHOywtLUCuPLoDTkKdrQRs/M7jJHzwUB8d6AKzd+acofbFqdwaxDTZKp5Uhu85KWjfi
         RTmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=gNKVwpJhB9Q5HY5RYwWuwapWTkmJOMnlxIi/roAfst4=;
        fh=psFurlnRCm2eBihauVbghPlTmjW+2Eppb+BFXO3HXVM=;
        b=jo3n7/5zSQwAQ4r+wy/eq/pPm5hx8yAGYwt2gOHnMaSdAHr4X7Mv/j2OKRtIw3mzC4
         k/A5p7zjZEyiVnrLiYbg3LWgFrAbWDm1QFi4S8zNdhLze24PBBfXzPpzz9N3NfnX+/6t
         qoR4lzJOJsxJlPy8+wcHBBkAF8KaiPODO0ic/F9KCAgMBoTsEsZa1DWU8BXDV3B+Cj5D
         1rjkBa8VLDaIPWot1YexDnJ8pL7YSo2IMSYnu2BYPClQRjaaEYm6IcU99LE09QceWbqa
         TvwIl8q/NOkKTmppHc4ooU7rrAyH6n+/fuNqXNBgkbUuyqmNnEPnhxnfhV49LwmSTILh
         XVHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=XbCc2oME;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324550; x=1711929350; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gNKVwpJhB9Q5HY5RYwWuwapWTkmJOMnlxIi/roAfst4=;
        b=RUnchx414DnoZ+0UG+bJuxf9fagu/c9WXox4h0buJE8mm/VhHVz/cRpUIGryzLfjXB
         de4FBkLF8UBzLbpjyzD5j6QS4IxIhxayC2S/Un2xgi97dkcJJ9euP9dG0nrpuFz9w6TR
         7ZS6llkuvEpDoLPqZCqBSfK766miXwqhbWUDkH7Dmhc27RfE3fVJLG7QXK0FKNOPAmxZ
         VWs+0OprCInO0DhL6L6QD2bOUWR69ACm7GY6wOyB+LsqRu7NBjzAJOjIfsq+1vd2y/kj
         r47mM6hTE3/hP+wRq0GZ+C3moEC7Mx3Eak79yGSiBcAyT1oLNupbobCzy3Mm4A9rOeKc
         Z/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324550; x=1711929350;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNKVwpJhB9Q5HY5RYwWuwapWTkmJOMnlxIi/roAfst4=;
        b=BkZ3u9smWI8GatTotofagywk5jfptscglL1URWEsGHvUUC613xTCVn5B4R2E7MG+H6
         h35KMJIOqcgshBT+0ETpdx2Xbt0UC/9sjyR2Bb2tA56Mr1Q67IYfWXK3oc4oUpnWVjmJ
         tQ3wj32rWHTgtjbvTfan74PNgPtlzAF3PA/RVXPkaYqMR4+UThSSo+I9XIqlh3D5F95m
         RqVwFLkq8VhvvMn4YrMLcaGyAcg63uwIFr7dokkX//+ZMB4bkiJ4T7ejIDXjFAntlY3J
         ZQeSon8KsN0Z7eR2Ny52b/IbNf37CdsGG1u1JfOfp7+TRMhdiJOLJVjniFWz5GVa8Mwp
         H2pQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXTEhoerYse2MULZGCoAICKzsh9CaicG8Ji8tkbAQ0ubidHNMFEVaWuFW5eqb3yumnWzbwRjfZZEi2n40jjqcRX8MihSm4AgOs=
X-Gm-Message-State: AOJu0YzoSF1aDx5n8EibUO4rPfIfQtHfkONPjB6gxAQuR8cLVGJe5gZ6
	WAUPw+hi20z5HAatKmT+z/oLxX9GFa4C0vN8BqBkmjoUkog9DgO0
X-Google-Smtp-Source: AGHT+IENzgj8VVV/uW5/GozCFYIfe+AQQ5XK2E4LvjUVrFB7uR6qPSiyjbpLgCwisWQuAUgUyESxXQ==
X-Received: by 2002:a17:90b:1b52:b0:2a0:5a54:7474 with SMTP id nv18-20020a17090b1b5200b002a05a547474mr2235558pjb.0.1711324550181;
        Sun, 24 Mar 2024 16:55:50 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4b10:b0:2a0:2b14:7b50 with SMTP id
 lx16-20020a17090b4b1000b002a02b147b50ls1573258pjb.1.-pod-prod-07-us; Sun, 24
 Mar 2024 16:55:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXqjDNEYFQMauFOn+lJWO5afpcR4dTZ06gSPTwWfVOY2S7r180RLAcpGMKYo8W8b784S/CnIe6Ue0EWP3Dg+zKLzmOTZ+Z45QDix0A=
X-Received: by 2002:a05:6a20:8f0b:b0:1a3:b153:5f4e with SMTP id b11-20020a056a208f0b00b001a3b1535f4emr5208278pzk.54.1711324547589;
        Sun, 24 Mar 2024 16:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324547; cv=none;
        d=google.com; s=arc-20160816;
        b=nTzkgyJg5oCGgVm9vot+nHjfAUvVgg91VM8R00Qk3qOtKXlCIVvetd23B+nAz0ZjlM
         C8vQzsHfxZWg8CqVvj5M66lIhZpJpX42j11tXiw5UKiF2p4Ln1vOwR9r95zhr1wvUalU
         DpSEw9ZtN4HpBkVq6n4XvfWF8uwlGgEUm8QxbDLE0xwsMebRK4k2j/X1oMLqFQdTA69b
         rfsITmpKC+4Pgiu+yxnODeASWQvBExhVvK+V7aFavhCvXGelhUomLmECDcSi6lK/zRI1
         XORHjJ8Ml+3Tk35utB7zmTlvWXzptrJD4oDZJ4/Rg2e8fC1IT1sYO8JPPivBZWp+PMpb
         fK9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WXYhCbVwCEU0UHf+sQtOcxTHe5YrehjKDolUaK54+l0=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=p2ldBdqs/6RxbKBLixrZ36uPXr5VRRc0y7HFARTOZ+h9j5ch1X8+t9b4+uc2K0kb4Q
         xsflD22OQ/I1wu3CrIGILzlPgA7DGUlqMlEz3pp8VXavKnQNA+5g0H9f1Ra5ajV5WgcZ
         WBi/CaoilcLOtQRUp/aGbsZ6GerAslOCIebbeo3rIhafzCjPA1cBJX5B29SdDF2ozkyx
         H5veX/8J5IFjSu+Pr5JjZjJ0fMkOQ01LXRAVwJ8LgUCvT7PxSk+oiBr1EVv7yXA8H+Qy
         zs3+pjT5AJpoLBrIqJzdoeuqRkcx1WXGEQdSIyuLMJwjCYmpGnTa5igM/XOyR7b0IuTr
         Yslw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=XbCc2oME;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id kc12-20020a17090333cc00b001dcd7469086si256061plb.4.2024.03.24.16.55.47
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:47 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXge-0000000DzZ6-3X9j;
	Sun, 24 Mar 2024 23:55:37 +0000
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
Subject: [PATCH 09/23] scsi: use the atomic queue limits API in scsi_add_lun
Date: Mon, 25 Mar 2024 07:54:34 +0800
Message-Id: <20240324235448.2039074-10-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=XbCc2oME;
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

Switch scsi_add_lun to use the atomic queue limits API to update the
max_hw_sectors for devices with quirks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/scsi_scan.c | 49 ++++++++++++++++++++--------------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 205ab3b3ea89be..699356d7d17545 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -874,6 +874,7 @@ static int scsi_probe_lun(struct scsi_device *sdev, unsigned char *inq_result,
 static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 		blist_flags_t *bflags, int async)
 {
+	struct queue_limits lim;
 	int ret;
 
 	/*
@@ -1004,19 +1005,6 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 	if (*bflags & BLIST_SELECT_NO_ATN)
 		sdev->select_no_atn = 1;
 
-	/*
-	 * Maximum 512 sector transfer length
-	 * broken RA4x00 Compaq Disk Array
-	 */
-	if (*bflags & BLIST_MAX_512)
-		blk_queue_max_hw_sectors(sdev->request_queue, 512);
-	/*
-	 * Max 1024 sector transfer length for targets that report incorrect
-	 * max/optimal lengths and relied on the old block layer safe default
-	 */
-	else if (*bflags & BLIST_MAX_1024)
-		blk_queue_max_hw_sectors(sdev->request_queue, 1024);
-
 	/*
 	 * Some devices may not want to have a start command automatically
 	 * issued when a device is added.
@@ -1077,19 +1065,22 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 
 	transport_configure_device(&sdev->sdev_gendev);
 
+	/*
+	 * No need to freeze the queue as it isn't reachable to anyone else yet.
+	 */
+	lim = queue_limits_start_update(sdev->request_queue);
+	if (*bflags & BLIST_MAX_512)
+		lim.max_hw_sectors = 512;
+	else if (*bflags & BLIST_MAX_1024)
+		lim.max_hw_sectors = 1024;
+	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+	if (ret)
+		goto fail;
+
 	if (sdev->host->hostt->slave_configure) {
 		ret = sdev->host->hostt->slave_configure(sdev);
-		if (ret) {
-			/*
-			 * if LLDD reports slave not present, don't clutter
-			 * console with alloc failure messages
-			 */
-			if (ret != -ENXIO) {
-				sdev_printk(KERN_ERR, sdev,
-					"failed to configure device\n");
-			}
-			return SCSI_SCAN_NO_RESPONSE;
-		}
+		if (ret)
+			goto fail;
 
 		/*
 		 * The queue_depth is often changed in ->slave_configure.
@@ -1115,8 +1106,16 @@ static int scsi_add_lun(struct scsi_device *sdev, unsigned char *inq_result,
 	 */
 	if (!async && scsi_sysfs_add_sdev(sdev) != 0)
 		return SCSI_SCAN_NO_RESPONSE;
-
 	return SCSI_SCAN_LUN_PRESENT;
+
+fail:
+	/*
+	 * If the LLDD reports LU not present, don't clutter the console with
+	 * alloc failure messages.
+	 */
+	if (ret != -ENXIO)
+		sdev_printk(KERN_ERR, sdev, "failed to configure device\n");
+	return SCSI_SCAN_NO_RESPONSE;
 }
 
 #ifdef CONFIG_SCSI_LOGGING
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-10-hch%40lst.de.
