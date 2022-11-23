Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYVA7CNQMGQEPGQRNBI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC8D635CA8
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 13:21:57 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id 62-20020a250541000000b006ef62e56e90sf2618348ybf.7
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 04:21:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669206116; cv=pass;
        d=google.com; s=arc-20160816;
        b=djvi+vG0kPv45Z1PuU+4Pz9GnFoKxYVtzHpud2JikO0Rhi8xrYjH8pxgoRl+wG+oyC
         Rpt/Eq5TZpeNyzXlOtxkUflpUAAToBz3avKh1mzhu3W+LWRXOEgQ1+S4npxGIrlhrvwB
         6OMiQZMP8n0uBIQFWRb1r+j+Ep4dIFMK9r+3D79ULRma+xrEFko8V00mZ7fjbfBIOPLn
         fx1ZyNoiJ3teNYk9J/z7vMJ5P7Ikd70VZZA3LR33XA1Imc6nV7DBzua33Lly/N8u2ceI
         Vq5O1N861heMKOg8PdLZqSO2snQXJjgbgPKeL8/ortz45wZyT8p0nszudsgAM98RAL97
         t3nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=WrrpQGfpixd0ZFmKUZQwIwXZrRfS3gMN7TEQFLUPNAI=;
        b=dkF4SS4akB17eFyEIwu/KHeCb+ByvCzu6EisyxfVZ/fhiC6TMA8ytvrDmuLz7/IOIl
         ZBliDPAPluir9mh+tBtBVfSE6fI2lrcQ431Bk9woVB/LKpZ9tWeuIO7ZeKz7b4KGNxA0
         dgsLptFQbjwfS6yy+1/oxtrH+xyGSu0/eQuWms2BsgZ0K3JItLqRV3Wmva920ZfHzeLT
         uJ/N6ylRcD8I7Fvr/NQYVa7CEudxF1rxEXxCNXTuUPTyvQIBXbxXzqABrdLJK+7KKsG4
         QP3BmiQj+BEpAApOHdn5bAGZgbaJ4CgfCy2Tjh+NShhBK4sPMYNAZgUxT7mLAwBmqoVd
         5qMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WrrpQGfpixd0ZFmKUZQwIwXZrRfS3gMN7TEQFLUPNAI=;
        b=SZUIPdFCtY2MNwN8RpN9S9RXkxAoxt1E4W6xcEBY8Bl/U7sdGpSYDe1WwGwAHbb8js
         Mtdy/vMqAAN1tWw81GevR9GXRgXC6gmMSkX/S5bBGC+MiZk8i24rQ3U1haUm2VKjGIop
         BFvpAj74/3IZCZ8dxgxpTYV24RdBOkY15ReCoxDspEZzbiF3lE3va4YtgvHmpfULcWin
         M9ayY0P7SzDOC8ixBJCEwE2yduraOMPJIlD6yOTy1E+T3WVuoeWp9BJy2egu1djzijAH
         hC08iXWS61+rCd+emHKcsLFZjpqNisevzy2B+tDfv5kdLRdeEWJyF9B+1oBVwVYV8CCs
         eQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WrrpQGfpixd0ZFmKUZQwIwXZrRfS3gMN7TEQFLUPNAI=;
        b=UL4U0emcZwnblMrg4PBRVoZBkG8c6qlqBJWoIwGjXQcAsdIWDZClryYHRGQJBUkfIa
         aBZTXLXFSQmzzySGnn4H1zPRgRyYV73/UgunzlY8kD3E/mtvnMnxbHtS6BjkQaHhyuJ8
         vl1Ik1CTERz51ndgk+gnmErRgn8ZgOxoxvkf252QWNDTwHlEKmSGzT+Ohz4PxwK5bg5Z
         +cCs1Z7pbpki1A4aPgg1gJiWhsLjkQK8ec+Ht3/eU6qvPTu2NdlBX5zu/5tU+tZ7vQ0T
         hNLtWupE5r1v3t8VEDxnBwiDZTb2YF/7T8Wld4Km2GrE9n4N1UTG5pAZpEbjA0AQ5Ca4
         GyIQ==
X-Gm-Message-State: ANoB5plzkJxK3r4TCUEtHIIeFb/1nRxT4m9NjWeRir3wrOS9T+imb3wy
	XjXYgObJoR8VFwZXgwUAvOY=
X-Google-Smtp-Source: AA0mqf5P+oBsqxdHl6GkMNDnufmxCuiI0SkBUlatBbZ132bX5eyeARrMyF28E/dJMnzL9LHyOXvCfA==
X-Received: by 2002:a81:552:0:b0:367:b4b3:3952 with SMTP id 79-20020a810552000000b00367b4b33952mr26968439ywf.508.1669206115881;
        Wed, 23 Nov 2022 04:21:55 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:9881:0:b0:367:447d:fe68 with SMTP id p123-20020a819881000000b00367447dfe68ls8441139ywg.3.-pod-prod-gmail;
 Wed, 23 Nov 2022 04:21:54 -0800 (PST)
X-Received: by 2002:a0d:c105:0:b0:37c:8e96:34a0 with SMTP id c5-20020a0dc105000000b0037c8e9634a0mr8745279ywd.444.1669206114139;
        Wed, 23 Nov 2022 04:21:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669206114; cv=none;
        d=google.com; s=arc-20160816;
        b=DxcyUTY0wukEU2FiozFof7lFzKQIuLrUIOy6MTC30D7ZM2xH6ZV2k9dE3AaOP8p7z5
         ENzIZaDvd3oIOdQLM4cXKH6jOftVWbIfDJNnyRktrbq9C1vGAYPcyD6lA7DoiSsbJ1NQ
         fTeu/EbIKOkzcsvaIRl0yvyrNsfQGsq+D6TlYlKEzZ1amCWURRiUrN/UhVXtMPgsw100
         iEoAcc3bS90hEASDyELB2oc632LBVNlmiQhi2Xu9zvvDItAvYHIuevFlNeoo5FSHe4ab
         s8RlIu1gM5hRiu/M3F/da2I7b5U+92P9+A6MSvelpc/PiV6XCDQNtABV0xTy6NKt7Tcy
         Mp2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=HMMHGb4YeWCEe58+IL/3PmOmedDUK7noYyhiLZwiQBw=;
        b=FMW/gMQCHxnzUGKOSKcXCvcwPZYUdvp/D9Jhy18znNonmNyVilgXgFWA3xehkxXl9q
         f+kM3panhDI522yzaVpNaJI0itdaoUwXx+j9UWlw5gWQ3OPA1OrxlkoSZhh7SQjcbi0K
         CSnn8Jy8cMnbhh62CdPhcQCYSzq1rEXTr623BZitZoJpj1MSfIcRxIqXhq/yq/nM40J1
         sOci86lYrgnxyhjWTrPiUcLjLacJDtm/qOXOuUlWXEzWUwwz6BD2K1TfcJM9YjodMjih
         pKqpS/ANOp8mDaKlvPKaFo6G6FrMj+oI5FhE07LqiwZK9pKfPBJyWM0NLrEmR7BCuyoa
         NLOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id cd7-20020a05690c088700b0035786664d22si935326ywb.1.2022.11.23.04.21.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 04:21:54 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500020.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NHKwx5BjLzRnsC;
	Wed, 23 Nov 2022 20:21:21 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500020.china.huawei.com (7.185.36.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 20:21:51 +0800
Received: from build.huawei.com (10.175.101.6) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 20:21:51 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Mike
 Christie" <michael.christie@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH v3 2/2] scsi: donot increase scsi_device's iorequest_cnt if dispatch failed
Date: Wed, 23 Nov 2022 20:21:37 +0800
Message-ID: <20221123122137.150776-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221123122137.150776-1-haowenchao@huawei.com>
References: <20221123122137.150776-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

If scsi_dispatch_cmd() failed, the scsi command did not send to disks,
so it would never done from LLDs.

scsi scsi_queue_rq() would return BLK_STS_RESOURCE if
scsi_dispatch_cmd() failed, the related request would be requeued, and
the timeout of this request would not fired any more, so no one
would increase iodone_cnt which matches with this increase of
iorequest_cnt.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
Reviewed-by: Mike Christie <michael.christie@oracle.com>
---
 drivers/scsi/scsi_lib.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index ec890865abae..a29d87e57430 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1464,8 +1464,6 @@ static int scsi_dispatch_cmd(struct scsi_cmnd *cmd)
 	struct Scsi_Host *host = cmd->device->host;
 	int rtn = 0;
 
-	atomic_inc(&cmd->device->iorequest_cnt);
-
 	/* check if the device is still usable */
 	if (unlikely(cmd->device->sdev_state == SDEV_DEL)) {
 		/* in SDEV_DEL we error all commands. DID_NO_CONNECT
@@ -1764,6 +1762,7 @@ static blk_status_t scsi_queue_rq(struct blk_mq_hw_ctx *hctx,
 		goto out_dec_host_busy;
 	}
 
+	atomic_inc(&cmd->device->iorequest_cnt);
 	return BLK_STS_OK;
 
 out_dec_host_busy:
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221123122137.150776-3-haowenchao%40huawei.com.
