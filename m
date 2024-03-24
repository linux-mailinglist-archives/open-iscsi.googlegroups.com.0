Return-Path: <open-iscsi+bncBDUNBGN3R4KRBN73QKYAMGQEJHVIVUA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F5A8882EC
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:42 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 41be03b00d2f7-5ce12b4c1c9sf1981369a12.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324601; cv=pass;
        d=google.com; s=arc-20160816;
        b=OHfW570b1vuLtTtcLAjXTl+uDM5UKrrjGzMD4bGXhfJhGtnX6de9lPougV7g10cMNw
         FIzVF5GbaIDnNOmrRXP/DN5FO0RV9+wna47lE5LffPUeYDvyRMSvYRPsUbmrC20og+Mj
         J1k8fooJ3x6dBrotOHd9PRIwKXt8HzrUw1RUHpPGwEUXWWJUxNiy1zgKufGVbrOFBWfC
         oPt+l6gmaMeceBEBH3PoelPRjY1cZQIIpizu9UR7/zntStKaW9ljO03M/eF6EjBgPnMh
         /OPuGLUS1POAjyYjaX9iXSKIOBF7Pjawk3l5NW6hUhdeHadhY8TMCcFboE0Adcehagsw
         K/Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=yvhkBjaAQ7MZdUe4XCRrfxcTNlYDnbZ5oUbMwL27wqs=;
        fh=U3TkFjwIz64Uanfrr1da2gDlanS9IaKOVaTu0AjKGhg=;
        b=ydDcqAPmvPhpibKyBM6KR3iJBA8gsvkgC0wFPzpv+X3Wh2HQXVJv3hrVT5FfMOGRTt
         kE2jZPMSQvCy4tSeDV2so/cCnd19u1y9TtKKLy6KUrWVEulBvOSk0+2ZFNQVfd0MquxV
         hmTMZtOK5VRJJVgZaqIRUQVFSXcxpwP5P4qJQbc6oWCXWwb8QGnnxkCUDaGmXoliu5NV
         SwGGn70s6eDM2yz7ZINmWXC5rdcQenmpMgDYio0xSZACM4FQJ/hQ4+vkKRaBt2FbICHs
         JRraIzZEX0RbiDze93A6mjEplXx3LGpOUApLE7zYnQMiTUS3khk/mYOxPgvUyPYnnSqT
         CweA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VOimJzMd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324601; x=1711929401; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yvhkBjaAQ7MZdUe4XCRrfxcTNlYDnbZ5oUbMwL27wqs=;
        b=i8xUBoWfADUh+m6/waSdRQC4wEdAqle7EI0/Firq2IvoitCakU0ev58kmGWluEih6T
         fuf8QDIUTkSPNXqu782Y7Vp/bRzdAwli7t+X5DguGwd1Hpma3+9Qyzf5grdswTWOD8Mz
         l1kZXpEPDO/Bok5LIx6OxR4etU/S5NyRHgABBkhgWyvX0b7MyYebqAnF+/LvUqYFWnmH
         9+0uLgkdAB0KWv5dTGM9cAZqvkHcGWzZUmSRBegCweZsRPC22Me0XJfHCJK9Vtdw+gwj
         o7zx6pLt8maTe1+Agc02ko8L6cRctCFkn/KqZGnsf1o11lI65/M1ypVd8vkuOlntcOSG
         dfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324601; x=1711929401;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yvhkBjaAQ7MZdUe4XCRrfxcTNlYDnbZ5oUbMwL27wqs=;
        b=GnWtaZiaRoPtvOFrMFcsnzy0jRqRIN5x3VKshrsNyq9WHI2kPrAkDzF72hidiKFLQb
         dTzatXZWnik1w/jq+VPJdXuVvWoFe1sn90V7pGBmLU/j01Mhd4spA7w3nbuLTAkwB6yB
         JZeMAgsjIHrd28PV1C8tw0+0Eter8cWevRG0Yfm9/3x325gXSZs6oGMLagBjhVl4OFqz
         26ww8znwI/ONCPEldwPFWQ8zvFdmQPsX7fevobVmvSz072upxHeaq2N7MkXAU1n2Ai7D
         xVvyMOHc3pU5FYRClwjjr4wKDknK2YeAbp82jkwyyO9obmzzbCy0QypzRJFxBfYULXET
         qYZw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUfjptyEoFyI5mSedp4lsT2jV41RCghq16nILkw76vNgMjzo+c6JrTf7FqRPGGYwRcUj760fD7iIQMXG71oH6JJH5BGeJf2Z4I=
X-Gm-Message-State: AOJu0YzVD6a9xjs7tC2BQ8L854PkaBSmXM7KAXs6HFH9f5kqCNhbO1Sq
	lmKvx/8A5hP8xrdnvczbrNqqE4H1JsQMeeeEaPy35FLrp/W3D3L+
X-Google-Smtp-Source: AGHT+IGEF/vqU3dYtBe0izkjo0AhOeBzKDRYGqRiSf8Enj/WK5Q7LxFnkhW/sQDXkfzyyjzi7ZKXxA==
X-Received: by 2002:a05:6a21:19d:b0:1a3:50be:b3bb with SMTP id le29-20020a056a21019d00b001a350beb3bbmr5570843pzb.53.1711324601098;
        Sun, 24 Mar 2024 16:56:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4b10:b0:2a0:2b14:7b50 with SMTP id
 lx16-20020a17090b4b1000b002a02b147b50ls1573429pjb.1.-pod-prod-07-us; Sun, 24
 Mar 2024 16:56:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV7MNMtdvQlAjxMSZU/+EKZ6/dwLhNr4BaraLtmtamOIlc9+OfQ9LiijrkYYaGgYM6V4xDU64Oa41F7ad05b7BLKf50C6O9At4WMo8=
X-Received: by 2002:a17:902:e88d:b0:1e0:ac20:217f with SMTP id w13-20020a170902e88d00b001e0ac20217fmr4331348plg.23.1711324598730;
        Sun, 24 Mar 2024 16:56:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324598; cv=none;
        d=google.com; s=arc-20160816;
        b=LWj8zlL35ANw/EnYqQN6ZNP5/4zXqexuK8N3a/VBlzvXIes1HJc+aFDzW8rDvFfp2e
         Fd8XvMYFbqrtn/k3Y1N+BhUhok47IAJKw1LQIFrRT2G15aXQJp/d37E1HXaMNAjS0COj
         bVjybW8qJgKAuiETT9ASoYj1uMEDfBykEgRmfOmEddT8iMYwfpT3+0+c5hmSsZOiqxH/
         m331+/JMkIzYKtXNVX7NntfiEFBWLvabWT6cpVYu2VRfI6YX1MbSfZ1e6AlFIxTwTVk7
         mE26snRVEIPP6w2tsweTbpBw9kzzAEo2Hdh17Q9t9yO6sn4SNejVccCnFI01x89mrmic
         Ltuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gtobFJFBpzQs/ROtgMighh6c3wHyEnqjb/WQx146tTk=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=JiwYwipg/tVLNm9j4fxJz/0AJxYjwpnHyvHfjsk4ONGEusXEkRnryvKtddj9vWS9eC
         ksMN4ZKuAuHZX9hBzXWl1ZWFL1SLgD8uAM0X3lWxDBu40VgfGPNngK6TkpDnQuS+ev4b
         hnUNJJZB0WNlhQJAXWeLA5jCVOQ2aJCgSyX6u0BxYnYSu5WiYzkiW7R1Sw77uMd/wBmy
         cUWx9IgInWQgqU/4i9rG/UR5d0fBUjX7pd53SkSb2eYjV8sEslLCQG0kGJSaJOeCh057
         5x1hux0x9P3786aMGYtzPTRk2MfWFdprV0qfAUQjl4b3xKzneBM+LlF4wN+zBBY3DRIj
         elIA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=VOimJzMd;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id n5-20020a170902968500b001dddaace148si220515plp.7.2024.03.24.16.56.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:38 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhV-0000000Dzsa-2yZ9;
	Sun, 24 Mar 2024 23:56:30 +0000
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
Subject: [PATCH 22/23] uas: switch to using ->device_configure to configure queue limits
Date: Mon, 25 Mar 2024 07:54:47 +0800
Message-Id: <20240324235448.2039074-23-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=VOimJzMd;
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

Switch to the ->device_configure method instead of ->slave_alloc
and update the block limits on the passed in queue_limits instead
of using the per-limit accessors.

Note that uas was the only driver setting these size limits from
->slave_alloc and not ->slave_configure and this makes it match
everyone else.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/storage/uas.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 0668182e1c469c..738c183ccada8d 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -823,19 +823,19 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 		(struct uas_dev_info *)sdev->host->hostdata;
 
 	sdev->hostdata = devinfo;
-
-	if (devinfo->flags & US_FL_MAX_SECTORS_64)
-		blk_queue_max_hw_sectors(sdev->request_queue, 64);
-	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
-		blk_queue_max_hw_sectors(sdev->request_queue, 240);
-
 	return 0;
 }
 
-static int uas_slave_configure(struct scsi_device *sdev)
+static int uas_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct uas_dev_info *devinfo = sdev->hostdata;
 
+	if (devinfo->flags & US_FL_MAX_SECTORS_64)
+		lim->max_hw_sectors = 64;
+	else if (devinfo->flags & US_FL_MAX_SECTORS_240)
+		lim->max_hw_sectors = 240;
+
 	if (devinfo->flags & US_FL_NO_REPORT_OPCODES)
 		sdev->no_report_opcodes = 1;
 
@@ -900,7 +900,7 @@ static const struct scsi_host_template uas_host_template = {
 	.queuecommand = uas_queuecommand,
 	.target_alloc = uas_target_alloc,
 	.slave_alloc = uas_slave_alloc,
-	.slave_configure = uas_slave_configure,
+	.device_configure = uas_device_configure,
 	.eh_abort_handler = uas_eh_abort_handler,
 	.eh_device_reset_handler = uas_eh_device_reset_handler,
 	.this_id = -1,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-23-hch%40lst.de.
