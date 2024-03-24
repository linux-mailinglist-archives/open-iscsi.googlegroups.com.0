Return-Path: <open-iscsi+bncBDUNBGN3R4KRBJX3QKYAMGQEXPXRCRA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x1138.google.com (mail-yw1-x1138.google.com [IPv6:2607:f8b0:4864:20::1138])
	by mail.lfdr.de (Postfix) with ESMTPS id 955998882DE
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:24 +0100 (CET)
Received: by mail-yw1-x1138.google.com with SMTP id 00721157ae682-60a3bb05c9bsf62381077b3.1
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324583; cv=pass;
        d=google.com; s=arc-20160816;
        b=HDG/b+/D+SzfdLWZAQz+yV4lkelp82MUIv3N7zRpa/aDoRoWCwENi382S1iYsHXOIA
         VF0oJKSHrcCIzpihWJKJ8J0X8mMXrCH1LbQte85DSNmo0j/8oL1PhUOZe6z++ml/qsIQ
         ZZffHhKYC7sYx7tcyPLjZsLr8kBW0W5r3ky4x9nZAvU2oIvO/jdqopD9A5JU+DIesXqA
         PeieiDvPIUc3pt4uqM0WE2zR5/9nY2A716yTHCYGjTi+j/urhtPpiYV06AI/pN0t7fha
         Xwlvo+fY9sfEiQtkh+h15VUoTKZ+OxDdHQ6UOVUL+GUBbX0+dcqeCj254xD18lmNX7Qb
         hDDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=gJcTV/7h/oaLOah1BwJ6crW+D0G8jN3rYFAc5h3iw+0=;
        fh=ny0UdcAHFs9VhQcG6Nn+dxqF0flINJMw3qFFn/ti5ic=;
        b=mqozJE+BGlN/ILwowt2eSmuDzAVKoeTkeMVZZPJjgLZ/UgwuRYM6izKJajYJy/mvRz
         ZdA+h5lRClKRI4esfpmn0i6ev549gTQyvvpHX4C6i/GdsqSmtuzRO1nNf03tW1eIz2ry
         G829ZSX01jg4eEkAL4gX959vDKXdSeI914Cgq3x36ixdef1g8shGcKmw3qkW22HBn99u
         zIB92VdLERUUKndT7yZgFFz+1GF8M1lJx0CWk2j76c2GCjZ0OcnQ7SOZw/9HN4wqJETQ
         pEtcEqBIoz9CIkF7Dug4HHBtYmAK6J+TSlGvuMenVpOsHrJYJJBCHbeyQMofza5DHCef
         GnWQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FgaYvL4R;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324583; x=1711929383; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gJcTV/7h/oaLOah1BwJ6crW+D0G8jN3rYFAc5h3iw+0=;
        b=NadRAMVkIy/RYXxCgF4y88ht8Ja+dFNsKBojr37/+OXEDRr3B36fshk8dxLGMr80bn
         F7/g0C55q6MR681GeIMHBhvPpTDtPPSMAXDVfdkeR47Hh/Jj7OHXmrsQNqMuQPXsfT8P
         rm5MD53SLq/V8Hg0ZKx0adZxyUUzro9LnrH9ZCMzpnXQwKK2uA88jAqteYJwOki9VSZG
         KU7mDq4ilVFO/rkB0AycyxJX+yRBJRvA1mioUfud7XOmgfnOymFTUAuaoEtXXPUimtS8
         hCsBnvsHN5lzy+d0iHmFzaUamY9jQwowC3zpAhyeQb5zclzaVGzkVy+XBzcjOpkYxP2s
         Dsuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324583; x=1711929383;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJcTV/7h/oaLOah1BwJ6crW+D0G8jN3rYFAc5h3iw+0=;
        b=GZsXcYldwbVSJyYEEZRbyuixUCYNqVDuf+oP51JmB7vezC5TKRR9PjDipMTwDZPVLA
         QJnt3WON5QLSDxPUpbkssLB1XbrwcSWghnWdEQRwH53twOPWMokDQJLkvY/lA1fAkGEW
         V6bw6YnrlcAqsvimwtiPgnKcxSgYGI5kO6VNCpFkLdvK8gt/QZnrYENY0ietXbYM3eoS
         lJQXPOjLFl5RvDMi2fc/MitS3dlQPS3bbEP7PB++b0DH4A6wwpUvP8sN7Cu5dTC0snCX
         D0dppVeNkNLFR1d9OkW1BbqsjzG5YZbCllV2g+gXn+zrzobESaGEViAVdakIEOSP9bY9
         IVeA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUMXVcYszTlHbKjaKHd43wgRnL953Uz3reeFpxr9vshtpj5kpH6+v1GGoskThCh/HrXFqpC0hurcarx6PujbT3J7sEgovNTZBQ=
X-Gm-Message-State: AOJu0Yy0RKMS+oCJNeESl0CZNg/o1nNKEWg/kZeSsBO+oGcqC2Q2jsat
	gZ2tYESfBwTFeCjwaWYbv+DkjZanqsUp2zZGP1TxhuiI7h1N6x4I
X-Google-Smtp-Source: AGHT+IEJOmvF2ojQPL9MghTYQSYcH+quPDPueFTe0L+SsFdUg/n+HE5sQoUGmgzTP4kKawR3Z2pNUw==
X-Received: by 2002:a25:b30d:0:b0:dcb:f7b0:4788 with SMTP id l13-20020a25b30d000000b00dcbf7b04788mr3231795ybj.60.1711324583526;
        Sun, 24 Mar 2024 16:56:23 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:df95:0:b0:dcc:911c:557c with SMTP id w143-20020a25df95000000b00dcc911c557cls710080ybg.0.-pod-prod-01-us;
 Sun, 24 Mar 2024 16:56:21 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWC2qMew692pVwrvs+p0Rz8MIDW3DGTJhzOuIdQiRe1s7A4K+Oauc3Crz5iyuQx9YkeyAeNFbyyQXUyL9BrbimQkPRXHbWJybCT3+g=
X-Received: by 2002:a25:ae18:0:b0:dc7:5cb3:256a with SMTP id a24-20020a25ae18000000b00dc75cb3256amr3807463ybj.42.1711324581377;
        Sun, 24 Mar 2024 16:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324581; cv=none;
        d=google.com; s=arc-20160816;
        b=zJ+eOlt6VPlwAzfHQKNGOUucG07BOlc8nYsDFexshtDgWIeQ9HBmceL9amZQeslsv5
         vGc2OhQ2WTfjb0+LjtRPj1OfAOZYxly14kq8Z53OWLJIpjAyfPULT5G0bamyWO6x9FCB
         LiUxoRFjOYcmb47+oa5RtwoP8FVclxgcWTclLT51Z3+J+on0OELsyTCBYnudcobGvSs/
         BsIYrT64yEGkScebJ9RrD6+4JCJUMYO9QZpzOXr91ht9q+/yZ7V5hsLEkNRZJJLCwmx0
         y6yykF6zchhj8SK7GtrwIzhx8JLtWjyw35ain/1XIXPOABRJhnynPJCT/9eCMbOVDw25
         RmXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xL4EmOYh991KWZN2JoTWW1e6ishZxgC6oGRU+OrRqSA=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=q2eAIh9L+RsKrSDea4cpyBYlW2Rx0rlVFJ6TwK8jo4/xauILTXR4n8CoD6DJlai1Ev
         Ky7PBcReNaFgxsQMq5oly8vHpngKFU+2jAMms/fa3LKde0qCV42skIfySr3u0qsGYLu3
         zjth98VgQSIYLyrxes8L1l1L2Eo3c6oLYq8k/xTA6EHqQLvNZWj28f45E7K5Gqn+q/sl
         jSB+08hvJ31Sh5yUb5Ynx1QcTgN99C9I2Qml0RUXFZL+XAd9hpvQqtUHq2Se/B1NLr5S
         lkgaLldZxq9n/vw/cNtIuahzJqrc5DA/LIYTruMB6jqem0TOs1imIkPPvZN3AO2ifQj/
         3G8Q==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=FgaYvL4R;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id d132-20020a25688a000000b00dc657e7de95si357039ybc.0.2024.03.24.16.56.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:21 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhA-0000000Dzkd-1JEq;
	Sun, 24 Mar 2024 23:56:08 +0000
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
Subject: [PATCH 17/23] usb-storage: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:42 +0800
Message-Id: <20240324235448.2039074-18-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=FgaYvL4R;
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

Also use the proper atomic queue limit update helpers and freeze the
queue when updating max_hw_sectors from sysfs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/usb/storage/scsiglue.c | 36 ++++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index eb4ba03e082d89..b31464740f6c86 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -82,7 +82,7 @@ static int slave_alloc (struct scsi_device *sdev)
 	return 0;
 }
 
-static int slave_configure(struct scsi_device *sdev)
+static int device_configure(struct scsi_device *sdev, struct queue_limits *lim)
 {
 	struct us_data *us = host_to_us(sdev->host);
 	struct device *dev = us->pusb_dev->bus->sysdev;
@@ -97,31 +97,28 @@ static int slave_configure(struct scsi_device *sdev)
 
 		if (us->fflags & US_FL_MAX_SECTORS_MIN)
 			max_sectors = PAGE_SIZE >> 9;
-		if (queue_max_hw_sectors(sdev->request_queue) > max_sectors)
-			blk_queue_max_hw_sectors(sdev->request_queue,
-					      max_sectors);
+		lim->max_hw_sectors = min(lim->max_hw_sectors, max_sectors);
 	} else if (sdev->type == TYPE_TAPE) {
 		/*
 		 * Tapes need much higher max_sector limits, so just
 		 * raise it to the maximum possible (4 GB / 512) and
 		 * let the queue segment size sort out the real limit.
 		 */
-		blk_queue_max_hw_sectors(sdev->request_queue, 0x7FFFFF);
+		lim->max_hw_sectors = 0x7FFFFF;
 	} else if (us->pusb_dev->speed >= USB_SPEED_SUPER) {
 		/*
 		 * USB3 devices will be limited to 2048 sectors. This gives us
 		 * better throughput on most devices.
 		 */
-		blk_queue_max_hw_sectors(sdev->request_queue, 2048);
+		lim->max_hw_sectors = 2048;
 	}
 
 	/*
 	 * The max_hw_sectors should be up to maximum size of a mapping for
 	 * the device. Otherwise, a DMA API might fail on swiotlb environment.
 	 */
-	blk_queue_max_hw_sectors(sdev->request_queue,
-		min_t(size_t, queue_max_hw_sectors(sdev->request_queue),
-		      dma_max_mapping_size(dev) >> SECTOR_SHIFT));
+	lim->max_hw_sectors = min_t(size_t,
+		lim->max_hw_sectors, dma_max_mapping_size(dev) >> SECTOR_SHIFT);
 
 	/*
 	 * We can't put these settings in slave_alloc() because that gets
@@ -582,13 +579,22 @@ static ssize_t max_sectors_store(struct device *dev, struct device_attribute *at
 		size_t count)
 {
 	struct scsi_device *sdev = to_scsi_device(dev);
+	struct queue_limits lim;
 	unsigned short ms;
+	int ret;
 
-	if (sscanf(buf, "%hu", &ms) > 0) {
-		blk_queue_max_hw_sectors(sdev->request_queue, ms);
-		return count;
-	}
-	return -EINVAL;
+	if (sscanf(buf, "%hu", &ms) <= 0)
+		return -EINVAL;
+
+	blk_mq_freeze_queue(sdev->request_queue);
+	lim = queue_limits_start_update(sdev->request_queue);
+	lim.max_hw_sectors = ms;
+	ret = queue_limits_commit_update(sdev->request_queue, &lim);
+	blk_mq_unfreeze_queue(sdev->request_queue);
+
+	if (ret)
+		return ret;
+	return count;
 }
 static DEVICE_ATTR_RW(max_sectors);
 
@@ -626,7 +632,7 @@ static const struct scsi_host_template usb_stor_host_template = {
 	.this_id =			-1,
 
 	.slave_alloc =			slave_alloc,
-	.slave_configure =		slave_configure,
+	.device_configure =		device_configure,
 	.target_alloc =			target_alloc,
 
 	/* lots of sg segments can be handled */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-18-hch%40lst.de.
