Return-Path: <open-iscsi+bncBDUNBGN3R4KRBMH3QKYAMGQEAU4TAFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 701F48882E5
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:56:34 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id 71dfb90a1353d-4d42808a94csf1822545e0c.2
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:56:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324593; cv=pass;
        d=google.com; s=arc-20160816;
        b=kAby4zV9LOXEtlY1KKeDz9gCxurSSxQxMg7ug+tCLZZbWGSaKWCrFSj8Ohjjk0HR4z
         u3c8Xk24xHH2SHc+kOP3/HikFPreOWzeWrJHLA3hJ9dw0vP6TzuQVn2WXAD1BLiubevP
         6gnuWXpwS7/2vzXvNWTQcTNJfTc7lSwceGkkjWdKaNNFaWZL98LilRkk7UccJhuvnofQ
         JqWKuMPlnFPIv88lPqUcSZbNyNmDWFegF+J55PSGKFDZPYr6ax6AUKg+se/6PvCoYDps
         y3j+SdnNCeO7TEKhz21ZEzIoIcIoawu7IF4/ObLPwPN9q41dr3o3NuxYoLrvYvyh0qpX
         oU0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=Fb6pHPPVQp5+pHAyef91CidojM8B6h4v6MiH4uiro20=;
        fh=qL8cQZBjjbpCDASK2nW1V3UI0Fbu6Sn4Dcv7bzWk0n0=;
        b=O3Jsf8SL+BAEG085vr09pQs4e3n+NHBHH7rwz4FHAePwR4emEObvYeUj+8EZyIUPN3
         zm19dqnEAWsEqZXLqyReR0o3UAEM/2aHMHhTJSx/97U+yi7d6HoFNEaE/m2df9DwcAxY
         MvGBIJvZ5rw//jQLGOya9lBf/8kKvGFePbydV+aMWfiRNN1AYJBXw8Ur3FsBNIb8L/W4
         KoEEYh0zYS6FS6eZsjU/iyQ/574OyW4MsK0nzPWtJ+kNXY9xlDOzEPj66t7HNZWGhhJ6
         fu39aMdwY2UBI38HbpMHG/p18lCT48hEVBNlEKsQPVSZCqopZi9wtLs/ccFWLszxkmy6
         OYlQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BxmLEFjh;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324593; x=1711929393; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fb6pHPPVQp5+pHAyef91CidojM8B6h4v6MiH4uiro20=;
        b=HCPedJt9c+ehOrX/cGq/EL7DEvnfS5oepogeVm1VAGVlOVThckDC/yzUdrpNY4A6ZV
         A8JyQddVl/sMZ/CDqSrqaB8p8fjxYH5NuMc/oUDxG3jNQAVcpGEV5sQkv6F9xDeFCCoU
         kqytXr8DEBorckCK0HcQif5MrTiR51nmHinAuTF1lt5bMLWBN6Jgwvm0Xdt56n65zOe1
         L0/WJAy4v7aCzDIRyi8ZZFjl4T7ueorxh2kGOYGIIupu/STYU3NDF+tAYSbtmenssk/V
         trPXO1aG5APFit++qLAiUBv7xu4M6taIZqmjeqXaYP4Dj1eoabJFd2emljT8JqitOwZ/
         yppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324593; x=1711929393;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fb6pHPPVQp5+pHAyef91CidojM8B6h4v6MiH4uiro20=;
        b=ad4lLHkvfEKnbsIhn+JDN0AkbMYhsBiSwdIAaiXgEAu0CoN1xQfBoBPdVPfAJom/om
         CB0+H6juEOI/mdMNPGYvuEnIy6XT4/GEAfKlGv+PU1OIlt3PDdrKuo/MbowhobCvTOjO
         GtwdxUNZYH76P3gvASYQvbG8le2aBevHbaQpP40XFv1VsnBV+TLdMDtWlfdiRAh8r7JG
         jQz0dYGuC053gMcvwjPDV+d9C28ErO9mXIxhFvcikkfUJ03PBepnG6mV0SBYUp33hD01
         89MMpulTIQlk2K17lSOb0Q83PoCWd5JYiad2PgGUYyiS+9h6D+gwDFKNXRE8FGKYZ4NJ
         4gYw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUfu5DttFBYSIy977UHjKvXEMByb2qvlcVdvLX7GPB81/HLvl/GZK/QjokGNSezsUjp0n/QBwe4zjL4E0T3CzWnpS/rFt1pUaE=
X-Gm-Message-State: AOJu0YzZclORKj+3v+yVPmWxcyeTSyDd22OO5bWTfPi71hPm9yaKQSbg
	Z6NX8grtCE61aAaL7Ox+AxRbnE6OkQ7qBPW1ZVvoPNGnrProuxGb
X-Google-Smtp-Source: AGHT+IEmV45yeCIBs5FQz7pbqiw+DbUVE9Psvf+PdJesOBBh8/uKXqnt8aplNUf2EdPGbkhRmC4xKA==
X-Received: by 2002:a05:6122:1d02:b0:4d4:eff:454 with SMTP id gc2-20020a0561221d0200b004d40eff0454mr3395811vkb.1.1711324593265;
        Sun, 24 Mar 2024 16:56:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:e8f:b0:696:920b:5e1f with SMTP id
 hf15-20020a0562140e8f00b00696920b5e1fls141070qvb.1.-pod-prod-04-us; Sun, 24
 Mar 2024 16:56:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUyJNMWDxTnVt8NgI1LUFP55T5IdYQSQKVQtrNe+qZQnM3Fq8CkRswlJuDr9/5rzJUxlcFcy5LuZzD3zYbpA2Cb530BBlkWbejin3Q=
X-Received: by 2002:a67:f242:0:b0:476:8f7c:c2cd with SMTP id y2-20020a67f242000000b004768f7cc2cdmr3877527vsm.29.1711324591275;
        Sun, 24 Mar 2024 16:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324591; cv=none;
        d=google.com; s=arc-20160816;
        b=UaSsXWkTryZiLi79va1iv/MtCF3X2n786mn2jWFan3pXYCuszFQopcWE7NeDmFVrNn
         cSf4u3AoxYWmwijxmnQ0shWUhS1dYRQKJuruntHl4PSGuPBVJUfkCq/XT/gYFlh5j9bn
         PAMVunGyhmwR+hg6oVwtNzqT2kkNTWrS70cy4im8wfb9Qx1uxfh+TtvAbE3PqGWA0HNc
         GofmMXqwh0j8Y/IjUKyRvswvUqPBySfjQUFf2WQOxgfrUfpBnBhar3I1ifx/z51T+IGp
         C2TdaFxmw1fKxr3ByZob+JUS1APuh5N42hYASDqMIyYnkEqwflmQbB+MJkIQltO1qLDf
         1R3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yMGFrF3LheJCrf/D4KhM8BR2BJhl76qK/2mYCAf1jZ8=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=J1Zditvrk/YhIeFUQ0qXwB8NJkRxKoahkP8PXF5WfFsxv0ZZn+vNB0YC7jVm1nyNQc
         u6KsXrPswbs9E/vDUUd3dK5qCdOwIB8bYyMNJBnLIp7EsoUSV+6fPoWG+LFUA2hpEtjL
         YoTfu5G20UaW/mZmn+6Jqfia07WD319ypyroQbMVyB0AdI/r+1A/G56UQ18DhXQiHJIV
         +oF6IKwUBb+qXssqQTkWgaIc4+QUPiAMf9/cOpKskKbBjQzBgMGWmVBbqbHGL2DVw2Sb
         YJ9V36zyhlZV7vUEPcsc71m8Y7uZTOs0ojw9Ce07c3J7zXrK563M6CZL7NPR+/DZhVV4
         05AQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=BxmLEFjh;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id p16-20020a05620a113000b0078a256a1894si304691qkk.1.2024.03.24.16.56.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:56:31 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXhK-0000000Dzo3-1bM8;
	Sun, 24 Mar 2024 23:56:19 +0000
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
Subject: [PATCH 19/23] pata_macio: switch to using ->device_configure
Date: Mon, 25 Mar 2024 07:54:44 +0800
Message-Id: <20240324235448.2039074-20-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=BxmLEFjh;
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
 drivers/ata/pata_macio.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/pata_macio.c b/drivers/ata/pata_macio.c
index 4ac854f6b05777..f046bfa5c6e7f6 100644
--- a/drivers/ata/pata_macio.c
+++ b/drivers/ata/pata_macio.c
@@ -796,7 +796,8 @@ static void pata_macio_reset_hw(struct pata_macio_priv *priv, int resume)
 /* Hook the standard slave config to fixup some HW related alignment
  * restrictions
  */
-static int pata_macio_slave_config(struct scsi_device *sdev)
+static int pata_macio_device_configure(struct scsi_device *sdev,
+		struct queue_limits *lim)
 {
 	struct ata_port *ap = ata_shost_to_port(sdev->host);
 	struct pata_macio_priv *priv = ap->private_data;
@@ -814,7 +815,7 @@ static int pata_macio_slave_config(struct scsi_device *sdev)
 
 	/* OHare has issues with non cache aligned DMA on some chipsets */
 	if (priv->kind == controller_ohare) {
-		blk_queue_update_dma_alignment(sdev->request_queue, 31);
+		lim->dma_alignment = 31;
 		blk_queue_update_dma_pad(sdev->request_queue, 31);
 
 		/* Tell the world about it */
@@ -829,7 +830,7 @@ static int pata_macio_slave_config(struct scsi_device *sdev)
 	/* Shasta and K2 seem to have "issues" with reads ... */
 	if (priv->kind == controller_sh_ata6 || priv->kind == controller_k2_ata6) {
 		/* Allright these are bad, apply restrictions */
-		blk_queue_update_dma_alignment(sdev->request_queue, 15);
+		lim->dma_alignment = 15;
 		blk_queue_update_dma_pad(sdev->request_queue, 15);
 
 		/* We enable MWI and hack cache line size directly here, this
@@ -918,7 +919,7 @@ static const struct scsi_host_template pata_macio_sht = {
 	 * use 64K minus 256
 	 */
 	.max_segment_size	= MAX_DBDMA_SEG,
-	.slave_configure	= pata_macio_slave_config,
+	.device_configure	= pata_macio_device_configure,
 	.sdev_groups		= ata_common_sdev_groups,
 	.can_queue		= ATA_DEF_QUEUE,
 	.tag_alloc_policy	= BLK_TAG_ALLOC_RR,
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-20-hch%40lst.de.
