Return-Path: <open-iscsi+bncBDTZTRGMXIFBB7HT7H6QKGQE3WDLWAY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D59A92C42FD
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 16:36:29 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id z7sf1762463iom.14
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 07:36:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318588; cv=pass;
        d=google.com; s=arc-20160816;
        b=a9TIvta8AogLZIZvHf9qndNo9R/VnlNLy5YPKNEibgP1Cl5TeymFmaUx3E/+aiBI1C
         qNtrac+Awr9FMGRp7hAQPOPs+srII1AVZrmq4ef8QEoJYBxx9JvMh9cbmMQm8+kxbSqZ
         kVu7dfFyzEVhC5HzPA+YBx/LUNQDcprG2fs5orGqQn9eGUjzdclfF+x4WDtsBegD7jvY
         Tr8Y71Qhn84cPJ7uht/8hcozttTrohyhpqVdxnl+sBWnq5sq4nr4fxqJCAfINindAuGD
         /aR0xuZ/KmJbNG5GdSpIE2sBhGZwQ6GLVp7TSc1Rkdq7bYpkC7fXv3CV01gP+Q9BHeHI
         xf9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=eaGcU4k4yH9imMG1kcGauNKaxOfM3UJhVt0qBUjjcrs=;
        b=O21B7QgoXKDxIAA3t1bkv8P1I/hXRTbbiPCncTi/UqIgM20jKCwyzWIV459bcwMUzo
         Dpz53zYToN5jzMf8eS3vYBdkrwxdXIa5CK9oTKnIWiY7ySW8/i5cMIHznftSYTBb4UpI
         rj7fBfvU4MxOT2vgeRNVOF57OxH/NNRte6xxS9At7PdfvdMGIhZn6K8v4lnUARvoDSbe
         v6pViK3pvVeZmXbqzAUSyEQ6xWCDLjH0Pwh4rbKwJPNgHy48N/lRT+tJHTPRe0R4pDDG
         99Bw9oB6BM0cg0FjZpHYe9IXaMKP8Jp6PxsbDDaov1A3a+lzHjOjgXyrpLwIpH1N2+vg
         iYuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B712rkUA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eaGcU4k4yH9imMG1kcGauNKaxOfM3UJhVt0qBUjjcrs=;
        b=QE0XNC2DdgCJzHkL0uxLJikuyh1Qzic6CcJg7ikQCw/tCSNooxYPz2YzsPvFlgdurf
         MoCfQ42qwTmRQTpTtAuINJppAt+GLL9wEdOS+o/apoOSG3kzHI6xrpH4Elfp/rVC+JZv
         1PBbN4KjjBaFAhxkOysuTwcKqgRwzl+xiWRC1iLYy19q4ElNTMUDGDvcnXvNMZCzrtUc
         ZWjbt2tVvR9NW8+Gu2gyc4NgazJRflceg8oTams4KXaxCXiJ9luZET85OSKJdXC6MS7+
         +KVVq2ZMSiMH1Tbk/xIJhH7WHCSO8icqN/h0YVtxrD+rttdBFvG17LLucUwXkgG5f2UN
         JC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eaGcU4k4yH9imMG1kcGauNKaxOfM3UJhVt0qBUjjcrs=;
        b=N9jk60mcwetw+NT9tcCmOTGdfuc1lmcMbtdre6WYtKQGPYS2ww+NuUOl7X9s/JVxZe
         wkoWmKhtgXaVE0BHqbQ/bvkWl7Sk4b6ONOCazq1cIdriDhhvCtJ3FllVxCxBdEqFX8Oi
         qD0vnyEUfPBJeXKG6CZ7Fqdj+oYRmNpsm2LU9vtGu02hL98txn78WGYiDoXkTJYBF+Ox
         2pE3fmn7K+HuDdVIuVrjGT615kIHWXDrIkmndXPUPDQpvx5DbpFxCWnV4Tlnkvjqg42v
         Jcmtw54oEqhZv1CqTAlv47YcKrS+d0lu3LvJMHJM6rvxfLr2eyHYB7kykUCwrzpIcJOs
         x1wg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532H8eBu4Jt75r1XWsJucLPyc9AcyUt6D7Z5OQxcwjZOivKZWVGc
	10gp78kVXP7594mWjTOdAGw=
X-Google-Smtp-Source: ABdhPJwDU88235uIC8BWqCBoDg2GFkDwxn+hVEkdz/WBucvhPhIydZWxjP70Rx/3I1cphPIv4/ItIw==
X-Received: by 2002:a6b:e012:: with SMTP id z18mr3062201iog.157.1606318588679;
        Wed, 25 Nov 2020 07:36:28 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls422600ion.0.gmail; Wed, 25 Nov
 2020 07:36:28 -0800 (PST)
X-Received: by 2002:a5e:c10a:: with SMTP id v10mr3086142iol.54.1606318588181;
        Wed, 25 Nov 2020 07:36:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318588; cv=none;
        d=google.com; s=arc-20160816;
        b=ko9l5rnik5+mrK+rucVhCvQQ+U6wx8H8TF+yj06H7jr3YWgtIgsg+0nHBGFhPP240c
         tZyXZJ1fk3Q6fy7b4e80fqUewBnYzagdq3Io21vSHldZB0xfYIPwZyg0KkMyJHrZI9z/
         hFurGKnEh5qSJV5I3wZx+aeFplwk9B7sBSlsU147udq5v5PmWAX9HrVA5SAMT/ztxmzd
         yT0dX2txMVEZbznkQg8+wSA+3ED9PMJOkYqlFa/vmL4/5xK2x4+rN6ZfdfWRXXsf1O5m
         XkB1RRka0ipXzpEaKhuhjuO5/NtIQ1mt7hIv/bcmcMauLZMS7DLw4f/AVxgYaHSKLIdm
         MDeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g9OKM8xX8vijEEHp8BY76ORHEE/KnGyKK40QObxafVg=;
        b=ccnj8iYTs1DWhVAZ4lvkbVBDh+RomK7LJTnD5SN7WUdi+/BCRTjmGymBCFASvueGYq
         pw3cJhb59JCgHulKet3cEO84frV/X/wBPKD4f36un3p4iHymnrjpvhaf5LlvnaO6Uwj0
         jrRL07kwjhMNqn2ane6ZvwogKRjZQ5VxfT3crRbkG+xvgcuycggrjI4DVk2Ak+xx6/hL
         Z0F4dlOxgUrye4G5BustwqYEcxM366hWj6yltfW2ykwYlIHMP/ziLu3rtKHTdvRdHewb
         PbYJL2cRDr3NrraGN72zdFUclboV4vQycMrqnxFALQYoJgPQwnNElqyTpFQfODvX3Wti
         aNoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B712rkUA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o11si163239ilo.0.2020.11.25.07.36.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:36:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3374E21D7E;
	Wed, 25 Nov 2020 15:36:26 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.9 26/33] scsi: libiscsi: Fix NOP race condition
Date: Wed, 25 Nov 2020 10:35:43 -0500
Message-Id: <20201125153550.810101-26-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153550.810101-1-sashal@kernel.org>
References: <20201125153550.810101-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=B712rkUA;       spf=pass
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

From: Lee Duncan <lduncan@suse.com>

[ Upstream commit fe0a8a95e7134d0b44cd407bc0085b9ba8d8fe31 ]

iSCSI NOPs are sometimes "lost", mistakenly sent to the user-land iscsid
daemon instead of handled in the kernel, as they should be, resulting in a
message from the daemon like:

  iscsid: Got nop in, but kernel supports nop handling.

This can occur because of the new forward- and back-locks, and the fact
that an iSCSI NOP response can occur before processing of the NOP send is
complete. This can result in "conn->ping_task" being NULL in
iscsi_nop_out_rsp(), when the pointer is actually in the process of being
set.

To work around this, we add a new state to the "ping_task" pointer. In
addition to NULL (not assigned) and a pointer (assigned), we add the state
"being set", which is signaled with an INVALID pointer (using "-1").

Link: https://lore.kernel.org/r/20201106193317.16993-1-leeman.duncan@gmail.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 23 +++++++++++++++--------
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c3171fa9f4..f9314f1393fbd 100644
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
index c25fb86ffae95..b3bbd10eb3f07 100644
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
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201125153550.810101-26-sashal%40kernel.org.
