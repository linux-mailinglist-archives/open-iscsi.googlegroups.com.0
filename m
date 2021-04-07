Return-Path: <open-iscsi+bncBDRZ7N5GYAFBB7ETWSBQMGQEKDNEELA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA21D3560AC
	for <lists+open-iscsi@lfdr.de>; Wed,  7 Apr 2021 03:25:17 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id s23sf3679718plp.1
        for <lists+open-iscsi@lfdr.de>; Tue, 06 Apr 2021 18:25:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617758716; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ml2iCswq8+trCklVOMGReR4bZr7jQeNbdm22kAoGfKmrCeiyIheQzaPgWocyvYP+4P
         uoq2oRkhQ+9wWhMt75eypsYg6yngAbnHv/fAbocjknioobHK3M5BFD3zcfcGHoKwm/UP
         0id0zqtHXkyzO5xieS9GieGEF6NmdfJn6dvLUXSadE8zhIEHd4lKbjsOvaH6s9xK7MIk
         44aFeuuiaYCBZ0Ig73YwZEq4nVHemL4EBnzhyhM8u6mtyJGsUbAxxxb0m8Q1ZrapDwc1
         2T2Sn6ifloRtRdnkc62vxFQmcQpzaF10S1zzkhqrErTO65SMJg5sL9MY17PKxIPHInKM
         +usg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=rQ/b/gpxFrf87LbQLv4JB1UWfQNV2AcVKnTxNkA/nqc=;
        b=R5F/e2SnzmswG7cW5UPdD7C2N6s0bqFWGNJxYQ2uGlK1UG7JM4j0OBTM1CW1047U8S
         XmoVuH+vTMmOzQ8rgA9DKyvbgHRd5hEa33DUzm7iIk56KXbHYDvMRD8xbYovqTc7SF8B
         YvOx/aH0CpT+IQxsd/rajWuHaVK9mbnqx+1Rq1fRFh9mSPtoEyfy4XlAooRO12Welgla
         mzJPbUJTloDa8HiGYJTXkphgHtDBvqsQVN+ak+VigOUBTwn87qqSj31CK9OucqmAksIU
         XH7/Mfj+OhCqg+JggiYErAG6rurtvbIvREUGr+Crm0GVCWPptEmMZObNPzLDFU46fg9M
         kJwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rQ/b/gpxFrf87LbQLv4JB1UWfQNV2AcVKnTxNkA/nqc=;
        b=Ln+iQ1yG5mcoWUGHN0xsqkCAGeIWXKIhk12WdaGGB6/OETtTcDO7BSCCHRU/K5ihn6
         OQ8eLQUP0l1TDoisaMPXgiaokcmti0ZNBZWjeqagXCPpNdFh01/+dH9w5PAYZpfNZ2gn
         nZXOexLoxzf9zXPwSMtDMnHSgls+rn1vFtR/W1t6hGm3ig96qFyBXevktKKlT1BcLXbo
         +4BXkqvyAmXBec/RVhWXfDEiMvioZ5NNNv8F0g6LD6DadEPG3/dKFW4H+4KLLaEI0als
         oOTKvpsbqbHgGm6TTh803O3UlxS8RlZeLXNOWpPu84+xzPO+mxT9DoSrrYivhIltFM/v
         v6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQ/b/gpxFrf87LbQLv4JB1UWfQNV2AcVKnTxNkA/nqc=;
        b=csiw+iY3Ekz51YzC5EFq/XjWxAQhBr3/+GAo4sg+aWEoizCGBj8sVAH7gJQSYRbWXm
         adm3MD7ohvF/Dse+bkI1kZ92B+j0QMssXdDzPfENSj3im1Q5VadwcR7iZNWOjQo83NY6
         YuNy9JrcM9Abz002S0+5mrRsV+UJeEY0ybpRxBoo+GnAneHzGqBfKoRK2RlNeXPzBVb+
         BfM1gVhiXz6cDICpNOb6p5U3H5JjwMz7e9jh2JkWvTKZO0JUdpTF/sKQWD4WrZT4pjkq
         TkJYfdlqPcNW3VvLIaAg7nUs0fUXD72yTk00sxziBix8uk89+ptB/Lj0IG5BMfCLawN/
         rR0A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532GawtXX6Xsvdw8+Z0GcTypRWJsGYSZsCTEdIfEVCdvV71YwsHC
	CJYk7WGFn35lejJgKZY7lME=
X-Google-Smtp-Source: ABdhPJy0QKC2ivAFGbGRPh3uo6LfkLWBwttCXr4UxLFxm+rZgPkk5n2P8QD5DLGSxMkFsw2sTIs+iA==
X-Received: by 2002:a17:90a:2c4b:: with SMTP id p11mr927210pjm.75.1617758716296;
        Tue, 06 Apr 2021 18:25:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:cb0b:: with SMTP id z11ls382400pjt.2.canary-gmail;
 Tue, 06 Apr 2021 18:25:15 -0700 (PDT)
X-Received: by 2002:a17:90a:156:: with SMTP id z22mr912634pje.181.1617758715635;
        Tue, 06 Apr 2021 18:25:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617758715; cv=none;
        d=google.com; s=arc-20160816;
        b=OXJ9hS/dncRXcLZFciYeHGMWWQfiRlpCQCSXTIQymsmZzND/s3PN3xI0L53q7owfPx
         npowbbo3M7/kuNIzRko3Dle0zDKmMbPr55uv0/L/ognVcRa6kXdaXbtNRFaxvPdSnTXz
         RVdEAu2cZPrz6FfJxaIy7MQloCWa8jp6lRNMasvCgHgGQcNTAJJtJONwFljpvLgGKDr+
         UAlrJQcaNW9WND1UQ8/8W/6MeuVq1xOPebhkTCQ5y+0huyPL74tUQwMWrp/7xZnM3pPp
         w6k/74xLtVge+LnqGsmSQnO2nYCvmfNYKiQynMa6wOXxpo2fa/XaY2Ur3G8AGOqXKpSi
         CzWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=X/DweJOtwoR6RPTeFMzxAJGbVCm82fn2JpXmiK66Wx8=;
        b=ZxhQhsVsES8dAbo9qEezZISdVRR790KalHlKI8YqPpeC4ELaw2HNCaPFxIDgNtcpEx
         xeh3wC1+ObGKEpF7mLsplmKxvLGQSKazix5l8+o0vDvWE/hG7I0ZfEVIg1TDlOFlMon0
         R9BjMmIRYtVIbLyQ6OPgax6/1t56IYAl1zbHY6cPg9YpwdpYv/u1nOtOUvHLXVDKRLYY
         xs7/KVZL4fI1X0u7un4ifh87hU3jXSQZiXaHe92IwZ5wyRoMsu0yRDR6V9qaJ+ODHa7Z
         thQDyTSBqL7BeRhV/B2jvk928LGtQpaIY2XH6hKQjE2rMpRCJEMHXE64tjhq6Q+YXU6Q
         KhNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id bj7si752478plb.5.2021.04.06.18.25.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 18:25:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FFRSj1qhnzpVNR;
	Wed,  7 Apr 2021 09:21:57 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.498.0; Wed, 7 Apr 2021
 09:24:33 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E
 . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Wu Bo <wubo40@huawei.com>,
	<linfeilong@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH 2/2] scsi: iscsi_tcp: Fix use-after-free in iscsi_sw_tcp_host_get_param()
Date: Wed, 7 Apr 2021 09:24:50 +0800
Message-ID: <20210407012450.97754-3-haowenchao@huawei.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20210407012450.97754-1-haowenchao@huawei.com>
References: <20210407012450.97754-1-haowenchao@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

iscsi_sw_tcp_host_get_param() would access struct iscsi_session, while
struct iscsi_session might be freed by session destroy flow in
iscsi_free_session(). This commit fix this condition by freeing session
after host has already been removed.

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 drivers/scsi/iscsi_tcp.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index dd33ce0e3737..d559abd3694c 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -839,6 +839,18 @@ iscsi_sw_tcp_conn_get_stats(struct iscsi_cls_conn *cls_conn,
 	iscsi_tcp_conn_get_stats(cls_conn, stats);
 }
 
+static void
+iscsi_sw_tcp_session_teardown(struct iscsi_cls_session *cls_session)
+{
+	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
+
+	iscsi_session_destroy(cls_session);
+	iscsi_host_remove(shost);
+
+	iscsi_free_session(cls_session);
+	iscsi_host_free(shost);
+}
+
 static struct iscsi_cls_session *
 iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 			    uint16_t qdepth, uint32_t initial_cmdsn)
@@ -884,12 +896,13 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 	tcp_sw_host = iscsi_host_priv(shost);
 	tcp_sw_host->session = session;
 
-	if (iscsi_tcp_r2tpool_alloc(session))
-		goto remove_session;
+	if (iscsi_tcp_r2tpool_alloc(session)) {
+		iscsi_sw_tcp_session_teardown(cls_session);
+		return NULL;
+	}
+
 	return cls_session;
 
-remove_session:
-	iscsi_session_teardown(cls_session);
 remove_host:
 	iscsi_host_remove(shost);
 free_host:
@@ -899,17 +912,13 @@ iscsi_sw_tcp_session_create(struct iscsi_endpoint *ep, uint16_t cmds_max,
 
 static void iscsi_sw_tcp_session_destroy(struct iscsi_cls_session *cls_session)
 {
-	struct Scsi_Host *shost = iscsi_session_to_shost(cls_session);
 	struct iscsi_session *session = cls_session->dd_data;
 
 	if (WARN_ON_ONCE(session->leadconn))
 		return;
 
 	iscsi_tcp_r2tpool_free(cls_session->dd_data);
-	iscsi_session_teardown(cls_session);
-
-	iscsi_host_remove(shost);
-	iscsi_host_free(shost);
+	iscsi_sw_tcp_session_teardown(cls_session);
 }
 
 static umode_t iscsi_sw_tcp_attr_is_visible(int param_type, int param)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210407012450.97754-3-haowenchao%40huawei.com.
