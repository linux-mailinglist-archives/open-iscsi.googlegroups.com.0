Return-Path: <open-iscsi+bncBDTZTRGMXIFBBUPX7OJAMGQEPRB4YSI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E01A550775A
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:13:39 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id c10-20020aca350a000000b003224bef8f56sf3950717oia.13
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:13:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650392018; cv=pass;
        d=google.com; s=arc-20160816;
        b=cTiBZ2uR3hJM5pbul9y+TeVFwjjmuT+6u7AXXhyRmJ4pdlxI8jK6jlhijKSYvLj7wC
         RpNhCX48j4K/hZEwoD8mruAGp58+uiuq8WteRJWx2Dsb45Z4o/v2738p2xhSoBNGB9gT
         CWSU4v1RsIVaRGVY/T4m4z5PqEK+k5PeajlexoDvyEa+vLq0jPtew7kmvdxlBAXrHpLD
         U/Yp0Md8hzDGjYrfzoeEHdBkdTjLkwPlWs/wMpvOrFvenz+zIpU7ek0Z38QCzfqbwFcW
         TZbVOWUaXwdP4Tjm9/JUO4lRCYg4BIFPNjoYVskAcUQCEWJSxL3vN6Dj29anUZAoUl8b
         pWpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=C8LwrjPTBHZ4zqWsMb21cZ9CVP1DDtd6scTm21gRaDE=;
        b=hjWE4Uwaya7Xr+u4+YTr8rquV7TTtuuZrq4OwGrkipF5a9OZgxMA1gT09WWcjP7zLS
         /QnsjtRMbubdb6foHtYzE3nWIv/4FjznG5XhwnuaaWY7g0qSk80EQ8W2zlKhzTQFl7kH
         rABTvk1fSQ47AjPDAhkqRY3jMWtulaAklSTTAPPar/6lvONLsTt+jOHuR9HqgRvstN1Y
         bae+KR1W6HhZ1p4Nx3Z3CeLS7kKih+mb0UImac1scHAIff/oOeCbw7hVwo/U7k4vTqME
         7ZBXDHYR9BBvTc5r0AJ91BDN963hvv1QwPE+XCCB1Tp54bqgWXALU0Oo4IJEk1cJK6xP
         RSdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nSz0rrfV;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C8LwrjPTBHZ4zqWsMb21cZ9CVP1DDtd6scTm21gRaDE=;
        b=qTqwavXBmqXy7FHRPerIua6B8ee4YoEmKOsT9IMMlHWgQTpN5zmyVsU3Jv4L8crz0u
         mKxJe82PfnhfngrDiIMz97+tROdVfJoVk1Ddyox/akC0qhI5jKTys2sqvRIa2plmpP2r
         ThQihITxfK/fdEqrZk35gexIgCEjeYELzEKcy2qMGpV3XiPUdAOZjJdLejR4xVYL63KR
         0+7HLGAB0yXFtA+UyWjs5djlWndZCoVtq73cTTGciaNURpRvcCCXcw9B9fZDE3NgBXZa
         1jeOQLCZ2y+7LNc9flIOzsVFcl/MnK1Ipm4JWkU1Wyk0B3opde9+/NpvLdkFhZJMdkM7
         7VSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C8LwrjPTBHZ4zqWsMb21cZ9CVP1DDtd6scTm21gRaDE=;
        b=qbHkWKMAfCkynEINwN3godxBD/UFPtZL5C3vDXJaWdQrKmUPaF83m4HEaq/z6XlElA
         G44InSxCciNrEPWvE3YrZt/ep9GaWLKcTlvAV8zkvT2U4R6MbsngQIAgAPjw5/n+NvRb
         rzLZ7LXnAxZfKT2zyRuxJvPBhN7uO0WakV0LXSCXplovYw1RPvibEvobKDS53kwORT/s
         p3gvhnkZEF50djC3VlEYxJjbrvo9dtSC/nLAzXQDHuCivZgnLWDq82to9RjnbF56+bvV
         /EO2s+IUf5VR+Qv4LaKsavJMcmySXeh+3tAxcJEaw8a9yWxNEWd2qGTpX17AO/l0/ZYY
         EH8g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530+/phRSbgKZU4DqvrRMXBRam5vqD/ps/9HEqTkU+okzUd431FW
	YRXAdRCy05LGT+ShZZedbgA=
X-Google-Smtp-Source: ABdhPJxVPMYcZnqS1nkVuv2Ot661t27mQ/tc7TIEG5HhsvozgKdj0nEbqTQLwNNSZgchuvHOSjJgRA==
X-Received: by 2002:a05:6808:13d2:b0:322:7571:79e with SMTP id d18-20020a05680813d200b003227571079emr6851873oiw.52.1650392018574;
        Tue, 19 Apr 2022 11:13:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:23ca:b0:322:ac8e:f9e9 with SMTP id
 bq10-20020a05680823ca00b00322ac8ef9e9ls2626224oib.4.gmail; Tue, 19 Apr 2022
 11:13:36 -0700 (PDT)
X-Received: by 2002:a05:6808:124a:b0:2da:3588:6d35 with SMTP id o10-20020a056808124a00b002da35886d35mr8232273oiv.269.1650392016636;
        Tue, 19 Apr 2022 11:13:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650392016; cv=none;
        d=google.com; s=arc-20160816;
        b=u5V9aK2KfmJ8phgIJRuiszf+mq0/C2NHqPtBjzgAaTa6A7HMKnqScP53XIBSui9J+N
         ci2nO7SN0k8XklvpV4kOQk98IEVfNsWj6HSqV7jjhPZurSnJ8EeBBqNYmBouqgxaAnqm
         3FQUs48uYKFSOFjRP6nY7AsE8J2exwINDN2HuUJtAm2f4ww1hq4oyvGYQGq61QUbSqYx
         2wW2c10oAdUNuLNjdErvT/p0ZWXyBTlRSYj4HiUgYXVrtwPtbg2Kqxb4MTYPP+p9S2Nj
         rz7bI3op1mbEKKlwCIjqEmCrHVLZ4t2pWF6ES8RZxxGGyyx9wuf7xDIOyHbf/8C697yX
         WaFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mvDdTgHM+F9tqiZ1EvmuTf/9WR+eJG50FjP7+UxlHCE=;
        b=H71l0Kpw/SyMQ9j/IYa++tjaarYaIRB0lgLRC63fCtp8zVd3VZr8fDG7ntmUV6As9+
         aDFmiJEiKC1AsbBFA44taO5o/HVwe8+BetlUAVWsuvgpVwLboykZxwo59+w705e2+TGv
         Ku3+A7ortaiYBBLoL+7b7TYYyZYM0xRD4cVGePp9BunSNumAFI8Njv6tyeDE3mMeirQn
         ZI5onCmEj3ft5DUQbUgFlMz1SxQ4IYmfjpgUHY01jdJKPlhftcsZSJAV+iAGrEC4eDT8
         yX3igw1BPlEUa74Z1qFbfvBVtRMVBi4OvQ/nloHBmdjS3BYN9VuBIKIy548PFt42cHHl
         qFjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nSz0rrfV;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id x31-20020a056830245f00b005e6b6b809c5si1335555otr.2.2022.04.19.11.13.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6866760FED;
	Tue, 19 Apr 2022 18:13:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A291C385A7;
	Tue, 19 Apr 2022 18:13:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Manish Rangankar <mrangankar@marvell.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Wu Bo <wubo40@huawei.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	jejb@linux.ibm.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.15 19/27] scsi: iscsi: Release endpoint ID when its freed
Date: Tue, 19 Apr 2022 14:12:34 -0400
Message-Id: <20220419181242.485308-19-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181242.485308-1-sashal@kernel.org>
References: <20220419181242.485308-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nSz0rrfV;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit 3c6ae371b8a1ffba1fc415989fd581ebf841ed0a ]

We can't release the endpoint ID until all references to the endpoint have
been dropped or it could be allocated while in use. This has us use an idr
instead of looping over all conns to find a free ID and then free the ID
when all references have been dropped instead of when the device is only
deleted.

Link: https://lore.kernel.org/r/20220408001314.5014-4-michael.christie@oracle.com
Tested-by: Manish Rangankar <mrangankar@marvell.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Reviewed-by: Chris Leech <cleech@redhat.com>
Reviewed-by: Wu Bo <wubo40@huawei.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 71 ++++++++++++++---------------
 include/scsi/scsi_transport_iscsi.h |  2 +-
 2 files changed, 36 insertions(+), 37 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 03cda2da80ef..e5f5ec631b55 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -86,6 +86,9 @@ struct iscsi_internal {
 	struct transport_container session_cont;
 };
 
+static DEFINE_IDR(iscsi_ep_idr);
+static DEFINE_MUTEX(iscsi_ep_idr_mutex);
+
 static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
 static struct workqueue_struct *iscsi_eh_timer_workq;
 
@@ -169,6 +172,11 @@ struct device_attribute dev_attr_##_prefix##_##_name =	\
 static void iscsi_endpoint_release(struct device *dev)
 {
 	struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
+
+	mutex_lock(&iscsi_ep_idr_mutex);
+	idr_remove(&iscsi_ep_idr, ep->id);
+	mutex_unlock(&iscsi_ep_idr_mutex);
+
 	kfree(ep);
 }
 
@@ -181,7 +189,7 @@ static ssize_t
 show_ep_handle(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
-	return sysfs_emit(buf, "%llu\n", (unsigned long long) ep->id);
+	return sysfs_emit(buf, "%d\n", ep->id);
 }
 static ISCSI_ATTR(ep, handle, S_IRUGO, show_ep_handle, NULL);
 
@@ -194,48 +202,32 @@ static struct attribute_group iscsi_endpoint_group = {
 	.attrs = iscsi_endpoint_attrs,
 };
 
-#define ISCSI_MAX_EPID -1
-
-static int iscsi_match_epid(struct device *dev, const void *data)
-{
-	struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
-	const uint64_t *epid = data;
-
-	return *epid == ep->id;
-}
-
 struct iscsi_endpoint *
 iscsi_create_endpoint(int dd_size)
 {
-	struct device *dev;
 	struct iscsi_endpoint *ep;
-	uint64_t id;
-	int err;
-
-	for (id = 1; id < ISCSI_MAX_EPID; id++) {
-		dev = class_find_device(&iscsi_endpoint_class, NULL, &id,
-					iscsi_match_epid);
-		if (!dev)
-			break;
-		else
-			put_device(dev);
-	}
-	if (id == ISCSI_MAX_EPID) {
-		printk(KERN_ERR "Too many connections. Max supported %u\n",
-		       ISCSI_MAX_EPID - 1);
-		return NULL;
-	}
+	int err, id;
 
 	ep = kzalloc(sizeof(*ep) + dd_size, GFP_KERNEL);
 	if (!ep)
 		return NULL;
 
+	mutex_lock(&iscsi_ep_idr_mutex);
+	id = idr_alloc(&iscsi_ep_idr, ep, 0, -1, GFP_NOIO);
+	if (id < 0) {
+		mutex_unlock(&iscsi_ep_idr_mutex);
+		printk(KERN_ERR "Could not allocate endpoint ID. Error %d.\n",
+		       id);
+		goto free_ep;
+	}
+	mutex_unlock(&iscsi_ep_idr_mutex);
+
 	ep->id = id;
 	ep->dev.class = &iscsi_endpoint_class;
-	dev_set_name(&ep->dev, "ep-%llu", (unsigned long long) id);
+	dev_set_name(&ep->dev, "ep-%d", id);
 	err = device_register(&ep->dev);
         if (err)
-                goto free_ep;
+		goto free_id;
 
 	err = sysfs_create_group(&ep->dev.kobj, &iscsi_endpoint_group);
 	if (err)
@@ -249,6 +241,10 @@ iscsi_create_endpoint(int dd_size)
 	device_unregister(&ep->dev);
 	return NULL;
 
+free_id:
+	mutex_lock(&iscsi_ep_idr_mutex);
+	idr_remove(&iscsi_ep_idr, id);
+	mutex_unlock(&iscsi_ep_idr_mutex);
 free_ep:
 	kfree(ep);
 	return NULL;
@@ -276,14 +272,17 @@ EXPORT_SYMBOL_GPL(iscsi_put_endpoint);
  */
 struct iscsi_endpoint *iscsi_lookup_endpoint(u64 handle)
 {
-	struct device *dev;
+	struct iscsi_endpoint *ep;
 
-	dev = class_find_device(&iscsi_endpoint_class, NULL, &handle,
-				iscsi_match_epid);
-	if (!dev)
-		return NULL;
+	mutex_lock(&iscsi_ep_idr_mutex);
+	ep = idr_find(&iscsi_ep_idr, handle);
+	if (!ep)
+		goto unlock;
 
-	return iscsi_dev_to_endpoint(dev);
+	get_device(&ep->dev);
+unlock:
+	mutex_unlock(&iscsi_ep_idr_mutex);
+	return ep;
 }
 EXPORT_SYMBOL_GPL(iscsi_lookup_endpoint);
 
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index c5d7810fd792..dde93afe56cd 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -294,7 +294,7 @@ extern void iscsi_host_for_each_session(struct Scsi_Host *shost,
 struct iscsi_endpoint {
 	void *dd_data;			/* LLD private data */
 	struct device dev;
-	uint64_t id;
+	int id;
 	struct iscsi_cls_conn *conn;
 };
 
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181242.485308-19-sashal%40kernel.org.
