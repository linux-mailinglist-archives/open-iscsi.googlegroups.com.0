Return-Path: <open-iscsi+bncBDUNBGN3R4KRBAX3QKYAMGQETCTKHNA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A0A8882C7
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:48 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id 6a1803df08f44-6968a5b3557sf8154206d6.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324547; cv=pass;
        d=google.com; s=arc-20160816;
        b=UGe5xKZpAJT3azSU62WxxtBBYM8FXfp2EARzo/rHdge+4nOmH9kYjn91fmXOb9DSpw
         p84dQsAXw6e+5axT1qeS2leIdYtOHLMZYyqEJsWNpaLDnV4o/KNuo3m7wwLNfmlhcXP5
         BQr9PnjLqGRf37XOTMKgi37hTnb42BeniVNRlVSvRJv1to2+aToT2Xe+r6a95kznP57p
         X6YhKODjiCczM4bRZpVDSZPKDOzuThyKvoDIouTigw8meWsdPMdHTPwKCICMv4K+wEqK
         2ZB9WeMEDdtH4hoE6Q/3xhgWbSCiTJj6X9hR2qTCoVB3kyVc5yvaLRWqy4zWLmNybACG
         WYYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=xN+r+J4yRK3GgOVnSUmcMaNK2vgE6nHw93l77yL+Qt8=;
        fh=bcfxWFIf4iuTV/qV9B12FbHVU9ylAJgchx7N/MrtwBc=;
        b=X3GKRmLbVVzbtcSe2DtQ3ZuX7/dZHFFMvdqOQVlqNRMQLieePZLPw6hsMYYFv0HEcR
         36Xs5/vcxYICYnY8rapavToDk1HDittvgPnd9jaGvLoVuzHy4g/8XcMoh9CNWm+goF5Z
         RjvcJwYBQUBV4zgMkFzGnp83KgeSAf2ONVKy9U6z4T7y0UW40cjt8OrBbhy2n3AX8yHX
         BvO+RHxJme61SgcUA09eKjXMMD8WKo3ybMgqp3c0X8zqzWCYoUMBjKJ5Ld+k3aJi3Pzj
         ykb26b1kEkt2r2Wfv6d/bn2BlLBgnoQlH++E6tvMMyKbxds4b3FzGPXoL50Z8DWUyp+5
         Fpmg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EKuYXNlp;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324547; x=1711929347; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xN+r+J4yRK3GgOVnSUmcMaNK2vgE6nHw93l77yL+Qt8=;
        b=eA7XnvTzDQfcOH1KgVQ/G0O+kKnsMpEEM9RSh1vOnteB4iYYjOcnpsL15r6zbqoyEi
         dDQLmrTrcToVs+t6wq/TEYfLQ3uMl1FeWyaVZmzFj9AJfO+yZUjrDcAXaimgONcp1FzZ
         0qwb1dgRP3Y5FTgqv8N59fXgakPqA4gNUCq2jJG/8+HWwdEL9JsdV49KgT+67OwWfIhp
         0DiAPAQK4+Ua6DDB/T6HYQP9AoiJ3YvJb6JfTsDvKBBQ4OKKgTDvEH5QpNeH5p9uBGdR
         Qa5o1plDVknri7baoeZN6RvY3zDmU3o9EYzVVLCx4U9Ra23Ep2ydN7ATJlr2tQVmVBfe
         QWag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324547; x=1711929347;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xN+r+J4yRK3GgOVnSUmcMaNK2vgE6nHw93l77yL+Qt8=;
        b=XXXG8cJ02jYfpEtm8uPGbIZ4kzAu7BUIY/jxmZcYjfQW38uO3OHigTvA/MY/dfGRXO
         Y8afwCf4s0NQKLi+TpJOZOMHtIWu/Wpyaatf9bGUB+G3yZ9h1tI6qkAP4/dgxkmUUH/S
         2/NefWOcnmpvmLSmBxPLsEeUttgkNBBVnqzRcON+WXX6NlRxiLoFrFcR+4dwjfl3NStO
         8rZTSfpiB0DspZxmFFd1eF4nLvIdK+jsjTw1xFuURhOJ5Fb0NQJYXf19GIL8o51VVvaK
         9cgP8RVnrAWrQNmIkArqWrg/EMPWz615H+wBJdNmdce6G+961Gj5qydHAorjrnUceVYm
         r3mw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUCRMpQwmIvaZRBoyLnwC74ImAtSDNA5uTxKK9Ow5DJ9Z/gqkDl9N+kmsg5i77yVErc44lQzO9DXQ5nueThMpCNU5uxWlQUIWs=
X-Gm-Message-State: AOJu0Yxg4gfNG1IU5E8fDjREZ5t6+5U4QjYHq4HZV1Ym9lRmpv1dFFl/
	xZT1LTUAsckBbFkTL2dQJh/J3Q59r93a73hfi9lN9Jdbx6mNbvFB
X-Google-Smtp-Source: AGHT+IGdLmQSBMsoC03O7ndCdrFt1il+gcF+T2fREASPKNGTjWF+ZSbUXYWNWCoZ9V+lorZk6bg1lA==
X-Received: by 2002:a05:6214:1d02:b0:696:52f7:d856 with SMTP id e2-20020a0562141d0200b0069652f7d856mr7144881qvd.23.1711324547617;
        Sun, 24 Mar 2024 16:55:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:2583:b0:690:b24c:3759 with SMTP id
 fq3-20020a056214258300b00690b24c3759ls2504474qvb.1.-pod-prod-01-us; Sun, 24
 Mar 2024 16:55:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUPL4dEf+AJc9OK5mHcIhEIdDOq5goymNDvSJB2aSsmhBFfUfZXrTjToFbvOSnTolmhVGLjb4ScqK9MGwMrfSpaqwdldTHzGmdOcYI=
X-Received: by 2002:a05:6122:4a05:b0:4c9:2540:8520 with SMTP id ez5-20020a0561224a0500b004c925408520mr3053887vkb.1.1711324545553;
        Sun, 24 Mar 2024 16:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324545; cv=none;
        d=google.com; s=arc-20160816;
        b=1LSxxVeCDY2YjrktRIis89llP4GwoDkQmH0aZfZr6+VTSe3TNkAHj3y6XercXuzaFH
         CRAC1KlFd6mMaRMamf0cMeDRCRDUI7H9yQb2LDIDvJIlV9t8yj5+ITiVvxCIFprw6exT
         YdkYQec9W+e4D/kc5wi/z007X+ldUNJ0QJm/3X1HBnFsIIPnjFCzmgZibvo0a3ZvQJZO
         63egslFqUErBOHCpqzoHhDReXcIniUjB/DHm2ejExgHo72pAc1lSzP7QkAPDywrPmNUP
         QQ0C7XLWK0hN2n7sMVvbfhxKXp0jLE5Y9xUjnybEmeQmhgrvQlOX7MKCWkp8rtWHssYU
         qQ8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QpEcu6br0nAm6nvHblhU5Wfkb8gpPkNvyq7w8yaKxUI=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=CqiNANhmrxWh6TpyzL+dQ50ABnwvpaCLVyG17UI8JDqU3NH3mpRiwTf/zwZqPr7QB6
         feOmvL1bNuk/5c7nyBaURYdsWhlI2M6ba20LtEqhIzs8BWDNerf5aVpa1OS1jMwY1EC0
         VocC+komz8PAVlsnOhl4qKC3COYt8wmwVOq4nzN6fIkyXta3pR7WBWqi3S7VaGlem1Mc
         pzq9k8QxfG8uN99pvoFQagABae4qeGyCJN62zDUB8GfgPes09sB4qSHK8tlgOhUm+klm
         ISz1DIHQQxXIRqD+jy96jhTbFjFLYj4WDfLFQi2xrnMlBwOSgt/f3lBL7hfAiQMQI4bW
         qf+A==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=EKuYXNlp;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id j17-20020a05612212b100b004d8995bf32bsi293vkp.3.2024.03.24.16.55.45
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:45 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXga-0000000DzXo-2oPb;
	Sun, 24 Mar 2024 23:55:33 +0000
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
Subject: [PATCH 08/23] ufs-exynos: move setting the the dma alignment to the init method
Date: Mon, 25 Mar 2024 07:54:33 +0800
Message-Id: <20240324235448.2039074-9-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=EKuYXNlp;
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

Use the SCSI host's dma_alignment field and set it in ->init and remove
the now unused config_scsi_dev method.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/ufs/core/ufshcd.c     | 3 ---
 drivers/ufs/host/ufs-exynos.c | 8 ++------
 include/ufs/ufshcd.h          | 1 -
 3 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/ufs/core/ufshcd.c b/drivers/ufs/core/ufshcd.c
index e30fd125988d7a..7d593395aeff25 100644
--- a/drivers/ufs/core/ufshcd.c
+++ b/drivers/ufs/core/ufshcd.c
@@ -5262,9 +5262,6 @@ static int ufshcd_slave_configure(struct scsi_device *sdev)
 	 */
 	sdev->silence_suspend = 1;
 
-	if (hba->vops && hba->vops->config_scsi_dev)
-		hba->vops->config_scsi_dev(sdev);
-
 	ufshcd_crypto_register(hba, q);
 
 	return 0;
diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 734d40f99e31e6..7ffc28e2278420 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -1187,6 +1187,8 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 		goto out;
 	exynos_ufs_specify_phy_time_attr(ufs);
 	exynos_ufs_config_smu(ufs);
+
+	hba->host->dma_alignment = SZ_4K - 1;
 	return 0;
 
 out:
@@ -1510,11 +1512,6 @@ static int fsd_ufs_pre_link(struct exynos_ufs *ufs)
 	return 0;
 }
 
-static void exynos_ufs_config_scsi_dev(struct scsi_device *sdev)
-{
-	blk_queue_update_dma_alignment(sdev->request_queue, SZ_4K - 1);
-}
-
 static int fsd_ufs_post_link(struct exynos_ufs *ufs)
 {
 	int i;
@@ -1583,7 +1580,6 @@ static const struct ufs_hba_variant_ops ufs_hba_exynos_ops = {
 	.hibern8_notify			= exynos_ufs_hibern8_notify,
 	.suspend			= exynos_ufs_suspend,
 	.resume				= exynos_ufs_resume,
-	.config_scsi_dev		= exynos_ufs_config_scsi_dev,
 };
 
 static struct ufs_hba_variant_ops ufs_hba_exynosauto_vh_ops = {
diff --git a/include/ufs/ufshcd.h b/include/ufs/ufshcd.h
index cb2afcebbdf514..061919448d3936 100644
--- a/include/ufs/ufshcd.h
+++ b/include/ufs/ufshcd.h
@@ -373,7 +373,6 @@ struct ufs_hba_variant_ops {
 	int	(*get_outstanding_cqs)(struct ufs_hba *hba,
 				       unsigned long *ocqs);
 	int	(*config_esi)(struct ufs_hba *hba);
-	void	(*config_scsi_dev)(struct scsi_device *sdev);
 };
 
 /* clock gating state  */
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-9-hch%40lst.de.
