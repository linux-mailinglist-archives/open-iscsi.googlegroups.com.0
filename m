Return-Path: <open-iscsi+bncBDUNBGN3R4KRBFH3QKYAMGQEYPUEB3I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F898882D3
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:06 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id 46e09a7af769-6e68c647f5dsf4248364a34.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324565; cv=pass;
        d=google.com; s=arc-20160816;
        b=g/1kmxUiDSIKeldJKfT+eKGnGZ5RwdVnA0Tvi6QdkRZn/T9fIbe0lduOikkYp9gMJ5
         pKJvrxg5liaWeHHYzoiPZrnoF084g6fUtCFqJIA2why4uLWtDY1NpiihDKvIqWbCOcwq
         Mb8BKUMN6fjE59L7Ycq3T4I1j3t0XYpFZjoYZw9FU2cAWHaVZOEfxchH8QBdKKAZBFPd
         RisOeU8loZDtI9RuLPSV7kz+5nD24sKTiIC9phgHUN1cxqORhuOP3/iJ7GbDvkmVy4RU
         6XI5A+YUQT2hWrs+cqWCQ52nJYu+pXn7+B+WwgfMPJs3+9VVGBFpjhp5LbUj247gBaf9
         A+iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=XYwnDy/bzhCBJFmw1jgbXgD1UIk9NTzxG4LQ2y41abs=;
        fh=hzzPPFgqeYzcVWXOEg7/uA/J7doBhFy9Zu5o+SmeQ0I=;
        b=FjK3tVM6QKfwexhqFTZFoq7+hF21aOPv8wq96X61sfnjm4vJd4BKDwP+mm9CkoJbv2
         tceYuTOLFus3B2Nur1kbqHnVMLz4dLUJ5IEz6lUv3ajAc3qV+0GxPo4TrDcrsPhcZGRQ
         gqFTVUsFu2RI2YAu5BxluGoll+LVxYC9P8L6oj6VWJfdr/Z1Q7hLBJpWa+4v6Un0/KH9
         XjKQlvTZSWqRRwww1qZ3/UOHDxo0RPYtcacDJMcNY9z9za5LxB5COl/wauJBr08fdEhd
         1LqbHtO/26lZlj8mSiTIdJKHdf22zMQAGUX2WeSm4K0++wCGVkrMPQiSCQh2qqgF7RZj
         VbCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=dzdtJUHE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324565; x=1711929365; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XYwnDy/bzhCBJFmw1jgbXgD1UIk9NTzxG4LQ2y41abs=;
        b=xCWuT1IK4GyptEw4MGWJtyYhqpCdbynjYYfmcfJrYW3WtCpT9koFfEp3dLskLRcX8B
         hLwgLnOLGuVNpTgQePTZ81q5jiz8TvhyRQo+1lUAnPEOpssS1HkP/mia7NlejSChmPXt
         MlNOagLI/KhxKlG7TR4w/EfHMlQxmyv+7a1voFS6qZFVca5RgfDX0uYpk9V9mWcTzVmp
         MV/uFKDLMA99kVwMRN5L4imqi9fYeqtzX8++j9xD2sRH9r7wQj6r+suRJLe+q8ReTrUG
         FFAkkzbwCR3q231jGqOyPw2IWDxES9oEq8JI9Bgdt7j6ZOhrbqCYhzz3Qb20S7dHwMQ8
         I8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324565; x=1711929365;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XYwnDy/bzhCBJFmw1jgbXgD1UIk9NTzxG4LQ2y41abs=;
        b=C20LLbOnBM0vAnY1Mw7JF0bfQ82e1RcfQY6dCElZgjOSGEnQM9AhR+G8VepIqYOOPU
         dEUagC+jTMYevVTF+HvSmaLoesmdVGlvk128dm6jHsnFhBHDV42PZMOxmdiXOZCAK4Ai
         Zi0tpFt/iKLMCpQelFs+kOE3azvOTalHgeF6Pw5CGZ/HiCjQwCpNXiw9xeHHt3IuBpxA
         s3AvWSNawnAy6yRULSF7kGrcY+56COUzrOerCgy7fdnp6i3bo/8UM+h8GkaFMDsPEr1o
         T9GlnawfnEvryKkcax/O2joqCEJZ0uFs3lDTn5iq7oXj4RMX7C9fjKxV0mTBKRSYXS8M
         +Ljw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXNFZpjIA9i8uTr3GSuyPmAG2vRY6ryo7gUyrz4mt17WPWZZRu0YnLq/Pr52wcRdSqT+Ijv0OxWVKX2A6HSfzLoQBy8tDME35Y=
X-Gm-Message-State: AOJu0YxnnI+AICCt6Yz3Rzl1TecH9l/me2fNLVccG4lsifIGPoFY9xCV
	PfOYct+9qXZ4fxDVXw/Q1mMMap9XbA1P8xcLiVhTaAWtXLB+aa5b
X-Google-Smtp-Source: AGHT+IGTBnw3Egdg7Uvfw8/i+0X18pugPv1Xp+vxY+aHdhO+dyUqgwmm+kI17gtoPj/NyBdNGcOpjA==
X-Received: by 2002:a05:6870:938b:b0:229:f9fa:df52 with SMTP id b11-20020a056870938b00b00229f9fadf52mr7101119oal.12.1711324565423;
        Sun, 24 Mar 2024 16:56:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:a28:b0:6e7:49e2:6e8f with SMTP id
 p40-20020a056a000a2800b006e749e26e8fls542945pfh.2.-pod-prod-09-us; Sun, 24
 Mar 2024 16:56:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUF3UgH45OqCI/n1WxhsXASSwE0iimEzIAJLfuKP3BXqYIg6o7Q0VDL67rqGQlk4nrSD0scDmyra481My3tA1MfqnrNUOGIYIA+gPA=
X-Received: by 2002:a05:6a20:299e:b0:1a3:7de4:4d35 with SMTP id f30-20020a056a20299e00b001a37de44d35mr3603012pzh.32.1711324563100;
        Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324563; cv=none;
        d=google.com; s=arc-20160816;
        b=cfbunjVUn0wgYqixdEfa5MQFVdrEtzeHBbOmfjjYQI118HBdN9yRIQTlIGX3BWbOTk
         JZ70o7D4KPDG1Vf8d7VWMU2kjZXmApqDiB5yEM5svrOeCVMIEykVhpYxYbPx94Ss5j5Y
         ODK/och4xwecgK9z0+oqAjBI3VL7Ju6CF/EtKYgyQVGxapCpZ2bIhXYhZtnLfXZ6RYcC
         LwpwhHQPXTxQFw5/BViUSuthG8e+chZOv+etryz70yF89xmwNv0yVQ6QHlJ2eQhX7zIo
         8S34Jv1MnrwLZhQ4Tmuh7jVSgqshGmmC7OstibiPsTWvHk0ReYiPNhja7wFmbPzCDgR/
         nyBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RnCyo7qhwq23D9tFFvSbYwOoXaeTJSw56vcXA+xjGxw=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=CidqAgWeiGJ2FBtlYfS5im81uXlaZhY1/MXVobYvbVbq0Tr5/I/XlY5phmHAuv+Sg5
         C+mpof66AnoUN5hIO9sZuky/GAxmh33YOvuW9H0MhJ3crBR5C277W5vSkJzUGABTWc2A
         WtE8wisr4MBnAXNz2DVT3j/5yEM0sb0htdxbT+w9/6zh9/VoJtZ6y82KMWPQfQRsHtIy
         jfSbaHMjdBHyWr5Wd6aqcOuarpKGSnxkedM+/cpekOoifjboKq0gRowlZHP16SjR7FMj
         n1uxKTNxy5OhigdBN6tDaVw+eyDa+ByXY/DRKP8Yl06J/RkSdtxhQ7suAy8Wp5J3uWm3
         JhVA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=dzdtJUHE;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id w33-20020a17090a6ba400b0029f77492dddsi889686pjj.0.2024.03.24.16.56.03
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:03 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgt-0000000Dzej-2z5n;
	Sun, 24 Mar 2024 23:55:53 +0000
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
Subject: [PATCH 13/23] sbp2: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:38 +0800
Message-Id: <20240324235448.2039074-14-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=dzdtJUHE;
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
 drivers/firewire/sbp2.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/sbp2.c b/drivers/firewire/sbp2.c
index 8f7810b2a4c10f..827dee0f57dde2 100644
--- a/drivers/firewire/sbp2.c
+++ b/drivers/firewire/sbp2.c
@@ -1506,7 +1506,8 @@ static int sbp2_scsi_slave_alloc(struct scsi_device *sdev)
 	return 0;
 }
 
-static int sbp2_scsi_slave_configure(struct scsi_device *sdev)
+static int sbp2_scsi_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct sbp2_logical_unit *lu = sdev->hostdata;
 
@@ -1532,7 +1533,7 @@ static int sbp2_scsi_slave_configure(struct scsi_device *sdev)
 		sdev->start_stop_pwr_cond = 1;
 
 	if (lu->tgt->workarounds & SBP2_WORKAROUND_128K_MAX_TRANS)
-		blk_queue_max_hw_sectors(sdev->request_queue, 128 * 1024 / 512);
+		lim->max_hw_sectors = 128 * 1024 / 512;
 
 	return 0;
 }
@@ -1590,7 +1591,7 @@ static const struct scsi_host_template scsi_driver_template = {
 	.proc_name		= "sbp2",
 	.queuecommand		= sbp2_scsi_queuecommand,
 	.slave_alloc		= sbp2_scsi_slave_alloc,
-	.slave_configure	= sbp2_scsi_slave_configure,
+	.device_configure	= sbp2_scsi_device_configure,
 	.eh_abort_handler	= sbp2_scsi_abort,
 	.this_id		= -1,
 	.sg_tablesize		= SG_ALL,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-14-hch%40lst.de.
