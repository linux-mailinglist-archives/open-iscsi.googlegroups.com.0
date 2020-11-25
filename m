Return-Path: <open-iscsi+bncBDTZTRGMXIFBBIXU7H6QKGQEHGFE2QY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3722C4303
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 16:37:07 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id a24sf1906774pfo.3
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 07:37:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318626; cv=pass;
        d=google.com; s=arc-20160816;
        b=yvfdwuOKIz9QDcA6Uv5Qxe0gPfyrH591KlMfM068mRq4MWhGrmPY+baupa7A8JNXRo
         aoY6i8lR+ULYvrGQQPxpGrdSPBNCpzZPwZke8KdSVwCXwCvEfBwuJwcnMM1QO/c1OlFV
         ym70EwJCwNDJfDZa9XTCgFECJAccnDBKYnvQdZ+iPvMttO2U6kqDMSP3I+9v+Ltu+TWu
         4ZVRkJfHG8eT1gxkgpLEGCyHGB8Xp34tlVT4lAJdtNp16fTIh+20ykYOZphfNiHgVDKy
         Mxig2Rj1OPo6EKsEBmBDOyjiHqN6jDwTuKjyG8N11VZPNpKcsj7W2A3zEv/JQFeT96/x
         b5NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=CfG/x0dxy1tU2zqsVF0QzMFuvjnPwlU42AoabK2o0G0=;
        b=gSSR25sRkb9DLY41mYutDNr3jqHH7OhtqIk7itucdVUpRXJnil+ksGJPzGrODTsHac
         aPbUzpTJERj/AQWsxCsdpEhXMuFbqY0pl7mbg1aaHDkAAvSJdlVGytiZYLKsMZ2uLmJo
         yNFWlPxEh+mYEXiwbsQORFKym3sf68tNgS2y6zmnjQTA0q4xT4OQ54p7SCghhfUMoOZJ
         pLhaUSTYfvanT6xWCrsC/FbH1KhLN+edXALFG24kUcHN9hWh7jTjRAV+zTIpDS2x6r1K
         h9bn/GdfjN+KYB50HKDWW38W9ulNbclQ7J6kZA190AnLZhkAkFqcl5blXg4JPxqSmxbi
         7l7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="0Bv/uOmr";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CfG/x0dxy1tU2zqsVF0QzMFuvjnPwlU42AoabK2o0G0=;
        b=lnDiQZAA/USvg5oZZyebpRb3soX1RnKMTo0dwLdIvxPPIQr/D3OpJgiofhaqXIckx4
         NTtGQH7rFZewts6Hb9D758nOR0xzLmL/DNS4IR16TjznWbjkad3IAZp1ZC29+OtreRHz
         /cNkdXVg2WMHBpEk58R25RjPQZpLTnQcgpe1SkJxJ1wo8oGmbB86y7XdlCvylntL13W3
         WVUBF+Z5UagsguvdXb43FAUuo6GyDR8z3X4/vQqaZh3Aw9CuFPTwVNCzygnmoaMyGeAO
         C7mS4XHxea0BZjscfmYx8QiTxOBNL41BeUdn/fbbQ7cdlu62JqQZYq9D4Ji0gG11Sopc
         gbWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CfG/x0dxy1tU2zqsVF0QzMFuvjnPwlU42AoabK2o0G0=;
        b=IAzCGBNo3Xo9FEhwFUnbpjknGnU6kl0+sNaTqnDPfXJueD8MsBg6n8DpdGDL2haAwP
         z/TOb/1MhVunGgnQhW6q5SPblAA9YT6Xl7i+C5A+q1h5/hSnbD5fqFgHzHSxmplR90FD
         C3yRBSroTR2abJOh+yWZSCKYj+4AHZI46G/CgfO6Hi7RfJB4eFMt9bQtUSk3hQfK/r30
         8iPbeMuSBYIwYuhcpWyjlVcsOPW8nb9zGfFLMUCTAIq3bmvj4rFnukLC/EHqG+tA7gsA
         sBVYvpScisvmPMxSQTy9e2SfgtMwdTl0hUIuH7/LNwy5mtl/4EDpDnr2LpgNb9OGzdR0
         FJFQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531TMT65ssvcvh1WwG28r5jrEMpz2wGyW+Bb2ncSqO3KSBqWf1nr
	gm4FsuEk9sltgEMeSIJyk/E=
X-Google-Smtp-Source: ABdhPJzl3Ea0YrOojwlAEC/l0GbgemOjapYj/HSU9jLZvnBvWHi1kLmft+qol+Z7H/mO8cXSGfOd1Q==
X-Received: by 2002:a05:6a00:13a3:b029:18b:d5d2:196 with SMTP id t35-20020a056a0013a3b029018bd5d20196mr244798pfg.62.1606318626576;
        Wed, 25 Nov 2020 07:37:06 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:34b:: with SMTP id fh11ls1784999pjb.1.gmail; Wed, 25
 Nov 2020 07:37:06 -0800 (PST)
X-Received: by 2002:a17:90b:50e:: with SMTP id r14mr4930455pjz.193.1606318625988;
        Wed, 25 Nov 2020 07:37:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318625; cv=none;
        d=google.com; s=arc-20160816;
        b=s0nWvyfX7PaCMv+G4xfNiAwXhz+rNNXsWfvnIxkPPqcjQEtB1kRtWWQ3orM3FOHD5s
         s1Pue6qhRcKyFAuG7Sfg29K4+sPIU0Uy5o/Ic6dIXSRo4a8tHlBgkiey+vaXkpAfWbwd
         Mo01TkoI1hxanrxKSnYSTzBQkdk22FFWfO2xhCzE1tyPGNWT0Ll6A/Oj04KCrROOWX18
         +EQQbcfdS4DgibsxUoieO9PyDZMBdsrvfdkIOdEQnSAnEHjfL/5BD/CJTwH/WvxL7lyy
         CSP6P9qb4kwacQxLCYaN7cvXgEOnxSphfpQe02LkVTg0sXlCqRfZ3tRZ32I8YJfpmcGN
         1sjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZmGjfFO09ST7XIObykIXcUuq69TxeaGOd6K5H6SEBRw=;
        b=UYVoT7TUTi6vKoHR24rR3PcJ3lyJSkx+aywMEhaCjzO162q98vgeNG6I3qfaIj2Hze
         g5NejhxEPODp7Q1j+3j+33mNMAbGv+iZQGJCDCAc6XWgE5vEISk7F51pbdXSPNf+dJZb
         v7lLcDBh1ZWN8hMrwaWUQvIeDca57NBnoKLFSbS6cHc+5LyUF4sfap7QszAs1RR/s0Ss
         rnfw+PoEL9Ga3rSc7UfdFh27FRR9piwPKQLaMN+Sjk/h39/3wRzRGRDSMAT0Vu/sWlds
         SXykokJ6orLmbiQw3+v9hoktMHmsWZT6cVXgyslkKjurCOr/ZZR2SGHURucKa/pbd6cP
         5pLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="0Bv/uOmr";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bg19si244469pjb.2.2020.11.25.07.37.05
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:37:05 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 85E5B21D91;
	Wed, 25 Nov 2020 15:37:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 19/23] scsi: libiscsi: Fix NOP race condition
Date: Wed, 25 Nov 2020 10:36:34 -0500
Message-Id: <20201125153638.810419-19-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153638.810419-1-sashal@kernel.org>
References: <20201125153638.810419-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="0Bv/uOmr";       spf=pass
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
index 70b99c0e2e678..f954be3d5ee22 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201125153638.810419-19-sashal%40kernel.org.
