Return-Path: <open-iscsi+bncBDTZTRGMXIFBBIEPUSDQMGQE6VVOB5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9BB3C2FE0
	for <lists+open-iscsi@lfdr.de>; Sat, 10 Jul 2021 04:36:17 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id w21-20020a0568301455b02904b400d233acsf4620630otp.12
        for <lists+open-iscsi@lfdr.de>; Fri, 09 Jul 2021 19:36:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625884576; cv=pass;
        d=google.com; s=arc-20160816;
        b=FOTdAztl1rC2k3v4Yro/rM9TIhek5GX5JRz4aV0Ca2Cj0PZfEtm30v2Cr3LA3WmB19
         uqsyt0fQhSM267OkJ1ONnZYV0mX79QudGbVkFI23QpoC/oAJvecSqpcXHNhEn7UckhI7
         EVPaOjPzKCtCquAqOHrqGHO9LSUmcG40ijQIbQQk4KL2bc7hmCvewNzgHqY5/UzUrnP/
         odrhuViEOc8OodASP5HZ7fB0aoz+CPMOPlOM+x77Dg/iZsGaz5uWrT54wIiwKJnNBly6
         J+6bHnNq8JazOvKGLziEd8W2nRI+donMcvTbogGY1Vb74GlvWH8R9TE7wOUra2JFxvyQ
         wCmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=PGyiXhn3NrkeGbahs4pZUpTCrc9dgzk93DdPQKrg/a8=;
        b=LHyjF4OnEbs454njSzZpryz9uckxwSjojGnB1X7orKN0k4m+BjWhhOc7Wl3Mgp9/ug
         7o5KZTbQDtqJt5JEYrjHK8FZjC0ed8Bv+Tab9JEVrpCxtYa7eLoxJuLSZMqWAZ3AgOzm
         /77P2aTPJMnOmT52n0KIf5jbeduX2zSh+bjNRAQbt83sxs8nWcyaGzanv8zRbHBStWfO
         1ira2kMD1gO35hVIX/3do40t6ZFK3KyeMUm+O80zkkB9+wFjhlIxnYMQwTOnQAayU0CA
         +L81GxWW6WBILkIZGvflJgGM6Ygue6KS8Ww9sNuDNlyZcPIrJ7+vc5tc0lwIg5sEs5n6
         DYug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BtpmLKaa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PGyiXhn3NrkeGbahs4pZUpTCrc9dgzk93DdPQKrg/a8=;
        b=LqBG8pLILU4rF6mVweXmVzQiSOzXVGKqExw20w2qIfZbytERGlbgl3czEnn/mcGxLi
         TA1/YRMDhq1Fy+GIMoPvOVEAJXKoWj7ooOWVKPXdLmRwHuJ74nLPr0gsZ8DrcmJ1/E8A
         YKiUQXhNSwCKqDendB5aYxjpB8xrHg0oGHAwY5FjI+8NRRHW7Vhk6VuhkKa/Lr431+dX
         NAuJYF3yqEI63J6t4m7aOqSZqWb76q3C4yxE8JA/A6Xbs7vaHFOIr/jAP4WLR0DCELMb
         0UQ/i2Lwh/iLRsmdBKs+yDT0D0WGMP53Y+OsjFi6Ipn3Ww5NzohXZInZC8kJY6baw1c5
         wUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PGyiXhn3NrkeGbahs4pZUpTCrc9dgzk93DdPQKrg/a8=;
        b=Ga7BIabRCdzg7Kvk/+5x8b5I1XMwpcDKoyA8m3LtChcmM10XoO7LL5HG82dxBdt40S
         O+3tq9V6Fx8sJ7WxCM0029hht4ihOUTDVnKHi4pwa8teTvVect7KW4QfZYKXXA0aqwRC
         jD1chenpPxMqGxc95/++FDEJegatPUltymLfFAKgRLYxX0NSzErAPaFD29SfqMF5nEbK
         G2YcjVh1cbDxMYbd0dOmOwUgz39L7Cc/8DcMuX+P+Jd/gDI876MXUEcmrQyDpD1mmMW1
         UYBv4+M5BQjj3zZ6nqFJ6KEhHpwGL/JfbwuSFmXSHOug44Qk9qnd+KPaOHAWiWMn+g7D
         rgkA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53300dRe+IGxv1HqzUKNdDcV8nd7j49dJNGtGxbnPsL9nGf+Ivgd
	gbpb92DtUF3VAM1KXurXA7M=
X-Google-Smtp-Source: ABdhPJztB9mApK95LrBbOeT97JcZpfR4LlNUR4mzTZqQD22uUH1fn5iSR1pw42m19I1KafLuxI3HCA==
X-Received: by 2002:a9d:a6c:: with SMTP id 99mr31522012otg.21.1625884576236;
        Fri, 09 Jul 2021 19:36:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6820:16f:: with SMTP id k15ls635367ood.6.gmail; Fri, 09
 Jul 2021 19:36:15 -0700 (PDT)
X-Received: by 2002:a4a:8f93:: with SMTP id c19mr29360542ooj.31.1625884575717;
        Fri, 09 Jul 2021 19:36:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625884575; cv=none;
        d=google.com; s=arc-20160816;
        b=urAFUZw3kDws+6KpOAr022ps2S8Hv7+Yr94uYwu23EC1ZyR0I0TZIacP0hTl2+t2F0
         y7HvriuaZBj/im2W1JG6u1gJxNGQtT1N14HP7U/20vgcOr/DH2NHgnpuVXcAfZo0tu12
         w+QjP8OQWW4TpTCPWCT6S5k88WogWg4b/DuhZCREXhZWaLj4poAul73cTFOTRQpf+YBe
         /BQRCw7/iOnnrrZnEfyjtvb1wPadrcobm4+33/+NwRpHvg0cTbgvbI+ZxcarjxEJgdNX
         ThjMCrPZO/mxzlu1pXv2k/ELniTGispSZLqYl0OZ0f8KrAxbYvNTD66GPzjan6VeaCm4
         32lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6T0ubzkT8IYiI8il5XioG/vptR6FU/SnWt690EHumnE=;
        b=jABCjJ25n7/GMH2dYPRKElXKgd0slffnzwrWkhTTE1UVPlVTE+umEsdrhiXyG7X4nq
         cMEtKa6IyxUbJHfs9QBlSHwkksSAaIKL8Ilti9o8QBhWbORy8ho4gnnfXGb+ACWF0BNi
         r1GNkxE8ctD/L8GB7MO0564QJ3P9PjEULALOlKp7tQ86H18T0TJ3TYbTRc3zOPHBNxP4
         MwbmNCnikSfF4O2Gf28uY7vXE4s/BjMiMxRJOTu5CDgl3xl3rx5gDrQyFogDq7qVN+4k
         E5UFHj4IiYu+1nfbSpiVsRMDuENVBEsf+k4Fd3Pw/a3oVEj49P1GgKd3p3R9uqQBhWf6
         Eq0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BtpmLKaa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m16si901286oih.4.2021.07.09.19.36.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 19:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 253CB6143E;
	Sat, 10 Jul 2021 02:36:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mike Christie <michael.christie@oracle.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 08/26] scsi: iscsi: Add iscsi_cls_conn refcount helpers
Date: Fri,  9 Jul 2021 22:35:46 -0400
Message-Id: <20210710023604.3172486-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710023604.3172486-1-sashal@kernel.org>
References: <20210710023604.3172486-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BtpmLKaa;       spf=pass
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
index 50e2943c3337..30e954bb6c81 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -1384,7 +1384,6 @@ void iscsi_session_failure(struct iscsi_session *session,
 			   enum iscsi_err err)
 {
 	struct iscsi_conn *conn;
-	struct device *dev;
 
 	spin_lock_bh(&session->frwd_lock);
 	conn = session->leadconn;
@@ -1393,10 +1392,8 @@ void iscsi_session_failure(struct iscsi_session *session,
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
@@ -1406,7 +1403,7 @@ void iscsi_session_failure(struct iscsi_session *session,
 		iscsi_conn_error_event(conn->cls_conn, err);
 	else
 		iscsi_conn_failure(conn, err);
-	put_device(dev);
+	iscsi_put_conn(conn->cls_conn);
 }
 EXPORT_SYMBOL_GPL(iscsi_session_failure);
 
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 4f4d2d65a4a7..337aad0660fa 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -2327,6 +2327,18 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
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
index 6183d20a01fb..e673c7c9c5fb 100644
--- a/include/scsi/scsi_transport_iscsi.h
+++ b/include/scsi/scsi_transport_iscsi.h
@@ -437,6 +437,8 @@ extern void iscsi_free_session(struct iscsi_cls_session *session);
 extern int iscsi_destroy_session(struct iscsi_cls_session *session);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210710023604.3172486-8-sashal%40kernel.org.
