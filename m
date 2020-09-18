Return-Path: <open-iscsi+bncBC755V5RXMKBBQWEST5QKGQEKQBR4AI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E13B92707DD
	for <lists+open-iscsi@lfdr.de>; Fri, 18 Sep 2020 23:10:26 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id 1sf1274058lfq.18
        for <lists+open-iscsi@lfdr.de>; Fri, 18 Sep 2020 14:10:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600463426; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+H9KC7VYlYskJwm0cIH7UTV0uu0DP3zqqZLdbkKDgn9mFFECdQ1GVb//ra2bIAFtx
         QNRSUAMTMY7ffeu8MUQyQbr/u2vRyEvK9V51r1gIFhgrS9BjeIt2XffeRg+2GygBMDbd
         hLBZ3cdouH36vod5PqXFrXznFtMAefGD7GkSJG4nDN7Y4JgNlDz6J0ICpiTspXVaEsq8
         9Irm/kyj8ft0+XfSEJUBHXJi2z5DqjdmbRpQ7/Ol0yoeVYFttQJfjqycxZbdLjgyEGR/
         0A18bhHQefzQyYK4mrr8AEF7Jc/bmuOHqQPI0mjkexgm+UP+zYWE4nCRH1ojXlDGECOo
         8xfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=y/I2YtKpQe9kVkGy1B4KM6u9kqkJ8tJFextJo9W9gVw=;
        b=kIonEOa7vuOe0hipHQqRkCZA1t7Meqw+U9i/pis1GXUeDc0aPaX2hBgPNMg2rGRqVX
         gmJgqJO8VeplDXFqiB2IHIW1pkgjUYJdEHn3vhuu5iIkSNkEqlsFBAS8innDbJCP3IVJ
         cy+GE9LSvsKBgpg4qD8Ksc0NcHXkLgLRgd+4sKfqMY98RTL5qIFxMZL2kH/du7y8+of8
         qVlCf8MD2gl1zldeUZz36xJZEKVLsh5iqh6qaHKpKbkNR8QBF4DPgVqo0u5lS7yOUmol
         LDdgGaFwpzHLZ3S/3FN26Rmd+CFEgiBJKv7SKaYb6LxdXS+YJEQK1Yka+OeRcuqTjNY2
         0BHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/I2YtKpQe9kVkGy1B4KM6u9kqkJ8tJFextJo9W9gVw=;
        b=IHR9/jCoc3TRsiJ7/OQxGpAYet04V6S3eWc91Nzx7Cr9IgFdhm9cjeqtCSJ4qQt3My
         Y+RbwM0T9O9h5LR3QXMUWunsie7K1nIODZzHpURndKFKJ4TVRIDAzQN4Xpk77suF6Unr
         LILRv7lh1JyfR0p4BJkm3DciNs0SDgM02/o3YmHFUlYcnE4j/F4yDeqsgTDPz9nKTNZB
         QVxBQRbLeJ/zsEOf9gK0QiZ6H4sBnKszJvSTPzbSprXRr/w4vsgtKD6R/JAWPtM8Dd8p
         FTacTm4pxPAMkkRVKHPmb+24dXYWhf0IQPEN3jmsgKnK1En0zLbhdtSil6fVtLw9tJsY
         3BEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y/I2YtKpQe9kVkGy1B4KM6u9kqkJ8tJFextJo9W9gVw=;
        b=R8EO+AZE1cLpRwisZf3p9uvxm3PtGNaioPzz8DtgJqNI/zrmlvb+4ro+0XPjOIxazP
         9N4hze3VaVVb6QFBosp6u8zv0KfSwcnFCsiIoj7S9P3Gp/RpjR9fx7BRdTcdjnVtJ5D+
         ptkz//kVOzZpuTUlaK1Wt6oFejx0tV3c1rSY88UQ+d88+c2KsR/Ltll7GpAiNg61l1PY
         uC/kI36PgggMUatDZCmBB3z53q77MUKor+4nAYAH0XLgMfQHdJ+aXEDVOHaxDZt38Bgt
         KiisTnl4lIloPrL7qqU0g/RDCVIDmajdp2e3BhjFd4YAULcu9F/MjoG+E+j4EPYwbr+b
         VTwA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531qTbyz4NzIrkRTzFW3fh3Tl9jSGfpF6eCf9iJ/yvYU1UjA9b4s
	qudVdkFe6cwDv45FEm5KCko=
X-Google-Smtp-Source: ABdhPJyY5hodX0qSYYjGrI3RyzO/5GeL9DmfaV9eYEMyjcMbvcKmGvtH7TAih3XQBRq83+0xZ/gCMg==
X-Received: by 2002:a2e:9d98:: with SMTP id c24mr8713015ljj.281.1600463426404;
        Fri, 18 Sep 2020 14:10:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:93c7:: with SMTP id p7ls1004618ljh.11.gmail; Fri, 18 Sep
 2020 14:10:25 -0700 (PDT)
X-Received: by 2002:a2e:b169:: with SMTP id a9mr13273098ljm.42.1600463425174;
        Fri, 18 Sep 2020 14:10:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600463425; cv=none;
        d=google.com; s=arc-20160816;
        b=YmKh812wcK/R5K8kbO+btbLQJKYFsxpRH/pEj+OPajOr2Vh5Qbd9Hinx+UALoYHNcF
         jfVJSFBC539X1T/poY7QtttboUl+ke2nAZ2/xR6SxPQWgqY3r29FcjBhF2tJC0nQrJc7
         5LdDaCazPl9CwkQDIaiui89nh8Kmu/kFORneQmEIMicvXbKTNDJclcAuWEfAnKuEQBJl
         MPULec0faK2ACc4iW3pWkMFAyQJnIYzm1zUtp4oZaKerIT9OCDsQEDq7rXyZ17ZXHL0e
         RwZqCIZQaxMw/taHKbbIOUdmwg9GO9c8QYnnD/WrdLUfNHu7dY6+phRXZ3tRhZtsQert
         5cJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1EJUAaZm8d4ynNfey3O8d6mZjn3ZPHfsPlyUGiDRBnU=;
        b=qqT2nwJtlj+lB1AY0xC4cvTgo1DO1NQZ5YL6HgsQ6LYcfl87btX7djXfufOg8SvV4o
         /UmL6p8TMOQ/r6S1fBfsDaxhgFlgGPe0tjm1H7UmiR+vr+lALXLSnK1NiVO21tb0ur19
         xlEeensbgSr5QvmJUfQC2qN2A8pYl2rddOzEfJG0l31v2zGtfukzIdOO9TEMJBogYjlk
         vDjLMnGAfC2ZjtzXiOoJgnhrL3bIut2ZpNz07jjlxXK14dFaVo2ciR+0chzb9pkoNJLO
         SMBKmva1hXY44TTUBBXz1K4f8327ppmOlu1v6BapP4aB4qwiZ6DGmtSn6x2qkB8fzZfr
         Tw9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id y17si141102lfg.2.2020.09.18.14.10.25
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:10:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id CC580ACC2;
	Fri, 18 Sep 2020 21:10:58 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id CC91850CDA8; Fri, 18 Sep 2020 14:10:22 -0700 (PDT)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com,
	Lee Duncan <lduncan@suse.com>
Subject: [PATCH] scsi: libiscsi: fix NOP race condition
Date: Fri, 18 Sep 2020 14:09:47 -0700
Message-Id: <20200918210947.23800-1-leeman.duncan@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: leeman.duncan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=fail (p=NONE sp=QUARANTINE
 dis=NONE) header.from=gmail.com
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

From: Lee Duncan <lduncan@suse.com>

iSCSI NOPs are sometimes "lost", mistakenly sent to the
user-land iscsid daemon instead of handled in the kernel,
as they should be, resulting in a message from the daemon like:

> iscsid: Got nop in, but kernel supports nop handling.

This can occur because of the new forward- and back-locks,
and the fact that an iSCSI NOP response can occur before
processing of the NOP send is complete. This can result
in "conn->ping_task" being NULL in iscsi_nop_out_rsp(),
when the pointer is actually in the process of being set.

To work around this, we add a new state to the "ping_task"
pointer. In addition to NULL (not assigned) and a pointer
(assigned), we add the state "being set", which is signaled
with an INVALID pointer (using "-1").

Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/libiscsi.c | 11 ++++++++++-
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c3171fa9f..5eb064787ee2 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -941,6 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
         struct iscsi_nopout hdr;
 	struct iscsi_task *task;
 
+	if (!rhdr) {
+		if (READ_ONCE(conn->ping_task))
+			return -EINVAL;
+		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
+	}
 	if (!rhdr && conn->ping_task)
 		return -EINVAL;
 
@@ -957,11 +965,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
 	task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, NULL, 0);
 	if (!task) {
+		if (!rhdr)
+			WRITE_ONCE(conn->ping_task, NULL);
 		iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
 		return -EIO;
 	} else if (!rhdr) {
 		/* only track our nops */
-		conn->ping_task = task;
 		conn->last_ping = jiffies;
 	}
 
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c25fb86ffae9..b3bbd10eb3f0 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -132,6 +132,9 @@ struct iscsi_task {
 	void			*dd_data;	/* driver/transport data */
 };
 
+/* invalid scsi_task pointer */
+#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
+
 static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
 {
 	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200918210947.23800-1-leeman.duncan%40gmail.com.
