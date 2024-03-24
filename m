Return-Path: <open-iscsi+bncBDUNBGN3R4KRB372QKYAMGQEOD3A3AI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B30F78882B8
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:29 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id 006d021491bc7-59907104d88sf3508884eaf.3
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324528; cv=pass;
        d=google.com; s=arc-20160816;
        b=UkG+nTGGnLNfy1Uj5ziHevmcGGr8I4CD7jkUEBpJKQeh1L01BLkPSKKg4exCdQS9ss
         XAxH5N71BD6/Q8DyTkVIuweZWUbQQ1vZjQ+tgyGy3l6U3HzWv+rOZiie6ogTVZ2zvluZ
         e5XyAh0XrgVPrRG4nh643+50LS1alQiUIRa6Yt7RaV5cMz7/LBZXTDZvbYPQmUw9mKoH
         KOyH7r4ARTgr5ZPN2D2W3MaU8k31bPTma9s7n5be+hC4XhpiN6Rte+bSeculV3Nu0vMh
         de8hVnpNsqqgMyQ7JnL82tyjgCdFkvlzy5jGA55v68ic1UKHvdbOqACzNtOKMU++VzCw
         p0Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=sUAm9Qy/fYiFVvD/caXzWenyn+Y5RgzWRE3pLDZ1F/s=;
        fh=blC6CehlpadOo8szVbLxnosrP6Jv8FtPk3FK+rrugmM=;
        b=T+/eyliv491JV1dAoJHsZHPYdZIz+3RkITZjYPjOR/4gmAnAkpp8OjnnrAcn2WWIEZ
         MeIc5lIjXN66QZ8z0UtwRdRWDlBAb0xbVKR5xkUBIBsxwUHUEhBm6Y6k0oNGW1uVk0+s
         O7X1Zyns0r65frOhSiBS0xwILpeusWh1dhD7786jT8ixOSl/GCYATXG/TXo8plEMBl52
         E0IWlerQVAA2ea96Iprv4yCdJKSSVUqz2PeE7SEs9rmJS32H4HnXS/C9sQKTCmUCf4k1
         X8Po3M62DWXHVx4NW4LxJmgPWgZOE9QFy0Ig6WTDF0AGD/4Z9M4e+uN03FSZGA3IEADm
         bgfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=T1SKhq3a;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324528; x=1711929328; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sUAm9Qy/fYiFVvD/caXzWenyn+Y5RgzWRE3pLDZ1F/s=;
        b=Vp2E+gNQ0Ahr48hF2y8G9N8SjhpBqFx007bCzluHFzlmcH9eMEGzPD42hvUxof2dTq
         sHBZuYqZhNZNSOZYp9FpSdRWBfDPrHEkVgemjRDYqtYSysCGzMy4pqZ2NHS4PYQQzdFC
         FNkqh9Yr12R0k6QhW8WW4Mx/xXwMXVPUdqv83WLfTbSUuy16v/sCZ7T3fqCeI35xmhjf
         NnDwMORVpJ5EpTrmqNmqkJiAIiJpk1TAj6DKGCw8DnzNpAqrmKosBKhdsjhDA7F5iBWE
         o74howzGtkx1NbRsojHE9NTcd2Zijv5C9FoZL3Vx/L58vvISZcfbMOLeNcN1dDoZdDKS
         ZAZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324528; x=1711929328;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sUAm9Qy/fYiFVvD/caXzWenyn+Y5RgzWRE3pLDZ1F/s=;
        b=a8COOTjSVI9DpBwWhsR7XfXvkFexDUk1hwZolWc3YtdhCpIMIuk3QO7DQ1Mn7eYriZ
         OFL5yq/0HKKh98dki+J8jQENJMTiBe+MuTDi3Hs1P7xF+keqjy7ZlJ7/SY+SR7lKDjYY
         wLaGgT7OuAVpXO7QpSt6O3RexwjbCjgQEhbvtoYRcSKwA3I2h3eGbweJfzlrByEK0Fyy
         kh/h29gYU1TXPjZwTP30bqfDxvD8BN7tM3UIhM7Vy63QJv2+TeewBvk0mF1/ZlYLn6NX
         rXNQa375DoPBtvRGws4KQtKugW5Mg6jovBmyMz5LSZowq9YLiJEldRlAQnbIZnOGrrHZ
         RQYg==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCX+LDYGCAa24FRS0Eo1U1GknqAV4hnpE43U/h5VETvQWnG0zKYe1RYK4SZ8n5i1pWtXbUm9ebkXPkfs0+tRM8e5jXCLMBvxCnA=
X-Gm-Message-State: AOJu0YxTaAj/BnhA6J0nTuLfJt+x0Gr5Lm3VUa8z/+Y41VG+Vfn1bRJz
	UeFuFYyF0j9aYOJqvvT/EUeSA3KhPVtQnfepksTVhKhA6IhYL5Wl
X-Google-Smtp-Source: AGHT+IGKammG0B2vSdIB8xFRWQTCkdpUn07gTZNu1I6jKtLE84LCdvVvzk9t/Ay1BwKjcdko1clplg==
X-Received: by 2002:a4a:ee82:0:b0:5a4:f5b6:4ed4 with SMTP id dk2-20020a4aee82000000b005a4f5b64ed4mr5527147oob.8.1711324528439;
        Sun, 24 Mar 2024 16:55:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:b4c6:0:b0:5a4:93b6:9ae with SMTP id g6-20020a4ab4c6000000b005a493b609aels3202508ooo.1.-pod-prod-08-us;
 Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXsdKodrBETkOCvd13MSe+/qPlVLrxiCBq/ktBX3ZGcEjzEkJkQ4X8PA4wqGRoP7HHAqrxY/UJv44hpYfNqyhu3FmrFJkYUdp0pbAA=
X-Received: by 2002:a05:6808:9ae:b0:3c3:8d38:43ac with SMTP id e14-20020a05680809ae00b003c38d3843acmr5648244oig.31.1711324525124;
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324525; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdjzKxI1IfcA4zyvnaDvzlOOMonYY55clV8/dQdOG5X6SQ0VFchWFTyiA6To60rn6N
         KoSbZbYqu8V8o+tZBcXBNmlAGiHo+tBRVZAq16ZFI3/Vcele5O/pTg3WgHIz0ZkfkctS
         l3xJbnUPg0+TDMYBh0dFdlky6NT53sx5VLtvPq+cVt1w5hwZA1RjXtBlxO3Bi+cJoDRd
         Y1JRkg2GaVcVmrUtFo36BfXE4iPBT8mOVr8Gl8MTZp4Cobnl8pxyGkhLI5sbLbVn4vet
         T2RJk4VDz/4ZH+uko0buudfiI2+uxSryaQBa7ia0r2rnRZ5QRSsE6RIDLJr8n5AyMWUd
         0VaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NwLMcvkQUo8PtF9LJnhVVt6koTFG/GgNCOMHm1clmTA=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=LDRwRc4mbAl9PieZ8ON904OpljCkShg0om7YUmdlBo10tm7y1NRgxOc3zu83Olcd94
         cBX19rDXIelP0ZphOal8homu2jpaxLeoSlCl/2nKP4VP14QkWqreOjRBNfrlPEgBb3VM
         Ba+nXgumWGs5Sid8gVVcLsg/xn+rA8dYb0rK96MZY+5iOuv4OHwuH9RbdQAj1XyN3VXG
         5SU3USnlKdKeFYsB9yX0e0cjNjMwGLTB/YFiNt1rAXpis30wkuDEQhafUBNp7QuXwdCy
         8KzmTtq4Zdgn1xWjHseBswsc7oGc2yVmsn+Ya8wAl7i/g3OY9R4/sMXzGB5pmiGoBVhl
         7WXw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=T1SKhq3a;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id g8-20020a056a0023c800b006eaadb0098bsi36700pfc.5.2024.03.24.16.55.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:25 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXg6-0000000DzMm-2vNS;
	Sun, 24 Mar 2024 23:55:03 +0000
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
Subject: [PATCH 03/23] mpi3mr: pass queue_limits to bsg_setup_queue
Date: Mon, 25 Mar 2024 07:54:28 +0800
Message-Id: <20240324235448.2039074-4-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=T1SKhq3a;
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

Pass the limits to bsg_setup_queue instead of setting them up on the live
queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/mpi3mr/mpi3mr_app.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/mpi3mr/mpi3mr_app.c b/drivers/scsi/mpi3mr/mpi3mr_app.c
index 0bac3f49d8057d..1dd097f9d7b78c 100644
--- a/drivers/scsi/mpi3mr/mpi3mr_app.c
+++ b/drivers/scsi/mpi3mr/mpi3mr_app.c
@@ -1838,6 +1838,10 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 {
 	struct device *bsg_dev = &mrioc->bsg_dev;
 	struct device *parent = &mrioc->shost->shost_gendev;
+	struct queue_limits lim = {
+		.max_hw_sectors		= MPI3MR_MAX_APP_XFER_SECTORS,
+		.max_segments		= MPI3MR_MAX_APP_XFER_SEGMENTS,
+	};
 
 	device_initialize(bsg_dev);
 
@@ -1853,20 +1857,14 @@ void mpi3mr_bsg_init(struct mpi3mr_ioc *mrioc)
 		return;
 	}
 
-	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), NULL,
+	mrioc->bsg_queue = bsg_setup_queue(bsg_dev, dev_name(bsg_dev), &lim,
 			mpi3mr_bsg_request, NULL, 0);
 	if (IS_ERR(mrioc->bsg_queue)) {
 		ioc_err(mrioc, "%s: bsg registration failed\n",
 		    dev_name(bsg_dev));
 		device_del(bsg_dev);
 		put_device(bsg_dev);
-		return;
 	}
-
-	blk_queue_max_segments(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SEGMENTS);
-	blk_queue_max_hw_sectors(mrioc->bsg_queue, MPI3MR_MAX_APP_XFER_SECTORS);
-
-	return;
 }
 
 /**
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-4-hch%40lst.de.
