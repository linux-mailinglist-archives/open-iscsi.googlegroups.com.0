Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBYEI3OJAMGQE6UKM5PY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 916414FF6EE
	for <lists+open-iscsi@lfdr.de>; Wed, 13 Apr 2022 14:38:58 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id l20-20020a05620a28d400b0069c63137970sf156774qkp.10
        for <lists+open-iscsi@lfdr.de>; Wed, 13 Apr 2022 05:38:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649853537; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBvmuqf65sme2YkeXCzixp9gp31UZQddbOkcE6H6igE3xwxKyqQDqIeBJqHVGfvgV7
         UfG8YR2wpkCEWgItqgjvO/+VTfcBh2yYXWqPabmDDWyqFefpXlyGf23Qc/wja7lywaKp
         KPteSdTWQzJRBOedodaiVOtw2Aqapc72Mo79YVd6YXJXxplxHbzS/kVV5eaIO0gRqzHn
         v2ONqzEACdtQi8E0bZd3DTzvxzLLdMUVXQBlQ4yA9IMmvnBQWQUndLiWPHkK/sGo8/li
         5xzQTurFmozcdq/JBNwwMQ8q75utlHsGgPBIfS+VM9cNKKvg8caPY4uE8Crx3ivA2K0U
         +HfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=YdWBKIWhA4aiibIaGeofxRitrPIYpHP96SuM8IIQwlE=;
        b=VVVotW2Lh1EwV2qZDRnfbzNdOdxTTQ86aL+rLqTySFoqWm/c77HGiU5hCj1p2/IT8p
         /LzJYB61Pzwbh/ieuuWUDnrVY00hW3OgAigZNbeSKv3OVGaeCW3mW3H2XYIzj78a970u
         m2W3Ga11WwgfdfJXzkbri9hGnnZEah4aO0TLa4+uWBA08LFrG6HTzT1xl6uCslTPima4
         0PxsotT9eW5r/QGW6v3Vr97XQMliEtQ/GsaRHHuhvYnUGkhBRl+YFZN3xuGsx+iy6XVj
         d/8mZHYoTBaumH/gvAJlGlal4Xpd7Jv13DIlGDJvuFfWmwBpR3mBX+02ML71EyUrjK3j
         VE3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YdWBKIWhA4aiibIaGeofxRitrPIYpHP96SuM8IIQwlE=;
        b=begH+W+PeIjvBHHCGqmh9WZYwavMzAUYqSEQn+912V7iRsbtF+6HhG/t1c8smlM7Nd
         KB6RaLCtGcfLRWOeXtLLkVghRrd9lpx0Ey7C80fOE/x0Ff4JCWW2ZC5KOiibynRyYZYJ
         C3Dn7nLknZvIzSCjhGAfhl1A8KB1+H+Y6NRkICNsTxWEIKBloNJB35xG4rVxxqGHSu4N
         wPEfc2KABzmueBwrwt9xfOgb/mQaG1Jtangj4zXJGmmSk9/pawyLR4320QYSvrOldBjR
         w4fPunHcq5sHhYrhnuUbKh/TloT5AAJGqYVHwQnc6S8R0/NKxPQxvwBOtuMggbDV8Ghu
         XRLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YdWBKIWhA4aiibIaGeofxRitrPIYpHP96SuM8IIQwlE=;
        b=F3rNtYynW/GzdGFGM+pkUX1sA2jFQs10CsTHLRS4yTg+qM+qC6vX+RWKklgTnRa4kR
         2J0KPKssmnOOZeE/Plf1Sd1r3x+mg6rk+wAf8eXLgcr8mPLSLoZo0HfGpTCEe/DbIK34
         52lx8rG7RSwbvnccLPClipyNZfkTzWMTeqUgyHVdXczxcrDNoIwA4N+ZvRvHpAWZlE5j
         iZ4h/wsWhvM7IkIQCznkgNa/O9rUp/6GUVMDLQ/C+O9y3i8fIpL6Dt4Jw2rz7YMTiNn6
         GfD60U8kdsxAiG+uVsosk8o5sWjzuD96VMWaXnp3+ZCvTQPhKW9EwSxjv+FC1sFGIjCe
         vXHQ==
X-Gm-Message-State: AOAM5305u/suoEVxhyKR9VPTXOg+xHTQR6JtsnNYl9xfno2R/O7i7A8o
	maRO0y8+vM5gv3n6BkYAGpg=
X-Google-Smtp-Source: ABdhPJx3TxlCZL4hrYxqK5qDH3RTYgbCG/uywHG81TOwj5wGprgfI+kdh5v/dPxalxGdBLUU3DIc8w==
X-Received: by 2002:a05:620a:1a29:b0:69c:5141:f417 with SMTP id bk41-20020a05620a1a2900b0069c5141f417mr2764440qkb.409.1649853537526;
        Wed, 13 Apr 2022 05:38:57 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:4019:b0:444:8d52:34c with SMTP id
 kd25-20020a056214401900b004448d52034cls1149752qvb.10.gmail; Wed, 13 Apr 2022
 05:38:56 -0700 (PDT)
X-Received: by 2002:a05:6214:1d0e:b0:445:5f77:e292 with SMTP id e14-20020a0562141d0e00b004455f77e292mr6079250qvd.79.1649853536120;
        Wed, 13 Apr 2022 05:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649853536; cv=none;
        d=google.com; s=arc-20160816;
        b=wOLn4MpUH8Et6DKEa29C2faguw4DZFsECX14XcY9kQ9WE93gKxc4vEaV9gLDVvF74J
         4Miy9C33dEtchi/wGeeWkBKrXLR1RQkJ2LlDiJDc65FGygyGugft2Olyz9BvAeElMzWw
         SwZq6zwWGyUFQK1I7RSD7e+bZOeBHHne4FU/09M5hgyuwRR0FevtDJfcMsoCc6EGxlM3
         XB73gO9c1jlbIQ84H6jq6Cl9kkYUVUria7bYvt0qskAF8OPeQ/yUu4ws9VZ/1isVg/ZY
         fhq2eALYPF40ZnTrDlJN5Y98IF1VoQaLCaycXa6lTpkDDDJsh9DCySfM6BxnBNAKVIdr
         qYQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=CXOTs5U8eyehN1DO8zLxgRRGslQCHP8IDw+Mdiuql6M=;
        b=f49N1kLaqB1GV3sdploQq7ZWSYzUqzHQa7wFFs09DUH56vqulKi6CQPWO+kO/KhXOx
         7PQuGqqVLu5hPYWSQCnSC/FNY/Qfejju4wIPjmL+EbvRv3xMMPx7cFUoFjhcvG9ZMPKN
         2/mQQfKPlRYYT0wHu6omdf4oTfsQwTx5+zFFn76qpUTuLORtYQ3eVwsdOdFzAfXGJVu1
         zJxTAreQKrfeuAS6gYz1t/UppbqJ8dy5GIW0cGrtioVL2OoywavL3AMEgqT+KHX8vo8K
         gDm+iDHWA2BbF3wiqTFKNQ+L8hrRKrhJFnkU895zB9ViNZxjBAa4pOzfyL9oxGM1qTen
         0t7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id i142-20020a379f94000000b006999e9e7f75si1283012qke.4.2022.04.13.05.38.55
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Apr 2022 05:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4KdhtR75THzgYj8;
	Wed, 13 Apr 2022 20:37:03 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 13 Apr 2022 20:38:53 +0800
Received: from huawei.com (10.175.101.6) by dggpemm500017.china.huawei.com
 (7.185.36.178) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Wed, 13 Apr
 2022 20:38:53 +0800
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 1/2] scsi: iscsi: introduce session UNBOUND state to avoid multiple unbind event
Date: Wed, 13 Apr 2022 21:49:46 -0400
Message-ID: <20220414014947.4168447-2-haowenchao@huawei.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220414014947.4168447-1-haowenchao@huawei.com>
References: <20220414014947.4168447-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
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

Fix the issue of kernel send multiple ISCSI_KEVENT_UNBIND_SESSION event.
If session is in UNBOUND state, do not perform unbind operations anymore,
else unbind session and set session to UNBOUND state.

Reference:https://github.com/open-iscsi/open-iscsi/issues/338

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 19 +++++++++++++++++--
 include/scsi/scsi_transport_iscsi.h |  1 +
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 27951ea05dd4..97a9fee02efa 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1656,6 +1656,7 @@ static struct {
 	{ ISCSI_SESSION_LOGGED_IN,	"LOGGED_IN" },
 	{ ISCSI_SESSION_FAILED,		"FAILED" },
 	{ ISCSI_SESSION_FREE,		"FREE" },
+	{ ISCSI_SESSION_UNBOUND,	"UNBOUND" },
 };
 
 static const char *iscsi_session_state_name(int state)
@@ -1686,6 +1687,9 @@ int iscsi_session_chkready(struct iscsi_cls_session *session)
 	case ISCSI_SESSION_FREE:
 		err = DID_TRANSPORT_FAILFAST << 16;
 		break;
+	case ISCSI_SESSION_UNBOUND:
+		err = DID_NO_CONNECT << 16;
+		break;
 	default:
 		err = DID_NO_CONNECT << 16;
 		break;
@@ -1838,7 +1842,8 @@ int iscsi_block_scsi_eh(struct scsi_cmnd *cmd)
 
 	spin_lock_irqsave(&session->lock, flags);
 	while (session->state != ISCSI_SESSION_LOGGED_IN) {
-		if (session->state == ISCSI_SESSION_FREE) {
+		if ((session->state == ISCSI_SESSION_FREE) ||
+		    (session->state == ISCSI_SESSION_UNBOUND)) {
 			ret = FAST_IO_FAIL;
 			break;
 		}
@@ -1869,6 +1874,7 @@ static void session_recovery_timedout(struct work_struct *work)
 		break;
 	case ISCSI_SESSION_LOGGED_IN:
 	case ISCSI_SESSION_FREE:
+	case ISCSI_SESSION_UNBOUND:
 		/* we raced with the unblock's flush */
 		spin_unlock_irqrestore(&session->lock, flags);
 		return;
@@ -1957,6 +1963,14 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	unsigned long flags;
 	unsigned int target_id;
 
+	spin_lock_irqsave(&session->lock, flags);
+	if (session->state == ISCSI_SESSION_UNBOUND) {
+		spin_unlock_irqrestore(&session->lock, flags);
+		return;
+	}
+	session->state = ISCSI_SESSION_UNBOUND;
+	spin_unlock_irqrestore(&session->lock, flags);
+
 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
 
 	/* Prevent new scans and make sure scanning is not in progress */
@@ -4329,7 +4343,8 @@ store_priv_session_##field(struct device *dev,				\
 	struct iscsi_cls_session *session =				\
 		iscsi_dev_to_session(dev->parent);			\
 	if ((session->state == ISCSI_SESSION_FREE) ||			\
-	    (session->state == ISCSI_SESSION_FAILED))			\
+	    (session->state == ISCSI_SESSION_FAILED) ||			\
+	    (session->state == ISCSI_SESSION_UNBOUND))			\
 		return -EBUSY;						\
 	if (strncmp(buf, "off", 3) == 0) {				\
 		session->field = -1;					\
diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
index 38e4a67f5922..80149643cbcd 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -232,6 +232,7 @@ enum {
 	ISCSI_SESSION_LOGGED_IN,
 	ISCSI_SESSION_FAILED,
 	ISCSI_SESSION_FREE,
+	ISCSI_SESSION_UNBOUND,
 };
 
 #define ISCSI_MAX_TARGET -1
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220414014947.4168447-2-haowenchao%40huawei.com.
