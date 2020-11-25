Return-Path: <open-iscsi+bncBDTZTRGMXIFBBXPU7H6QKGQEFTAXCSQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 645DA2C430D
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 16:38:07 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id 4sf1960224pla.6
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 07:38:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318686; cv=pass;
        d=google.com; s=arc-20160816;
        b=s7yc4wc6Bj321Dw/pLBArOyyeaKuQHvJmi1nsMGCejm4kxrCzQFQwl7SQG5p5yhPjY
         Pq5JC50D2f1A2fuwWKFrHJbWJ7P9uxZF58bNoOLb+l6DvaauazTG8CXIcT2PY68QUA91
         7hjLMPKIX3+MZ+BwJoFypjEe+PAx7+uJ1+Gdon9cGRsP+dZtFoca0h3VZjKbAIbvSyAE
         +FRQUAGThMZQhJkWXMDlEVVcftCFEFXkarI5TAHtqziEVftzofnMgWIDonHimx16CV1u
         bk8ryylWzSUr8MbqQQd4YTGG3Vtq4SBFlcSjbMGndoJ5TNTAc7fIcmbaiEHqlxHy9n1d
         Xe3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=SEiDuumSo/xS+peQOMR6a5Okh8tK3gA1ZhHOz26h+NQ=;
        b=Xf3RKu+IoZDwE8juJDxUEY+eb9K5YyRADpDL1Fx3KylCICiksKZqS5z566cRb8uuYG
         rDHeJ1JbKY9fn6MXcCDFbm9AAsus7J7N4W9fiWkkYAtOYI3RURY9wTzRcO9eL+fRXhKL
         L8mcHiYiM/x6muyMfHi7YExQE7cbmqXHULliQeiWorHRATs1Dgkg+iOKxBq2QTqBVTt5
         ML9zKAknftJ6Mt7+oLDQ2GBIA++mnFFuQ20RjZUJoV1evUSWx0c6hRPy91jvk8DonrR1
         rUTQnE2sZXxAL2Y4/na5pMfNuj2Yb5+tygnnYvZt/4+1CDd2OXBLNilq5G+TpQlsQmxI
         WcGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d1pyracc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SEiDuumSo/xS+peQOMR6a5Okh8tK3gA1ZhHOz26h+NQ=;
        b=jWvnqCyf0Yk0up3g8ebwBPLseRLD3Ol2hwrsw/zvuiyJ+ZTTH0Th2Z1kgsijKqJqUc
         m5u/HVe9b95w6qVNw7cgo6Wk0rSU4rtFVFv42+ErMUzPOjPgesI6VDZG+/bIezoP/OY7
         WWIBfc/1tDS4MW/DXiemMupkuO1PJwhLIXC/jXuG24CC9V3g0dRMxJefJzxb2ghXs/fK
         TMaLRSW/N/QNl6K7A4QwDhA164jDxNMbCTMsfc8aXokXwBebgTQB7kLU0h0JqJUyUJ/2
         PgGq5GRbpZBUeq41jN1HpaF6zIeiA4kywxNsjlxbnZj3jAHyA7irImJP4ZHaWz4QVfA0
         r0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SEiDuumSo/xS+peQOMR6a5Okh8tK3gA1ZhHOz26h+NQ=;
        b=cdxbEjz5hPhgBDMzZ1kgfuL1z8uK1fKJnk4snGlDQNzyEle5iWQoeSNW2YjCPcA0za
         g1XKvKpLTSEiFtz9wQEvE6OJwrra/2U/xf82daFjpUujdwlSGp6WzldTKaeA1pq05gw6
         +6MuaHVl25u83lKrtlRkg8taUNHUGA3+M+ytngp1zoRkxuYtE/x6gBF1tah354mpWh5X
         qOkOzqG7ahZzKaEVGYxZ8Y6tHL/uKZUSs62aT+uVgOJwErUhYYTG7aj0qFUXHLGno/Zy
         Pmk8q6vAaxa+mgCjAqm0kAnIKMpkX7EDc8jtgiaO06v2IIJPKWDsco4v3MH+apBmt9rb
         PgQw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533BoCkcqFmp3LwIoSjSkT9zvo23ssBQiMRuJY6XOVgglteNALwn
	Oa7Qj44lcD58bp/LJ/rxfSc=
X-Google-Smtp-Source: ABdhPJzL5liL5Zu5n/n91q4VrxkBaYvPJyq8vYKh6xCRPVfUlzaiZfZtlyfYeGM7kmyJtUVDHejgIw==
X-Received: by 2002:a63:4912:: with SMTP id w18mr2100480pga.9.1606318685912;
        Wed, 25 Nov 2020 07:38:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:cf08:: with SMTP id h8ls1781510pju.3.gmail; Wed, 25
 Nov 2020 07:38:05 -0800 (PST)
X-Received: by 2002:a17:90a:aa0f:: with SMTP id k15mr4974023pjq.171.1606318685296;
        Wed, 25 Nov 2020 07:38:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318685; cv=none;
        d=google.com; s=arc-20160816;
        b=eaBdMW01mZmQ9NWZQ3t1Aq/vObE/p75VEQyMx4+3Nyvd1jsDEM3G6hp6hdAou+biGN
         kxZj2fjl8UU69/FqJSdaBbpDPhWJ3z2Z6znJbhywMiPDYNd7wyQI/v/55kPGDjsAytZ5
         tsiKp8l7+A6gg+TJ0NpZkROETwJRjbMnBHwcdvkSZk5rQs4mb5bYmIqfcpAIwsuyTae7
         zrVGbmp53FlyYLwun/8IshzptB7jnD/AhE7yQH/yjtlHHxy//Gz1EWZ2kVsjlv1p4wpL
         xzBD7Ydm+mGHTli1wnvXFfqy2yvMsXBSitgSHjAWcwDifoa02fukBl9aU/W+3L1eHNwq
         mJWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AdBj/icSHGeb64Paeg06O002jmzWxVzSqrAwQgss4/k=;
        b=qzSbYo4/BEKdDZGMtPkT24WpkeodJ5Y4XXrNJtMAbotvNut7kH1JC+P6YkDFqjwRwL
         96AmfKSMV3Qsn3zEjchQYX3yhnssJ3KIK86PXLcyo8OjUJRuIdTAhKirGNkfoYBQ7zC5
         heSLP1nOPlad5F6WBS2FyzVMR7XqM/uwWVmSg/2bas0FuIaPrYanTn05+Jmz44GypLgx
         19rZAWm1SLUImSoudZhypSsQlAerCvHs3RmxmHnJVlhmNwm2RcBvjQmU9MUX95ShZJjA
         hcmvoJ7/bi6Lyfgo2kKcKDHQzijMXP9HG/39pTF887OnYrMk53nWaFHdPoC6Rb8xz7HA
         CHXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=d1pyracc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r127si99630pfc.5.2020.11.25.07.38.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:38:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD2452222B;
	Wed, 25 Nov 2020 15:38:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 08/10] scsi: libiscsi: Fix NOP race condition
Date: Wed, 25 Nov 2020 10:37:51 -0500
Message-Id: <20201125153753.810973-8-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153753.810973-1-sashal@kernel.org>
References: <20201125153753.810973-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=d1pyracc;       spf=pass
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
index c4336b01db23c..a84b473d4a08b 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -570,8 +570,8 @@ static void iscsi_complete_task(struct iscsi_task *task, int state)
 	if (conn->task == task)
 		conn->task = NULL;
 
-	if (conn->ping_task == task)
-		conn->ping_task = NULL;
+	if (READ_ONCE(conn->ping_task) == task)
+		WRITE_ONCE(conn->ping_task, NULL);
 
 	/* release get from queueing */
 	__iscsi_put_task(task);
@@ -780,6 +780,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -987,8 +990,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
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
@@ -1003,11 +1009,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
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
 
@@ -1020,7 +1027,7 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
 	struct iscsi_conn *conn = task->conn;
 	int rc = 0;
 
-	if (conn->ping_task != task) {
+	if (READ_ONCE(conn->ping_task) != task) {
 		/*
 		 * If this is not in response to one of our
 		 * nops then it must be from userspace.
@@ -1960,7 +1967,7 @@ static void iscsi_start_tx(struct iscsi_conn *conn)
  */
 static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
 {
-	if (conn->ping_task &&
+	if (READ_ONCE(conn->ping_task) &&
 	    time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
 			   (conn->ping_timeout * HZ), jiffies))
 		return 1;
@@ -2095,7 +2102,7 @@ static enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	 * Checking the transport already or nop from a cmd timeout still
 	 * running
 	 */
-	if (conn->ping_task) {
+	if (READ_ONCE(conn->ping_task)) {
 		task->have_checked_conn = true;
 		rc = BLK_EH_RESET_TIMER;
 		goto done;
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c7b1dc713cdd7..9c7f4aad6db66 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -144,6 +144,9 @@ struct iscsi_task {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201125153753.810973-8-sashal%40kernel.org.
