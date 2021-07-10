Return-Path: <open-iscsi+bncBDTZTRGMXIFBB44OUSDQMGQEKHK2H4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4993C2FD8
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:35:32 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id r19-20020a92c5b30000b02901f175acc987sf7145378ilt.21
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:35:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884531; cv=pass;
        d=google.com; s=arc-20160816;
        b=siY8NW+iIpPrDQbQY2HNkdXnaX1pdgYFwHrc5CYB2uLzKIA7kZl9fb/V+o4QH+7BdP
         x58ve4jKzkguq5ZKjkQDAvU9jmS+toB6uzZ4IlB6AQxdXEsPj1FaL/7NA9/1HWLLEkb1
         peKRw4DjA9k1Q5q444qFmMgZeznzR2rC7yV0NmaWIu3g3H74TRFnBGu+JMQc4li0A+TS
         tMMa/vN7k8vIch+r2i8+8DxCfVZxTaNVt6c+a+KTBn0D/REZULKOlkNWzJSgEuKv7TCQ
         svXlbCOmA7STSXxjhYBVIPBBssxAWEsVuOwE+FRL97m6cNZKtn/RX5Jx3jAmVsZcrLR7
         ASQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=wEazMezB26BgeB98muHtJom2dc8e9kxRvfK39PmfOAc=;
        b=TJpMFeQZIgOrU48rZgU3lE9g9cSVTmu7UJHqsX01XIG++3d341wDlNsQwGgz9SRkqS
         8yCVIbDpoSDT7Kt1LmqAmzdDxhmwnglkFBCBJQu+W759+fd5XHtHD6gfrJm2TLcFgLbi
         fNaGLd3pDBEIUCOQk6MNfQYvPRp9Z7xJJUy4DxWKmIcwUN7gXTIoH7WkVh5dUqnUPsei
         4DRyufkdCDP1algoIaZ95RbksMHiNR55ULIoz/2mRNS4FEF5H/ffUP+6p9j7+i9PGjRr
         iRisN4MvuvTI1L2mFqe3kZkS9ZNeHt2U7NcexxbQOXZ4H3111C4y9o7rRV5ttHIqdApL
         /zaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="FVzV4iv/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wEazMezB26BgeB98muHtJom2dc8e9kxRvfK39PmfOAc=;
        b=lhsJOR9EkrDua0fNZEeoNi1JXrd+fEhj5aJYYqjxAQwYsPtYlu8wiZGlfjDht0MQpV
         sJhpBPypWbC9isa7ZF/rH5v+egssOHkZJg5/LHHMHKwr+TUvy7ouFWMsKDFNDvBehfgd
         EbFX3zVNPbZaM6OFY1n2ViVE0WEqJNxlWXYj1F29AMkdnArt4i5NZJs7hafA6LLqCM+x
         jDmRoQTPduGBDM+JgGGLCPRnAgcyU2UClbsP8kMBN40pTBWvVB0z0B26hn6OliLeJCG3
         bHCUv2dUPxFv8uJ/xEadRwoHrYMdCM3PPYRITnamI90a+FczvgDdSo0xw70NFqWvdKSd
         A8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wEazMezB26BgeB98muHtJom2dc8e9kxRvfK39PmfOAc=;
        b=VyoFalQMlQVJjqmH7kckmJTmotOX6Ap+dZSvztmFVrY5Ddd1GCrX5gyWDXmWiZOjzu
         MW/S1zn9n948HyeE6n1EEofZlWulVha/T/8Oxwuvak4epRP9cvW2hwn585nv+PV0X589
         gaDTwScqEnBPjVWcIl6+ZKUKh9PPymACwbMM6l8OotwpSFHLnsYlJaDJkWRiHg+juZQN
         OGVSGyL34vA256ufk/PV37cFcwhiaLLv7OJvBKbPlMTztiOIH4K8HZz+RuelXlegudxT
         nLVhlfWXqPetatxzveKVUrB+2jWZuXZZwOakjGgPZhheDSz17ep3kBtqV8xhI3KMjVhK
         bXIQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530zNz8iUwpWml3lkWxxU3H1qydJXtyDxOw5oi4WNH/hraHdDV2D
	OWjw+/kVe+93YpJNtDZnjw0=
X-Google-Smtp-Source: ABdhPJwdhng9r67z22dWqF4xOCEI9H5eN35nUW+utBJxNn1R1QcVmA+jr62R8fxPt9zVjTYjxU3QzA==
X-Received: by 2002:a05:6e02:47:: with SMTP id i7mr29878751ilr.35.1625884531489;
        Fri, 09 Jul 2021 19:35:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a92:d811:: with SMTP id y17ls1916563ilm.1.gmail; Fri, 09 Jul
 2021 19:35:31 -0700 (PDT)
X-Received: by 2002:a92:b745:: with SMTP id c5mr399798ilm.251.1625884531050;
        Fri, 09 Jul 2021 19:35:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884531; cv=none;
        d=google.com; s=arc-20160816;
        b=fanHmXjQvfa/14ypHVVDkKkOTf+uHd8QLNEf7/Qc3Ph9VPbwTbJlsEMoH0T3S4Ag1n
         /a6waQ48ip+I2o9qYUAZ/z6+amWSToqCBccFb70YaXp6Y+whxz4i/+TBpP+Oft9CMfn0
         vy8b2HCIMTIffgVjUUvKcS5wkWKBlTL3ENFgpQA9bWoODmfvDW1HCkaJzxuP1VDqM3uh
         z/XCp25AwLO2U94DALs6zcof/fvohnecfV38f9Ps3hZXy3YcGxl2Dql67LLWh2pa7cEP
         z/kkLambJdcCsTAhRB/AK9OdFOXO7F9fmz4c+TsvFQgQM43seMil/ZoaPRCdOgUJ3pFj
         7brg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5tICQGGMTYAncRIllTBypFJwW71ArPHPraxt9Ik8VcM=;
        b=QfwFgEScXIhfJXYOQHw68f7ds9BUu0bi27LodJmCU1vlbTGFBWg2z5OEXAsDHZaxve
         6PTErp7SqVFhTXv3L2j8BsJ/6y64LxH7x58PBi4F28Z7gadV7fEw2mriarvUzbgp6p/0
         PDx092klrItpTqoGZJDwZrwiWK5E0vYRWoDaY4bhn3Ry1lHic+73iu0PK7bLkcguyVEU
         bLWK/+q8BwnDsBfWAY+Pku+Cknuk58+u7jIiNuzfS3w57kg2dmeUG6Rb0zs4nESH2DQd
         +YUbUbRZ8Dwqxc+mVHacPhhLKnCkpMsNS/tiO/J4rQ+2UroJImbJf+DyRA0ZJTxkCk2u
         Ztdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="FVzV4iv/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si683677ioh.0.2021.07.09.19.35.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:35:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3311E613C9;
	Sat, 10 Jul 2021 02:35:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 11/33] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:34:53 -0400
Message-Id: <20210710023516.3172075-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023516.3172075-1-sashal@kernel.org>
References: <20210710023516.3172075-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="FVzV4iv/";       spf=pass
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

From: Mike Christie <michael.christie@oracle.com>

[ Upstream commit b1d19e8c92cfb0ded180ef3376c20e130414e067 ]

There are a couple places where we could free the iscsi_cls_conn while it's
still in use. This adds some helpers to get/put a refcount on the struct
and converts an exiting user. Subsequent commits will then use the helpers
to fix 2 bugs in the eh code.

Link: https://lore.kernel.org/r/20210525181821.7617-11-michael.christie@oracle.com
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c             |  7 ++-----
 drivers/scsi/scsi_transport_iscsi.c | 12 ++++++++++++
 include/scsi/scsi_transport_iscsi.h |  2 ++
 3 files changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 21efe27ebfcc..f3dfec02abec 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1385,7 +1385,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1394,10 +1393,8 @@ void iscsi_session_failure(struct iscsi_session *session,
 		return;
 	}
 
-	dev = get_device(&conn->cls_conn->dev);
+	iscsi_get_conn(conn->cls_conn);
 	spin_unlock_bh(&session->frwd_lock);
-	if (!dev)
-	        return;
 	/*
 	 * if the host is being removed bypass the connection
 	 * recovery initialization because we are going to kill
@@ -1407,7 +1404,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index d385eddb1a43..95c61fb4b81b 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2306,6 +2306,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
 }
 EXPORT_SYMBOL_GPL(iscsi_destroy_conn);
 
+void iscsi_put_conn(struct iscsi_cls_conn *conn)
+{
+	put_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_put_conn);
+
+void iscsi_get_conn(struct iscsi_cls_conn *conn)
+{
+	get_device(&conn->dev);
+}
+EXPORT_SYMBOL_GPL(iscsi_get_conn);
+
 /*
  * iscsi interface functions
  */
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index b266d2a3bcb1..484e9787d817 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -436,6 +436,8 @@ extern void iscsi_remove_session(struct iscsi_cls_session *session);
 extern void iscsi_free_session(struct iscsi_cls_session *session);
 extern struct iscsi_cls_conn *iscsi_create_conn(struct iscsi_cls_session *sess,
 						int dd_size, uint32_t cid);
+extern void iscsi_put_conn(struct iscsi_cls_conn *conn);
+extern void iscsi_get_conn(struct iscsi_cls_conn *conn);
 extern int iscsi_destroy_conn(struct iscsi_cls_conn *conn);
 extern void iscsi_unblock_session(struct iscsi_cls_session *session);
 extern void iscsi_block_session(struct iscsi_cls_session *session);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710023516.3172075-11-sashal%40kernel.org.
