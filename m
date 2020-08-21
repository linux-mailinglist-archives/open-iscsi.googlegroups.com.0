Return-Path: <open-iscsi+bncBDTZTRGMXIFBBN7H774QKGQEL3OVXWY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5CA24DA0B
	for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 18:18:00 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id q5sf625392vsq.6
        for <lists+open-iscsi@lfdr.de>; Fri, 21 Aug 2020 09:18:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598026679; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohf73CycKhGyX/BGjK+qI6tm/z6hv1w2XN53V7KDnPJBHnHmgqkZx58/FMjlgDEAO/
         adXlCmLBINNaJ94foQg2RS9Ec15DMhjoSAxnlbxpf8E7b7JrfJpQpm34DRwet2fcwBfn
         EqzXn9vr81k8YneDX45VPg6Li3ImKtXGxfxz/zhZpeeRRFK1oRBY0F36XKJBEM9hwDGz
         IDUrvHEhHwWAljhLi+5D1m2XVJSJPZ2Qk0nIF34upLMiVilaXj+9pri4xOYQ/+E9orCp
         UO+eDMIYEiwlYi23WI7TTH3TPXX6kReSPYuhZpyWBdR2xxmtdMD1maHYFanTfv7VhzNJ
         BRvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=mqosff84y+Na2O0pkMgh7+w9yoySmLdfrTp0s2jwABU=;
        b=oPw81EKYoKHUZFZusfWIEU4sFeuIPIUvVEPyMgSDi8Oa/9H61Mo6Air5L4KY+2eYLC
         6vIB8biuIzZ26lnXs/HrmhPQ7Z8Z0uQnI9eeEnvxfrA0G+f5q/wcSYfoTm57sA5dF/it
         P5VpBsdv9vH4j+bG2BPGFmfwBd3OWOx/YKJVKE8HSMqoXBFVv2CRIRxCOu2BzdXn0qLq
         lsyV6sU1RNJtm2sWdHubwPaaH3QQilyoQMlpCKAeUET1r3KX1uS1kj9FxI0HG6pHNasL
         wBc5uNv5ZDkxxajGeH0JfCfwJgjShUhk9DhZn9x+vd9nyrn3V5MD7xMA+7OqoSLjjhAa
         ntXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l0qNu6cn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mqosff84y+Na2O0pkMgh7+w9yoySmLdfrTp0s2jwABU=;
        b=lz9ZOzttn4Snz0O0Q4yXyaL7AkU/kdoxg7yfMF9ICWZ9hCvn6w4lGn6ac2GtqNKIzh
         nFjrS6CnPNlTHGJ/ZCC06lv8xuuTt6XArJTMdzhDqqBjFn4bKZZb7LJX/KG2Upqp9Vi+
         wf+Tt33n2JN8x9pqzQlUfVqmh4CSFEIjkq01QWuHfKM4pyacm1U5fVdCJsJnOhGpbVSM
         9h/c1KnlX9Y8LJmeXVSCIgqQG7BCd31q1qJK5uD/Az5kO2YgwRnxSzstUVVbaILrlQBS
         izb03GA3ng3H1hFLSDO0EjLey2VBcZRN2/cK4bt0/gcsHZNJikzOJ4+zhKaSbjDIBnsB
         AOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mqosff84y+Na2O0pkMgh7+w9yoySmLdfrTp0s2jwABU=;
        b=mrk0p6HyWLt429J18IWW8r2aWpOTmHIUM8nfCcMlQeX99p6YtpNff4YY3rLEADiKb5
         7YIjZXxgfveVZGygq0D0SRrlGGcBiHObx2qZs/2/uTaVvUhyujKPkqrieZJDDdRTPitL
         T6JyNqmDsRMvdafMgTlm8Dtd4l3un3O05HKhqtJO4PL8DgsjPBykpF6/R37BFTp9dFj0
         L3e4Tbxk8a36asTizRWn1f4P8ZOWCNFthmK9//58YKcS1PEkqRX7N52lGA0Y7DcZH4V0
         CegWGebrCrhtkO1L0ubu0hqfm0mqEHgdKwu8xKdT+DGTrd/XvzuQqlMYfqSujaO9G3AZ
         0kog==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532F4Liu6xkVxR68myiFyEV2X2nguuYFUVplO7pj5nBXmRtuGfaU
	MVA70e1CcMFVH5pS1O2sAFI=
X-Google-Smtp-Source: ABdhPJxoO9+XPwPXp4nSGcq3h4IJGbfYtvFMMChqWEXe5aJzq5zDhZs0rDpNudtx5OOlFU1wNr7NlQ==
X-Received: by 2002:a1f:13c6:: with SMTP id 189mr2318078vkt.81.1598026679378;
        Fri, 21 Aug 2020 09:17:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:7f0b:: with SMTP id a11ls319437vsd.1.gmail; Fri, 21 Aug
 2020 09:17:58 -0700 (PDT)
X-Received: by 2002:a67:c815:: with SMTP id u21mr2442916vsk.170.1598026678934;
        Fri, 21 Aug 2020 09:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598026678; cv=none;
        d=google.com; s=arc-20160816;
        b=KJ6eCiUYQmXujLwoulxJhhbkoJZHtRbZvsMhjKJESzTv+sfzfztE5Xi6lkTX2tVxIi
         +Esq4loU4u8YvJcFy1GPhBXQpqXKCVRW//O9Pyu+on6JmGEZvvw0RocdmZJpNLArMi5I
         d7PHQviSjaBxi3CHkkXa6VsvT8uBi4JiqYh+jQvxfbsAGS8u6jQYCeA+VsYlmAWXScCM
         9BDSRtFQjAAqUrzGqp+poF0rrYmTgu+9FsHLerowv+7ZcBUBAgl3lJE5NvBKJ6OSEx5S
         egWAyN1hgfYiEDprJJNyrn0l/lfdrlglMMDbCCRGBtKNIiODlhgJtmLwgfioMvPfmApi
         hBPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9CdQU2NZh/EtvuEdXCMSXwc/MNf8CWTk5z9DX4N6QgQ=;
        b=ZIB0CVHomQ4xOvwnsvtExd/xmejymfPMJRq3OiH7ER4JHZQ9CbryXmTm/rsVI/mAlV
         TMr78v4v3jqDINPZsRiPOOd4OJ5pLIBtsbrWTRQ+/qAInzbRAodRyBAB8Tdq/z12ubze
         deVs5BM20KMjWd3b7KpiXxCXwamTjiv7DHOnBfs98xnMDG3S3cTK7EjpUpRikcaNgXP6
         /MxhJ7dpE3QkPgRm/cVLV4QxTyQ3M/Jk2PLdXBjpg4jmm4QWCVx5wpgL0Xp1pxJIRoui
         aaQX0rCMrz4UWLu+Y1zLz3sWOoTMs+8UJ7A0tStyTkyULLYoOX2eINsxH6NTrk9NlV3+
         q1Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l0qNu6cn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t72si149310vkd.5.2020.08.21.09.17.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Aug 2020 09:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0AB2C22CB3;
	Fri, 21 Aug 2020 16:17:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 42/48] scsi: iscsi: Do not put host in iscsi_set_flashnode_param()
Date: Fri, 21 Aug 2020 12:16:58 -0400
Message-Id: <20200821161704.348164-42-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821161704.348164-1-sashal@kernel.org>
References: <20200821161704.348164-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=l0qNu6cn;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Jing Xiangfeng <jingxiangfeng@huawei.com>

[ Upstream commit 68e12e5f61354eb42cfffbc20a693153fc39738e ]

If scsi_host_lookup() fails we will jump to put_host which may cause a
panic. Jump to exit_set_fnode instead.

Link: https://lore.kernel.org/r/20200615081226.183068-1-jingxiangfeng@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index a5c78b38d3022..dbad926e8f87f 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -3174,7 +3174,7 @@ static int iscsi_set_flashnode_param(struct iscsi_transport *transport,
 		pr_err("%s could not find host no %u\n",
 		       __func__, ev->u.set_flashnode.host_no);
 		err = -ENODEV;
-		goto put_host;
+		goto exit_set_fnode;
 	}
 
 	idx = ev->u.set_flashnode.flashnode_idx;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200821161704.348164-42-sashal%40kernel.org.
