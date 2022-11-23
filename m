Return-Path: <open-iscsi+bncBDTZTRGMXIFBB55K7CNQMGQE6V37FFI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA04635D4E
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 13:43:37 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id ay19-20020a05600c1e1300b003cf758f1617sf1007213wmb.5
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 04:43:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669207416; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+0rnHs0Hs+4/kjkSFoD0brmBhBhX4gxWazer1vJxUdxSMGrmegLobJrLw0pFLXFLk
         X4G/u6U8HZYNTAqu0BoVAAUtL6iU2rOBMmaytQDASY2iAQ+XcnTW0vVXsEPbnSZ3kDHP
         IroYrJmp3+MVt6BAyDj5Df5vt+UEhfvpNiGZ8NeCV+LlBQJUTSwFr9d2dYBs2wlkgNdi
         e4rtCit7F9AcscxDq9EjyiJkXG74Wvywyyz4lHi5/gcJju9qqD0m6iqhi9oET/GCrAOq
         QKv20S6+m1b2ggswbRdKF6qaxlR8ux8wnHowZECHBWcjgREQLoEgvJi0kWdzDGZAWy88
         C7nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=w6NGgUMTc8v1MFTUK8HvaA6VJ4Rvjxgdkw8r9J8N2WE=;
        b=pBWl9SjVCV54G6PS1lfy/QOJ7pvHf7rN6xJ4Ug1D7KCIhCga11Lv76MMwTSciGpjB/
         IuzmRbCpgx4rCvLQ716CXB62qgWL+Yl+YMNbv4xrHePGg+93Hp73gBBL6pdUsOPatOZM
         4h1pRXCQW/Ep8B38fpPmwpkGhY3MWORZ5cN88VfkNCUTR+lw9YbcqaWluBGo3oKGESzu
         ggetYX9/z8cePGB6q3xemAz2v2BJP4YqG+CxBSDMgB2A/LxgO8nY+0QiJQzTftpGUV3C
         +VYUyXJnPITRx44/tPxPNQf2Qauenc9l9Ghp13ZXLPY+v3P9pIf5N+SnIYjA9dZcOJCt
         7XPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VxzwcrkP;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w6NGgUMTc8v1MFTUK8HvaA6VJ4Rvjxgdkw8r9J8N2WE=;
        b=pLtVcophZT44cxXGX7OTOdGL+Vnww943POT5YgnnZ1sQjT8tnjZ1qNpDDJWMn53WsE
         jC1lsZ2RQRC4dkvOx0W7Q5GIItZHn8dbMzjHEjCYhvhiHCDwFbLHau6HAux3XSX4LLM1
         wDD0NHu96I5vOsn7mFm3R3xdH4t5mDxFcTBK/E8kvcJXTz8DDG0HqRrQdNeBauBKR4zA
         n70p+ze9Kzp+s4Ug0NC0AB+9Ux3PNgIWwRlBHMufyFPQkx6U1TeYCkLOz57nYazKx3ub
         US5hOJfxSH5+cY7Ijc8oyxu/EPObpebo2VpK7F35NEKSqfbu5/macycXP5pphyJ2fOIR
         Q6LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6NGgUMTc8v1MFTUK8HvaA6VJ4Rvjxgdkw8r9J8N2WE=;
        b=07OkiZaLRZh0HQZdlO6d9FkJ9ri7s65KA5D1BYoHQhb60oVGAd9im/FlCNN88hz5/3
         KLf9Fxe9dAByN4Zm5IU2l+n/iKmnzMdNQI4Ov6bMMxXf5qL2FQXHGPa8mZmoaAAf3H/z
         jOsA4Bj8O7weSVvTkdf1jXK9Lh5pmZPuDczzRinq5GMpz3UR0KNqpZAC+e+fc2YwEbry
         uFXf26c4bWs3mo8vLQtgYdxKJwtGdFAgGIybFpBnJ76x5OSE5IOF5tsPUAWhqD+A4Fdj
         n1JgI+OHhpxN4wkXqzIHyvVSmfBAielJSwUNAXp6t0AVNZ/g+lHIQMN+u5+Z4MYED4Bh
         YrlQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmQoCxDyyQVgunmaYOVCPjgsseVsLm2qczvfopdkI+C2XQY8WZt
	8n5gqTGJzErWN4mktDtf5Ps=
X-Google-Smtp-Source: AA0mqf6TQFn0fsNuU5NrRGWEGeH83cjwUY7rXSu1ZRTkQXDtnQwxDuTc175mjvtbhfio3cvwN4AGuA==
X-Received: by 2002:adf:c64e:0:b0:236:78cd:f3d2 with SMTP id u14-20020adfc64e000000b0023678cdf3d2mr17741004wrg.719.1669207416635;
        Wed, 23 Nov 2022 04:43:36 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a7b:ce11:0:b0:3c6:efd6:9cd8 with SMTP id m17-20020a7bce11000000b003c6efd69cd8ls1031336wmc.0.-pod-control-gmail;
 Wed, 23 Nov 2022 04:43:34 -0800 (PST)
X-Received: by 2002:a05:600c:220d:b0:3cf:633f:c570 with SMTP id z13-20020a05600c220d00b003cf633fc570mr11143221wml.110.1669207414066;
        Wed, 23 Nov 2022 04:43:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669207414; cv=none;
        d=google.com; s=arc-20160816;
        b=REul21XHKdgl5I1Qgs+xDveLMjq9nsoktPl5z48ULlBu9GDb3TzP0gmz/4zVGTqaCQ
         SAmNvAciBs2JuwX+RKN30nEOoA7JyS2hWpAYEsUljaXyZEZQchtfDpbvIdxf2JBDEjiv
         YLm4grOILtbGBB2pi6oltbkVYLfq+x9F3fNeKt9Mn6XoCBbfyoMrkSnggzqEYC7Czb58
         0HJw1Wx9Yke0q7ESfCGEkni6/6xRqlw3VEnruGDCgmHpitbGIFfiTV4mYZ/r8cQtVQov
         9lczuUpncZlxRw5MOMT0oawdLeHSisEtFUcAG2M/XVndS4+8srbC4uMMoWK6gLF94c53
         mz8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7lHWgusmJ2ldEGzD+o1fW3mgTDnywxtwc/zgQQjGCco=;
        b=A+coAzmWpdCketWScwHCPSR25Akpws1cJK+kGlMthHP9NqGmpqgqeAygLqnZyxvz/K
         rfoM9yGruyFtS9hxa5snod+YokSKrrJ6mkMLVERZZ2DE7ysmnAystNN3l3bIyzz6pIH+
         l7Pvlqvwu8xisVVZ/+INFc28n1g2xtIMjid1GL/FzJinvQKRjoLIbnliFdBWsJzGSUuq
         II+A2yIzEUJtJBzShijvloC7YwawwQUixJiLpla4wEEFXNpnbspVl0M20Xpbq/xWbbHb
         QjJChkbuMrdVcxQllq6aQ/zoE3GS7824owkAg1T0Ft1mkJAwP7HLrHiuI15Hmz9jleJz
         8Q7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VxzwcrkP;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id z3-20020a7bc7c3000000b003cf1536d24dsi78000wmk.0.2022.11.23.04.43.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 04:43:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C5585B81F5F;
	Wed, 23 Nov 2022 12:43:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6752AC433D6;
	Wed, 23 Nov 2022 12:43:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Zhou Guanghui <zhouguanghui1@huawei.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	lduncan@suse.com,
	cleech@redhat.com,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.15 28/31] scsi: iscsi: Fix possible memory leak when device_register() failed
Date: Wed, 23 Nov 2022 07:42:29 -0500
Message-Id: <20221123124234.265396-28-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123124234.265396-1-sashal@kernel.org>
References: <20221123124234.265396-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VxzwcrkP;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Zhou Guanghui <zhouguanghui1@huawei.com>

[ Upstream commit f014165faa7b953b81dcbf18835936e5f8d01f2a ]

If device_register() returns error, the name allocated by the
dev_set_name() need be freed. As described in the comment of
device_register(), we should use put_device() to give up the reference in
the error path.

Fix this by calling put_device(), the name will be freed in the
kobject_cleanup(), and this patch modified resources will be released by
calling the corresponding callback function in the device_release().

Signed-off-by: Zhou Guanghui <zhouguanghui1@huawei.com>
Link: https://lore.kernel.org/r/20221110033729.1555-1-zhouguanghui1@huawei.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 31 +++++++++++++++--------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index f46ae5391758..cc39cbef9d7f 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -232,7 +232,7 @@ iscsi_create_endpoint(int dd_size)
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
-		goto free_id;
+		goto put_dev;
 
 	err = sysfs_create_group(&ep->dev.kobj, &iscsi_endpoint_group);
 	if (err)
@@ -246,10 +246,12 @@ iscsi_create_endpoint(int dd_size)
 	device_unregister(&ep->dev);
 	return NULL;
 
-free_id:
+put_dev:
 	mutex_lock(&iscsi_ep_idr_mutex);
 	idr_remove(&iscsi_ep_idr, id);
 	mutex_unlock(&iscsi_ep_idr_mutex);
+	put_device(&ep->dev);
+	return NULL;
 free_ep:
 	kfree(ep);
 	return NULL;
@@ -767,7 +769,7 @@ iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
 
 	err = device_register(&iface->dev);
 	if (err)
-		goto free_iface;
+		goto put_dev;
 
 	err = sysfs_create_group(&iface->dev.kobj, &iscsi_iface_group);
 	if (err)
@@ -781,9 +783,8 @@ iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
 	device_unregister(&iface->dev);
 	return NULL;
 
-free_iface:
-	put_device(iface->dev.parent);
-	kfree(iface);
+put_dev:
+	put_device(&iface->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_create_iface);
@@ -1252,15 +1253,15 @@ iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 
 	err = device_register(&fnode_sess->dev);
 	if (err)
-		goto free_fnode_sess;
+		goto put_dev;
 
 	if (dd_size)
 		fnode_sess->dd_data = &fnode_sess[1];
 
 	return fnode_sess;
 
-free_fnode_sess:
-	kfree(fnode_sess);
+put_dev:
+	put_device(&fnode_sess->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_create_flashnode_sess);
@@ -1300,15 +1301,15 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 
 	err = device_register(&fnode_conn->dev);
 	if (err)
-		goto free_fnode_conn;
+		goto put_dev;
 
 	if (dd_size)
 		fnode_conn->dd_data = &fnode_conn[1];
 
 	return fnode_conn;
 
-free_fnode_conn:
-	kfree(fnode_conn);
+put_dev:
+	put_device(&fnode_conn->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_create_flashnode_conn);
@@ -4838,7 +4839,7 @@ iscsi_register_transport(struct iscsi_transport *tt)
 	dev_set_name(&priv->dev, "%s", tt->name);
 	err = device_register(&priv->dev);
 	if (err)
-		goto free_priv;
+		goto put_dev;
 
 	err = sysfs_create_group(&priv->dev.kobj, &iscsi_transport_group);
 	if (err)
@@ -4873,8 +4874,8 @@ iscsi_register_transport(struct iscsi_transport *tt)
 unregister_dev:
 	device_unregister(&priv->dev);
 	return NULL;
-free_priv:
-	kfree(priv);
+put_dev:
+	put_device(&priv->dev);
 	return NULL;
 }
 EXPORT_SYMBOL_GPL(iscsi_register_transport);
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221123124234.265396-28-sashal%40kernel.org.
