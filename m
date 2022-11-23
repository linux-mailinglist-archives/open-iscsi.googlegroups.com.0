Return-Path: <open-iscsi+bncBDTZTRGMXIFBBNVK7CNQMGQE274DVEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0582C635D21
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 13:42:33 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id z15-20020a05640240cf00b00461b253c220sf10293926edb.3
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 04:42:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669207352; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNdDGHekaGcgPUt6OMdCNr8Yjbt8mrGPYwyOZuoTK4FUCOk7i5ctKXGkIcwrCRPntd
         3NU5p0IGs3mMSlwu2YcjY7hy2G3/rPImlj+8hl1aGk30YyyTXItzNG0OfaGqY01mSR7y
         l+kbUkN9Ew1Ltga0ktMXad9yleubG+lDOzq1YhGftqw/vbw28caaXVr8l1mITz8T5aNI
         9ngN/BPGeI8GIfz3mwjxjzkF01mQbOerxJZDFOUwaaoD7jarg0Cd/XK5sVzK/pzHxlUl
         RzEbLN3o0JjvFqYqsWP1x2/DbdqovXmCgn4JqWDTK+XjU/7ih23qwqeIB+uJsV1ZTqLR
         4xLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=a8kbbO30Oi6QJo8EvyvLuf29Lga+EiSZ8Wchh1SE2LI=;
        b=GoWnP9cD3aRCgx8clM32JmFQUvorvdHimLpeaLa3LMO7Q2cabLbBvvogeMxzPaaLLT
         VBrminfJCH3EOMB0VDj+gVocQjghueGnAx1aR4yB0i/swhnAyi6L39JHxfOjJ3IR9cts
         TtnRTPGRBedM042rcNQRdFf1tB+lmgT13zvD+GjLLUetD4OhHnMVcFGVIQFO4p0a+zpl
         r3Kb6QnCNsr9jbxaHQ1ILVeeOj0L2SqcTGnqK7Z1DgsybWcuAFKZaTKYLa/eC59l9JJk
         n4EGL2szo6CHenYNXNHryHhbeCy/B3onu7WuPqE6gWRntut1IcXqNHmBFFYe1Jg44w9E
         LRLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QCU+d0LR;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a8kbbO30Oi6QJo8EvyvLuf29Lga+EiSZ8Wchh1SE2LI=;
        b=flMRe1bgRGGp7ZTlBwYCkMTrnUXYRlLDTtZOoKm/+BYKzcWNgTUeGhgm435bJwsq7S
         Eu9BqEKLtDgsaKc1dS0fhFD4Lf1hgxWc3mlYOg8DG7zkDptvZPON5zXgvuQYROKTvVip
         PsAgefatxWQG1+6C7pvbb2T1JRfmzXsWXGNsNwLkk6g2gN1dNWBEfvNoRzXZNVcc7PBp
         Uf6PdRAf6wLTfRf/wYPPQFAzTkp1xEm/KkgstLNwfQ8rJgeEaAQHLo1zvzWvTncIZ1Cs
         Bf/uAGFpKAV+8yGeL93CCnoC8TOxAfu6+ayN8VKMM5bzPNtLxHgxwNhI1/YaIcD56MoS
         X6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8kbbO30Oi6QJo8EvyvLuf29Lga+EiSZ8Wchh1SE2LI=;
        b=4ocID3WDx6LFQwFiglkRLLq7Jf0PpYyGKI1tR/Jhp8H3w9LMhw7A7/7McmeRDXH0t3
         PGSNvv73WtoWo6B1UJaFnOTfMcFcXDq2NiXiODLqn4i0wypj1j9xoQSi6D4DBOZn6T1h
         PVk6ys6E06aGOlhThWEJd45ce6RZntahyiN9pbup1VMLc3uVNQAHf03kQRLNBjlY6yfQ
         Ic6eR6a8FC5aEsbdvjWeDGGIGfJph6qSBYGSMIGCpp3JyPdU7M1M50/IzfPVIU8fwuLA
         q1mgXgEuQaXOkm9zyz+sVtXNRdhDUbLoZR/OoW9jobXkKVCQfxpqB98yJ9ge+NjRyWWZ
         axbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pkX6Rr1MrO5WFjIr0qTd+lFp2DvpGMp02TB8FHtmsjOjtCwSO4r
	CiICBo1G+rXNv15x9aoyA24=
X-Google-Smtp-Source: AA0mqf6LtS/sLINFxuC7myjlnW6CFVwyOVEgj6NKofkxxLMGmp9hDjy48K6tyBJxJyNnlcrGL0gRqQ==
X-Received: by 2002:aa7:cb0d:0:b0:45a:2d7c:f3a0 with SMTP id s13-20020aa7cb0d000000b0045a2d7cf3a0mr16245115edt.98.1669207352460;
        Wed, 23 Nov 2022 04:42:32 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:7e1a:b0:7ad:934f:14b9 with SMTP id
 e26-20020a1709067e1a00b007ad934f14b9ls9502572ejr.9.-pod-prod-gmail; Wed, 23
 Nov 2022 04:42:29 -0800 (PST)
X-Received: by 2002:a17:906:5052:b0:7a9:6107:572a with SMTP id e18-20020a170906505200b007a96107572amr24382470ejk.729.1669207349469;
        Wed, 23 Nov 2022 04:42:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669207349; cv=none;
        d=google.com; s=arc-20160816;
        b=h2WBH+AITXmyfYlJJV2ScZo5He0eY058klJFHjBNpueySFV53XUTQGy7NQItu7Qy+a
         ehkRk3lcycfJuGIzQCWk/EEn5mw8J+/EiVW6H9ZkJmOj7yXaU1WPR569Bk4BqQapP0Q2
         L/ItbWZt582UTpO5PT8pR02zxStG1EiPndGRRG9oaZ5Iku7jfLExihlfPVUh/LPbg9es
         13FNLaLekbEy68yriF49lfg5qDZ6uA6v+7l1U/FoqwLW45JH2rhaQZjzRhVTmDxf3lmA
         8PX4gpizIiGIcxVYzhBYmmRNg8kQvbCqkp3tkWavy6dt9CIIETMsR8tQIInPGT5EfSvD
         Bbgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gGgrAcYniQazx6GLMFw9vXH7vT4WGQ+eXBIkxLRVYlg=;
        b=0t2RwRgIndC8WAZM/wgFSxPKG5E3vWMv/9C8MPbxSsKkqazb4SezNdEqnWfZlVFuCo
         WqVm7oYrmEO+ofg/cFEEbqnZ47ZCn3fqZM0nZ79iV+HApe5MxT/wpT54u+PjfJcQeo6e
         d7bh1KHOmLKSMF1xHusVAka9GNCtTY8VSVt2LtOj9679d6xXuY8YAZaG11MGbtJHTWm2
         SgpTIbMxl1KRgpNmKOoiYkRydl1ZjZzIPpASvf3cEICT5EeFdgIqfR7ZTyB0Uj7BtNsU
         3Qui+AfjjQJvr/dtPJ6gPwjhMoIKb0UovrzvFX5u/hpN0Y7NepDHU4X1KKhDZV9RW5b4
         FF8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QCU+d0LR;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id dy17-20020a05640231f100b004621a13c733si590981edb.1.2022.11.23.04.42.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 04:42:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2E09DB81F3F;
	Wed, 23 Nov 2022 12:42:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF485C43144;
	Wed, 23 Nov 2022 12:42:26 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 6.0 41/44] scsi: iscsi: Fix possible memory leak when device_register() failed
Date: Wed, 23 Nov 2022 07:40:50 -0500
Message-Id: <20221123124057.264822-41-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123124057.264822-1-sashal@kernel.org>
References: <20221123124057.264822-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QCU+d0LR;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4601:e00::1 as
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
index cd3db9684e52..f473c002fa4d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -231,7 +231,7 @@ iscsi_create_endpoint(int dd_size)
 	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
-		goto free_id;
+		goto put_dev;
 
 	err = sysfs_create_group(&ep->dev.kobj, &iscsi_endpoint_group);
 	if (err)
@@ -245,10 +245,12 @@ iscsi_create_endpoint(int dd_size)
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
@@ -766,7 +768,7 @@ iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
 
 	err = device_register(&iface->dev);
 	if (err)
-		goto free_iface;
+		goto put_dev;
 
 	err = sysfs_create_group(&iface->dev.kobj, &iscsi_iface_group);
 	if (err)
@@ -780,9 +782,8 @@ iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
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
@@ -1251,15 +1252,15 @@ iscsi_create_flashnode_sess(struct Scsi_Host *shost, int index,
 
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
@@ -1299,15 +1300,15 @@ iscsi_create_flashnode_conn(struct Scsi_Host *shost,
 
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
@@ -4815,7 +4816,7 @@ iscsi_register_transport(struct iscsi_transport *tt)
 	dev_set_name(&priv->dev, "%s", tt->name);
 	err = device_register(&priv->dev);
 	if (err)
-		goto free_priv;
+		goto put_dev;
 
 	err = sysfs_create_group(&priv->dev.kobj, &iscsi_transport_group);
 	if (err)
@@ -4850,8 +4851,8 @@ iscsi_register_transport(struct iscsi_transport *tt)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221123124057.264822-41-sashal%40kernel.org.
