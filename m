Return-Path: <open-iscsi+bncBC755V5RXMKBBFOKS36QKGQEMSDGPHI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 520962A9E0F
	for <lists+open-iscsi@lfdr.de>; Fri,  6 Nov 2020 20:33:42 +0100 (CET)
Received: by mail-ej1-x63b.google.com with SMTP id gj4sf831479ejb.13
        for <lists+open-iscsi@lfdr.de>; Fri, 06 Nov 2020 11:33:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604691222; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLGNszARdk61g3tJyk0OaKhSfMbkuRJuamyYasabSoyBhr+7Z5X1Kp56ndjrWEZezM
         wcQOv4zPIwkV4WnVzPHgwQw63E/mSMKg3o/EzmBiXoTj4dr/BUeK4DVDlqCbXrdLStVB
         1kcqA/UX0I7dVKDr2NmGqpunli6r/NhZJAiCXu4O6ndh+OTYzJZmWQjrvMEqdsXrDdxA
         oDJpXfp67Q5ZsquVh9Cl6o/zCUbLT6eERdPePXsqUU1Iv4aalYfsg851F+WTfBBvkSNp
         pNR6/tarIdOtcEjqznXMhafQ+Ed1GqMcGN2qEPZKD3XZpL23akf7FxXPRf84UHUvmu7P
         Bskw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=izUbp4J26RIxcM1MpNNBhDpmXMGvvL4uz9M3DnJljYM=;
        b=nQ8F7ByVHJr3eFZYSVkxADZIE5I48syghInmdoVfRPu+VOiPPp+G2bJ2QbO0du5H/p
         TKwUBqSW78FsCJkwR00ihJ0r6yhPpvIK2CjUVxZofq6qSMMgSYiSPAKZH5cPadl8ZLjs
         3Ao/7RavehT+gaxSuDFkAqQZCSScLmUwoxZj6zGIv1FVv4shjk9F9ob0rIVimNRDm87B
         pTtXy4uYF1VVrH/o32iliGu7OabT79EM1JtFw8k2mxouw7MVCp2bOJ6J08UjcFpWOLtZ
         hX+HXjLIJkDJ/lNaKO0TpH4Wv2wz7TgJn3DVod1IvLUEPOS3c3kqrO10Lu5HOpfKywjX
         eVwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=izUbp4J26RIxcM1MpNNBhDpmXMGvvL4uz9M3DnJljYM=;
        b=mST5sFyYNLPz5w1odLlQOcpWqr9gdYKA3u4OIausFbSkTm4BIgXfZ6NV2q0pZbcX1j
         Mju4Q2ekZWg8gMQkvzAKjvfUu30jyATglW9kwHHrnUx+XvI4Ri4EnPMpweUXraW49ueL
         8QuOAs5XeGOkNYAx0rkFYOGld74aJtDFhwXMyMZIi+lsFKScUapTBxdBkRpCQi7zmTqS
         o0fUK9Swc73TbPDnB2XY9+htUbyfG3G6InxSEJdhyHaQHJZWAjAh72qzE/xObfrbq4ZL
         8zp6IoKrvx1oxmkwT3W7pC5I9S1xATrq8aEQWazu3Xw1ffcpguDcDG2xyxEw5SmCS/1H
         G+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=izUbp4J26RIxcM1MpNNBhDpmXMGvvL4uz9M3DnJljYM=;
        b=gABv3Tvzmf+hRafW/GhOTfq2vYD7U6/145PO+piOUBkniZxTTMxYDM0q2tkb5Fnrpp
         Pxd7ci2uUeRP1vv/A4b1OladUaqgCZBgfCl0jvzSYhy9cP6JhDSwCK1xN7uLxQWYIVWT
         hOrJUr/VxeKHLycfB0xwklsjUxa0o9PMXvshgPRIhcNnaDOJjxj5/MvknlHMEqRq9W71
         p7RLHnCL6r9rI4tx4AzkD8A4kV289N6AqLl7MEDtGklS7JmlwtIlgEgtePBaNkE8UBUX
         7GFTsPTHmCK1AsWUYzT6El14GIwG6XzaLzIByoRI1Rnz89lA7/DggWsiPvKCcHm/ylvV
         StkA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532SmKN03mgtx5wVmsH2ZOOJnCybE2z37yCRvI6XCU5lbCpSgd2G
	ByPjNMATVWRLrNteTvyY7iU=
X-Google-Smtp-Source: ABdhPJxcPK5UOAOK64dyNLiLbO/Dicsmn53kyjOpcmx5SBt37sO3fWE/68GZgMAveHY+PhEbWrKadQ==
X-Received: by 2002:a17:906:e216:: with SMTP id gf22mr3558717ejb.286.1604691221863;
        Fri, 06 Nov 2020 11:33:41 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:5208:: with SMTP id g8ls1256375ejm.11.gmail; Fri, 06
 Nov 2020 11:33:40 -0800 (PST)
X-Received: by 2002:a17:906:74c6:: with SMTP id z6mr3735988ejl.448.1604691220511;
        Fri, 06 Nov 2020 11:33:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604691220; cv=none;
        d=google.com; s=arc-20160816;
        b=PMECb5lVMLJz7UzoMXvSVujVPDoD5u0LMDH2rlXVorv8cJ9E168/WB2i2XhWlqDR4b
         wb+Rq0CRyAJrp7luMU0kWYYxJ1RGpxr/MipPuxzOhUaKFBK+i9eF4fheKrSG6E3qEAw+
         a9j37LjD4CU1gOZcyqy8Phemo7i2gR+9/o0Ngens48q1rXJcL9hMxX+c+CMQoHkQSiTq
         h3a4wBsWegKuj3PUd7U+G1gwXox/kB52OFcDp57GdxEVgKb2HvTEUUrRb2IeupAtSD/H
         TVUHlDQ2rT6Bey0u9w3N2blWRlpJrP90yE/0Zpa2TkMJstYzumKeB89gAyTZDKDBrOSp
         n5kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=awiGcyKS9cImVEdhtdKyKBWOKnXZrn9YwcHbnjGuSaM=;
        b=S745lcwfM6M6xHdsvjsgnX+prEeIfPKRW24VymHVeboY1qFAr1SK1O1MLonhWsCmK7
         00W4DxHecPeWLe6ARh9+s1qz+cmaw99d8n2qfBx0YuZExdvIloLQVTPq5nNgx0W/WFWF
         4h7Fao4kQWwgfFitMMOJNYSlff5clJwRV327rU1z1OWD0nvU/cB1ISngXFUsUYbfdL2x
         R438w31cftNsvXDzlXLbUi4ryrRm5/9CBQoXTXp/F8Uc8fD+by62yVjk1zArzs1rvi6y
         mMLwCNARa5/M6TzsbhcpuXy0XViKUXYONQRTs3tUw9NMlN6Np9EUZtdfPsz6ZlBlr4+h
         FPfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id bm8si38004edb.2.2020.11.06.11.33.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 11:33:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id F0ED1AC1D;
	Fri,  6 Nov 2020 19:33:39 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 02BA653FE57; Fri,  6 Nov 2020 11:33:37 -0800 (PST)
From: Lee Duncan <leeman.duncan@gmail.com>
To: linux-scsi@vger.kernel.org
Cc: michael.christie@oracle.com,
	open-iscsi@googlegroups.com,
	Lee Duncan <lduncan@suse.com>
Subject: [PATCH v2] SCSI: libiscsi: fix NOP race condition
Date: Fri,  6 Nov 2020 11:33:17 -0800
Message-Id: <20201106193317.16993-1-leeman.duncan@gmail.com>
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

Changes since V1:
 - expanded using READ_ONCE()/WRITE_ONCE() to the whole path

Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/libiscsi.c | 23 +++++++++++++++--------
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c3171fa9f..f9314f1393fb 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -533,8 +533,8 @@ static void iscsi_complete_task(struct iscsi_task *task, int state)
 	if (conn->task == task)
 		conn->task = NULL;
 
-	if (conn->ping_task == task)
-		conn->ping_task = NULL;
+	if (READ_ONCE(conn->ping_task) == task)
+		WRITE_ONCE(conn->ping_task, NULL);
 
 	/* release get from queueing */
 	__iscsi_put_task(task);
@@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -941,8 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
         struct iscsi_nopout hdr;
 	struct iscsi_task *task;
 
-	if (!rhdr && conn->ping_task)
-		return -EINVAL;
+	if (!rhdr) {
+		if (READ_ONCE(conn->ping_task))
+			return -EINVAL;
+		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
+	}
 
 	memset(&hdr, 0, sizeof(struct iscsi_nopout));
 	hdr.opcode = ISCSI_OP_NOOP_OUT | ISCSI_OP_IMMEDIATE;
@@ -957,11 +963,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
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
 
@@ -984,7 +991,7 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
 	struct iscsi_conn *conn = task->conn;
 	int rc = 0;
 
-	if (conn->ping_task != task) {
+	if (READ_ONCE(conn->ping_task) != task) {
 		/*
 		 * If this is not in response to one of our
 		 * nops then it must be from userspace.
@@ -1923,7 +1930,7 @@ static void iscsi_start_tx(struct iscsi_conn *conn)
  */
 static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
 {
-	if (conn->ping_task &&
+	if (READ_ONCE(conn->ping_task) &&
 	    time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
 			   (conn->ping_timeout * HZ), jiffies))
 		return 1;
@@ -2058,7 +2065,7 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	 * Checking the transport already or nop from a cmd timeout still
 	 * running
 	 */
-	if (conn->ping_task) {
+	if (READ_ONCE(conn->ping_task)) {
 		task->have_checked_conn = true;
 		rc = BLK_EH_RESET_TIMER;
 		goto done;
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
2.29.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201106193317.16993-1-leeman.duncan%40gmail.com.
