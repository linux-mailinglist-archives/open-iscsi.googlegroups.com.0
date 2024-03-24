Return-Path: <open-iscsi+bncBDUNBGN3R4KRB572QKYAMGQELCKU7IY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C08882BE
	for <lists+open-iscsi@lfdr.de>; Mon, 25 Mar 2024 00:55:37 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 41be03b00d2f7-5cec090b2bdsf2460692a12.0
        for <lists+open-iscsi@lfdr.de>; Sun, 24 Mar 2024 16:55:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711324536; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4xrpfzNjPCp9sSB5vJxHDHNBZ6K8vg8JEyDUZ5iT8tGbQnL5FocH106tgKplugkP9
         ACiKElZ2z+BSjI6WZlDdXP4mWTGLShuw/SNKBgEdOq1fQ5d+o6K7ob47rj/GfNlsjUP/
         fTqHgHbsQ26aptJCJDh0faQzPnTBYU9NmfImvU9sqmIxlJ/zQnF+/03UMpSv5KNRb7+D
         OA10pEE+FjafgrKCqNer+DEvgwLC7sPQUrCcnwSWUTe5lf/iPZHG3caMcs1MBYCqApCy
         HPNbvekuOEph/zuv2ryQdDenavw+0/3vU5xVQLt5l6VvxJ0EtzGwyVK/RqKjwitjb6Oa
         /KuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=WtWaOvnPmABtQSH71BIYy/TIh49R10lGe0Ujj5/SzD4=;
        fh=FW7S/yV+ALNg1P1D48gFnzotCc6HUeuQ69kQfN+L7Qg=;
        b=bQ0WiGUFlsiI2a1ZcLY9QuEbjBPXGQEYVunl3bjTW0EslKtsFFmx3RkAsRm6rSWVUy
         ajKXZPf7myfnVTU5FQdPDY/lpwBCCeR4YojcwH3H+ilcUe3wZ8WPiqPiwYBmF9L7Qdoh
         3qDHtUrBrLpIEp8eI+5XtaNGi/bcxgfTIROMQHw0w6EBnFou4SYGM+mkSR6CxJieuFjk
         aC1Yq6m3sa55GWVmea9TSX+zkphNVut5Nmd1HZrPamZfJbwTIZjkLVHERcDQW3ikWJS9
         6W/8Yxsf19Y8dTRrhZv+qH22iKKSdCgj/YZI1oymAHkAiBk2S265ybG/WqjfsouMBlPp
         CCog==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Q1Gh7k6V;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1711324536; x=1711929336; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WtWaOvnPmABtQSH71BIYy/TIh49R10lGe0Ujj5/SzD4=;
        b=lcCnHUuIt0eiejwrUDdYFqCmfwclWqn4DsYqTjiRZ99l7+3URA3fXwB1UBPNIeaF8c
         R7sbWXEKtSnb65P09hfQPFkoeLAXY6bgRXIXtzKl6IZLAx2R9t/bfTAtTyUJ0anXCaW9
         7VjM10PTh8IecGOgvutAwNOvFe3DXJyvuhD2sO+ShDVgGPGkSyhXMgg6LQfFBPECzf4/
         mHyFO5VNAJtl3jeVq8IQ+R3ElS48WMnYg8xE7vH6P4gjdh60gGJ7UhL3TcvTowdSWVdh
         htXQGxFV2hdLpmMUyOfpo29u45v6H9sxJRazOGWEUwvBltdX2Ay4xe1fnhlVfwUtDaiK
         z1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711324536; x=1711929336;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtWaOvnPmABtQSH71BIYy/TIh49R10lGe0Ujj5/SzD4=;
        b=qSsIBJbTphV0KaPjKJ/RtZsByHZXEgB7fABSE9G+UCST7vsg6C9eTUH0bsanycp5Z5
         LpL6NxKTrstHGh5DZp6eeOm2Mozz2R2Vtui1UbYBdL6Q39MjI2JlAAmxCflqO2Igjmwo
         PFU4wGmxVxco/1Qq6s3YqHB6+eEC3l311ydxrrSlCmE2pfEYjQsdc//FXUhMGde67YxO
         dg5qddnMLoxkT/QsfepwlQS6TetfuGVlhDGgoGFHCJm1c6NtIua6UJrcVWTv9BthmJ3l
         vae/iqgizN/iyfnD//qpuW5iZxwLvRSMGvvEoKNiBp5iFND/1JOEUZPI/OSCmF+gdZdX
         JIPw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXP4VM3Vo8nd/GvR8C5aSRYjg6ZoNhIZke/TRCWbbfU36+eBleK3PKCHKcr/i5BxGwykbQGGaBtxMatRzbhH7NDKGv3fvkRHVc=
X-Gm-Message-State: AOJu0YxFx5zhN2WKFtEbw/AkOu1mGWLh/W3og1qAAzULpVt+lDiXFuwf
	XFlbtJJAsq4N+nK0L0AIPLmhAdkiGyzoHSPvZvRnbM7AZx5P5k+T
X-Google-Smtp-Source: AGHT+IFWPLe1L/2UwjW2Vhf3QX/lgATg4jCe4ZHpSJZITSO8C9OGKrqW8SwXrhgEsG25LVrWChutQA==
X-Received: by 2002:a05:6a20:72a9:b0:1a3:c4e9:5cbd with SMTP id o41-20020a056a2072a900b001a3c4e95cbdmr2750382pzk.60.1711324536451;
        Sun, 24 Mar 2024 16:55:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:230f:b0:1e0:b876:71be with SMTP id
 d15-20020a170903230f00b001e0b87671bels463758plh.0.-pod-prod-03-us; Sun, 24
 Mar 2024 16:55:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX6ovBAfsuUk9A30X7ciGIvMI3c19fOwDCKUVL8hghj0m2RPl5oexDzy9aIPczW/72VPiplEq79tTLuitXv9uJDfxKuvIaqnbcZnNE=
X-Received: by 2002:a17:902:8c88:b0:1de:f7cf:471 with SMTP id t8-20020a1709028c8800b001def7cf0471mr6588149plo.69.1711324534018;
        Sun, 24 Mar 2024 16:55:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711324534; cv=none;
        d=google.com; s=arc-20160816;
        b=X9uA2Xruo57HHzWu8XA0qiJRIVFEJRYpvuXLbjHzgpWIEQZzSWGtSTm7um/3K+lAJr
         N43BR5o1JCuYnIiJxCCceLJ4KukAUEHmeRl8Z8h/16GPI/rEPnfg0hYJPA/OmL+4IbF3
         US1bxQ41D+JQ+a7AU36/FVzACP1z31umAPK6OaP9qfqtdCdFAOgA0nfKXytZU/MDNr5X
         Cszy+ZGH5ynNQkEl5jUtBmlvK+ZHfuj8cLWV7T6c8xyQQwN/b4UPTsqXRBJvwpCNfkKc
         0WB/6qFM6jTemEFE5SOCWnf6AaFkkzmbHKii4xxAOzIxwp7VuQgz5izjXkBYykKlGVPL
         i9PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rf6PjrXwu7364vZU4ZL9Ykj49zwA3myfqTzlnUym/Zk=;
        fh=t86CCijjmN/1ilkIT+VdM3oaZOxEhtNXSf8+ryhWOUU=;
        b=PMl9I7boBLaB68HNCv1eGVEeCqNPbQAMM2XMPYFnmWmhVuntG2C5DHarLJP9duiLWF
         mDrEFNadbDLQz4j5BezEC/SoV/99UIMU7ZIzgP7N7887/acg29rzdPJoPeKboPtslIbX
         vHHdy25HHsDi7y1SMZGzmV6WxQOQjDY9j2jDTSioyjiq2ttuCcChuPfAnePZ5b5OvM3H
         gTvQc6o1YfahriYyxlzX9GEY4XWVoFT8yyvg5eP2HORR5TTSBu+YpEpH8PazyoFNnhq8
         UuoWEF/jn05YceCTQDUaWMibpQwv/8bwtIQ453ssrMrPMaJ4ecVAspgBFqFdAa3DYPRv
         wPVQ==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=Q1Gh7k6V;
       spf=none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) smtp.mailfrom=BATV+9b69c840030af2843ecd+7518+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:3::133])
        by gmr-mx.google.com with ESMTPS id s2-20020a170902c64200b001defa30ea2bsi263811pls.9.2024.03.24.16.55.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 16:55:34 -0700 (PDT)
Received-SPF: none (google.com: bombadil.srs.infradead.org does not designate permitted sender hosts) client-ip=2607:7c80:54:3::133;
Received: from [210.13.83.2] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roXgE-0000000DzPl-1LSc;
	Sun, 24 Mar 2024 23:55:13 +0000
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
Subject: [PATCH 05/23] scsi_transport_fc: add a max_bsg_segments field to struct fc_function_template
Date: Mon, 25 Mar 2024 07:54:30 +0800
Message-Id: <20240324235448.2039074-6-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240324235448.2039074-1-hch@lst.de>
References: <20240324235448.2039074-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=Q1Gh7k6V;
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

ibmvfc only supports a single segment for BSG FC passthrough.  Instead of
having it set a queue limits after creating the BSD queues, add a field so
that the FC transport can set it before allocating the queue.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/ibmvscsi/ibmvfc.c   | 5 +----
 drivers/scsi/scsi_transport_fc.c | 2 ++
 include/scsi/scsi_transport_fc.h | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/ibmvscsi/ibmvfc.c b/drivers/scsi/ibmvscsi/ibmvfc.c
index 05b126bfd18b55..a3d1013c83075c 100644
--- a/drivers/scsi/ibmvscsi/ibmvfc.c
+++ b/drivers/scsi/ibmvscsi/ibmvfc.c
@@ -5541,8 +5541,6 @@ static void ibmvfc_tgt_add_rport(struct ibmvfc_target *tgt)
 			rport->supported_classes |= FC_COS_CLASS2;
 		if (be32_to_cpu(tgt->service_parms.class3_parms[0]) & 0x80000000)
 			rport->supported_classes |= FC_COS_CLASS3;
-		if (rport->rqst_q)
-			blk_queue_max_segments(rport->rqst_q, 1);
 	} else
 		tgt_dbg(tgt, "rport add failed\n");
 	spin_unlock_irqrestore(vhost->host->host_lock, flags);
@@ -6391,8 +6389,6 @@ static int ibmvfc_probe(struct vio_dev *vdev, const struct vio_device_id *id)
 
 	ibmvfc_init_sub_crqs(vhost);
 
-	if (shost_to_fc_host(shost)->rqst_q)
-		blk_queue_max_segments(shost_to_fc_host(shost)->rqst_q, 1);
 	dev_set_drvdata(dev, vhost);
 	spin_lock(&ibmvfc_driver_lock);
 	list_add_tail(&vhost->queue, &ibmvfc_head);
@@ -6547,6 +6543,7 @@ static struct fc_function_template ibmvfc_transport_functions = {
 	.get_starget_port_id = ibmvfc_get_starget_port_id,
 	.show_starget_port_id = 1,
 
+	.max_bsg_segments = 1,
 	.bsg_request = ibmvfc_bsg_request,
 	.bsg_timeout = ibmvfc_bsg_timeout,
 };
diff --git a/drivers/scsi/scsi_transport_fc.c b/drivers/scsi/scsi_transport_fc.c
index 0799700b0fca77..7d088b8da07578 100644
--- a/drivers/scsi/scsi_transport_fc.c
+++ b/drivers/scsi/scsi_transport_fc.c
@@ -4288,6 +4288,7 @@ fc_bsg_hostadd(struct Scsi_Host *shost, struct fc_host_attrs *fc_host)
 	snprintf(bsg_name, sizeof(bsg_name),
 		 "fc_host%d", shost->host_no);
 	scsi_init_limits(shost, &lim);
+	lim.max_segments = min_not_zero(lim.max_segments, i->f->max_bsg_segments);
 	q = bsg_setup_queue(dev, bsg_name, &lim, fc_bsg_dispatch,
 			fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
@@ -4320,6 +4321,7 @@ fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
 		return -ENOTSUPP;
 
 	scsi_init_limits(shost, &lim);
+	lim.max_segments = min_not_zero(lim.max_segments, i->f->max_bsg_segments);
 	q = bsg_setup_queue(dev, dev_name(dev), &lim, fc_bsg_dispatch_prep,
 				fc_bsg_job_timeout, i->f->dd_bsg_size);
 	if (IS_ERR(q)) {
diff --git a/include/scsi/scsi_transport_fc.h b/include/scsi/scsi_transport_fc.h
index 483513c575976c..fd039306ffbb20 100644
--- a/include/scsi/scsi_transport_fc.h
+++ b/include/scsi/scsi_transport_fc.h
@@ -709,6 +709,7 @@ struct fc_function_template {
 	int  	(*vport_delete)(struct fc_vport *);
 
 	/* bsg support */
+	u32				max_bsg_segments;
 	int	(*bsg_request)(struct bsg_job *);
 	int	(*bsg_timeout)(struct bsg_job *);
 
-- 
2.39.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20240324235448.2039074-6-hch%40lst.de.
