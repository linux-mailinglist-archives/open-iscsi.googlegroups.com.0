Return-Path: <open-iscsi+bncBDTZTRGMXIFBBA7X7OJAMGQE52WFESQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5167F50774C
	for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 20:12:23 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id t24-20020a17090a449800b001d2d6e740c3sf1482004pjg.9
        for <lists+open-iscsi@lfdr.de>; Tue, 19 Apr 2022 11:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650391941; cv=pass;
        d=google.com; s=arc-20160816;
        b=iR6TLGl77cnZrvuPaq4Gc008MNqnO+9c2LxmWTq7k8pSmRWnK6IA8GUTKv5nA99YvK
         wUquFhnarbhLcQDWkYKcVIFpomxC6VOviPy2WJStSLKVWO41zwMjeZPnRbdhWgjXIaJa
         AQKgBq8q0nlOJbuV2+6x+ormDDf9RxQiGmRJjXCkJ9LHT/kPt0XJvibRWgqYgah+vcJC
         4fHpcgte/jNWBu4NB6v2cdiOGINXCnuMdzQrI2uU5mpS6DcaPJvnwh05GCsLpUk9lhiP
         JgJh9Vx7fW2p1hJSsbmQqbvzVrLywsDKnEwozLW2BIvGjE6V4q0EwMOZuOivho0RVTvp
         9lVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=rV3zqrwl2nWN83JH8smuwRqzmm9owDvjhtG7iRcUvTM=;
        b=ziE7jHjeLAShsmslP75aK5plJdY/jShT+Dhwj5jIxvLNp23Mht4gCBGVhUpjxHYCBn
         DTZ5JRTtswPbzWiO23ZP8Ie9zYPr9XsH9qa5fPpuE2zcNy4cQ7nGftGeLxAhUIkQigF8
         hgO0GZbHUGpDfhwdMZ5JuaP/Zx5G3B6JA3GyUv+qa10yLFV6XFSGU1inXInqKoxWmoQR
         VOVDC41ncSwg+V/xUghdBiEiZW9jI/h/o35HwIAi92l2EAXocyhMJK1z8NZVr/uFO/Pt
         JgadlkH+ztJaN9jgAkbHZysYTmE7korsFlpwgPhK8vIplAeC4oKbJlLAg12GBDOjPShH
         9Jwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GSUeLBfN;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rV3zqrwl2nWN83JH8smuwRqzmm9owDvjhtG7iRcUvTM=;
        b=kuR+kd5KbuK/I5tqeHmGnmQYKgkQUDgcpcpUm2olzE1uF+RS9IKou6OGc7GlzLdi/3
         kEEgTlvPqkremk89cYfqNhQSFDxbGloR8h4HRTvTa48DbXBnzVLEAzbubS4sSx2LO1ng
         JQx8KbAdPmXFPjVoC4ax3DYPt2DfHxlk1Ot3Ts2+00rMDmkJPVrua5GwodvSJ5na/MyS
         VqbHfEs7CU5wqyMmQUcio6HYAiwAFwKz77GB/4qy9sHUm1pQSfdU2B63EXVXLbUP1nZA
         8pQc04eEFTwynUPTD9iE4zY60YLl2vBQDE0v5U/W6mGUz+jdivCLW86Fuu0BoojPxgg+
         ja7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rV3zqrwl2nWN83JH8smuwRqzmm9owDvjhtG7iRcUvTM=;
        b=2AFtbrNGzBa6KpRK2FhAv/Fj3V29B16+j0iv/ppf6nfugSAf097RO9YBS69J84xYQI
         bgByZ/hSKEECveNqPQgUKdqwKzndnhC5wH+O3mfnvtf+zIiOaJzhIZnuoRteCL7oG2zJ
         B4Zeiay4JmstT7zNgJO8z0znzf34kAw0b3JTtRslBqPKjR4uj0Fh9cT4QPo8ZPk8hAV5
         1w/89pOeViJscuu70C/pOLki4AgfVcCiIAMWNqUjC3yXllKRTc0VEoYpYxYGHysjdOIR
         b3qmR6MXKqnJlRLU6hco3U2hQRzC3r1ms+4MS18QkCpDrKNxf4vWgiokH0bloabCIVJP
         xuGg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533GgHrc45uORLnlyhlcCdJcdikTQodiQfuM8wmeXP3MNKX8LK2o
	NXrEo+kLv45IbS2m4j/SBrs=
X-Google-Smtp-Source: ABdhPJwH6CDFlbkwcB3fCnrvuZDz7w+i4UIDEtO7MgqKdng0ih0EEcyIHsEFr8DDdL+OGUtIwm6xWA==
X-Received: by 2002:a63:f34d:0:b0:399:5abe:b2e1 with SMTP id t13-20020a63f34d000000b003995abeb2e1mr15968848pgj.451.1650391940607;
        Tue, 19 Apr 2022 11:12:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6a00:179d:b0:505:9501:adc5 with SMTP id
 s29-20020a056a00179d00b005059501adc5ls13757694pfg.2.gmail; Tue, 19 Apr 2022
 11:12:18 -0700 (PDT)
X-Received: by 2002:a63:4e62:0:b0:398:cb40:19b0 with SMTP id o34-20020a634e62000000b00398cb4019b0mr15863141pgl.445.1650391938640;
        Tue, 19 Apr 2022 11:12:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650391938; cv=none;
        d=google.com; s=arc-20160816;
        b=y1Ov/saMAdrwH9Q2eC2zegKgiB/rmah0rZS1tmEq2vvUtmje6Q/oowH489L+N0Q9X1
         3iPyPP6oPUSc1yvqDRun0sfRnbJ5U4CqjZSyqoSkCDpCRRUPMmPvwDQqkurtMO+WO2F7
         0sSmZnRBgewU+BpP9I31xpzXztGUaYm6USEggMcAwJAK0ENaR/lU9E2s2EmD8nKWIbx0
         6Bpzze1piH/rz5iYC2ZBpWm6XDxQwSD4H+hjrjI325Pq6qs+xIOW7VfK7DKILvgW5oOe
         3AHGsyWnKW14MjkKtRSlhcIrRfMei8P7pkG2ajlWa+iL/gExg66r6Rv2xbLHAL0DSlyW
         NQDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mvDdTgHM+F9tqiZ1EvmuTf/9WR+eJG50FjP7+UxlHCE=;
        b=zRwnwBgaYABy/FTJtFgIdUVSmnoPTJ7rTqGshpwWkPmj7jbJ5toOqHZDKGYGMWXOSk
         aiGwXHqxq1E0nX+kldFoSkBcCpv5l2U15zkXpI7xupznt6k670zhHfhhq1PutSAlVnIv
         43rQ8VdgQea0PkSrTUfGjPqHsiWR7CXYHrbEyaouyjeN9N2jo3xRnMAeTRy2StyTG9ce
         QN4W/w7r1QoIu4qNpsQ/b4RSAgpjeINBhZ04bZ45/2b7LKhrVid5n6JsXYj66wwOKfR8
         mRhhyg/3AszuGrz6djDDpxOIoq+apeuO6LKe4fXLnohZXbq0wi7Rrxtoy/2WXH3bIwEK
         UJRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GSUeLBfN;
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id s1-20020a17090302c100b00156542d2adbsi1152620plk.13.2022.04.19.11.12.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Apr 2022 11:12:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C41160C97;
	Tue, 19 Apr 2022 18:12:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24C83C385AC;
	Tue, 19 Apr 2022 18:12:16 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.17 24/34] scsi: iscsi: Release endpoint ID when its freed
Date: Tue, 19 Apr 2022 14:10:51 -0400
Message-Id: <20220419181104.484667-24-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419181104.484667-1-sashal@kernel.org>
References: <20220419181104.484667-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GSUeLBfN;       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220419181104.484667-24-sashal%40kernel.org.
